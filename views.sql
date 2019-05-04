set search_path = tennis, public;

-- Замена неизвестных годов начала и окончания карьеры на текущий год
create or replace view participant_view as
select first_nm,
       last_nm,
       gender_nm,
       nationality_nm,
       case
         when career_start_yr is null then cast(date_part('year', now()::date) as integer)
         else career_start_yr
         end,
       case
         when career_end_yr is null then cast(date_part('year', now()::date) as integer)
         else career_end_yr
         end
from participant;

select *
from participant_view;

-- Явное указание того, что максимальный рейтинг игрока неизвестен
create or replace view player_view as
select height_val,
       weight_val,
       rating_no,
       case
         when max_rating_no = 0 then 'Неизвестно'
         else max_rating_no::text
         end
from player;

select *
from player_view;

-- Скрывать нечего
create or replace view coach_view as
select specialization_nm
from coach;

select *
from coach_view;

-- Скрывать нечего
create or replace view sponsor_view as
select sponsor_nm, specialization_nm
from sponsor;

select *
from sponsor_view;

-- Сокрытие призового фонда турнира
create or replace view tournament_view as
select tournament_nm,
       '********' as prize_pool_amt,
       court_surface_tp,
       start_dt::date,
       end_dt::date,
       category_nm,
       country_nm
from tournament;

select *
from tournament_view;

-- Отображение только даты (без времени) проведения матча
create or replace view match_view as
select player1_id, player2_id, stage_nm, final_score, duration_val, match_dt::date
from match;

select *
from match_view;
