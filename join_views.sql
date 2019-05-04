set search_path = tennis, public;

-- Матчи с фамилиями игроков вместо их id и названием турнира
create or replace view match_with_players_view as
select P1.last_nm as player_1,
       P2.last_nm as player_2,
       T.tournament_nm,
       M.stage_nm,
       M.final_score,
       M.duration_val,
       M.match_dt::date
from match M
       inner join participant P1
                  on M.player1_id = P1.participant_id
       inner join participant P2
                  on M.player2_id = P2.participant_id
       inner join tournament T
                  on T.tournament_id = M.tournament_id;

select *
from match_with_players_view;

-- Спонсоры с игроками и турнирами, которые он спонсирует
create or replace view sponsorships as
  select S.sponsor_nm, P.first_nm || ' ' || P.last_nm as sponsored
  from sponsor S
         inner join player_x_sponsor PS
                    on PS.sponsor_id = S.sponsor_id
         inner join participant P
                    on Ps.player_id = P.participant_id
  union
  select S.sponsor_nm, T.tournament_nm as sponsored
  from sponsor S
         inner join sponsor_x_tournament ST
                    on ST.sponsor_id = S.sponsor_id
         inner join tournament T
                    on T.tournament_id = ST.tournament_id;

select *
from sponsorships;
