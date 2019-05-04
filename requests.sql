set search_path = tennis, public;

--1) Найти компанию, спонсирующую наибольшее кол-во игроков и турниров.
-- Вывести название компании и суммарное кол-во игроков и турниров, которые она спонсирует
with All_Sponsors as (
  select S.sponsor_nm
  from sponsor S
         inner join sponsor_x_tournament ST
                    on S.sponsor_id = ST.sponsor_id
         inner join tournament T
                    on ST.tournament_id = T.tournament_id
  union all
  select S.sponsor_nm
  from sponsor S
         inner join player_x_sponsor PS
                    on S.sponsor_id = PS.sponsor_id
         inner join player P
                    on PS.player_id = P.player_id
)
   , Sponsors_Sum as (
  select sponsor_nm, count(*) as sponsorships
  from All_Sponsors
  group by sponsor_nm
)
select sponsor_nm, sponsorships
from Sponsors_Sum
where sponsorships >= all (select sponsorships from Sponsors_Sum);

--2) Найти все матчи, состоящие из трёх сетов.
-- Вывести фамилию и имя первого игрока, фамилию и имя второго игрока, счёт в матче
select P1.last_nm, P1.first_nm, P2.last_nm, P2.first_nm, M.final_score
from match M
       inner join participant P1
                  on M.player1_id = P1.participant_id
       inner join participant P2
                  on M.player2_id = P2.participant_id
where M.final_score similar to
      '(0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7), (0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7), (0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7)';

--3) Найти тренера в БД, тренерующего сразу нескольких игроков.
-- Вывести фамилию и имя тренера, его специализацию и кол-во его подопечных
select PA.last_nm, PA.first_nm, C.specialization_nm, count(PC.player_id) as player_cnt
from coach C
       inner join participant PA
                  on C.coach_id = PA.participant_id
       inner join player_x_coach PC
                  on C.coach_id = PC.coach_id
group by PA.last_nm, PA.first_nm, C.specialization_nm
having count(PC.player_id) > 1;

--4) Найти всех игроков, участвовавших в турнирах, которые спонсировала компания Peak.
-- Вывести фамилию и имя игрока
select distinct P.last_nm, P.first_nm
from participant P
       inner join player_x_tournament PT
                  on P.participant_id = PT.player_id
       inner join sponsor_x_tournament ST
                  on PT.tournament_id = ST.tournament_id
       inner join sponsor S
                  on ST.sponsor_id = S.sponsor_id
where S.sponsor_nm = 'Peak';

--5) Найти тренеров, подопечные которых не завершили карьеру и хоть раз за карьеру были первой ракеткой мира.
-- Вывести фамилию, имя, национальность и специализацию тренера
select distinct PA.last_nm, PA.first_nm, PA.nationality_nm, C.specialization_nm
from participant PA
       inner join coach C
                  on PA.participant_id = C.coach_id
       inner join player_x_coach PC
                  on C.coach_id = PC.coach_id
       inner join participant PA2
                  on PC.player_id = PA2.participant_id
       inner join player PL
                  on PL.player_id = PA2.participant_id
where PL.max_rating_no = 1
  and PA2.career_end_yr is null;
