set search_path = tennis, public;

create or replace view player_info_view as
select player_id,
       height_val,
       weight_val,
       rating_no,
       max_rating_no
from player;

-- При удалении игрока из таблицы PLAYER, автоматически удаляется информация о нём из таблицы PARTICIPANT.
-- При этом игрока можно удалить только если его тренер тренерует кого-то ещё (или информации о тренере нет)
create or replace function player_info_delete() returns trigger as
$$
declare
  coach_check boolean;
begin
  coach_check := exists(select PC2.player_id
                        from player_x_coach PC1
                               inner join player_x_coach PC2
                                          on PC1.coach_id = PC2.coach_id
                        where PC1.player_id = old.player_id
                          and PC1.player_id <> PC2.player_id);

  if not coach_check then return null; end if;

  delete from player where player_id = old.player_id;
  delete from participant where participant_id = old.player_id;

  return old;
end;
$$ language plpgsql;

create trigger player_delete
  instead of delete
  on player_info_view
  for each row
execute procedure player_info_delete();

-- Пытаемся удалить игрока, тренер которого больше никго не тренирует
delete
from player_info_view
where player_id = 10;
select *
from player;

-- Пытаемся удалить игрока, тренер которого тренирует кого-то ещё
delete
from player_info_view
where player_id = 15;
select *
from player;

-- Восстанавливаем данные
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr)
values (15, 'Милош', 'Раонич', 'M', 'Канада', 2008);
insert into player (player_id, height_val, weight_val, rating_no, max_rating_no)
values (15, 196, 98, 15, 3);
insert into player_x_coach (player_id, coach_id)
values (15, 16);
insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt)
values (10, 4, 3, 15, 'Полуфинал', '6-4, 7-6', 103, '2017-06-24');
insert into player_x_tournament (player_id, tournament_id)
values (15, 4);



--При добавлении или изменении информации о матче происходит проверка, что дата матча попадает в промежуток
-- времени между началом и концом турнира, и что каждый из игроков не мог завершить карьеру до этого матча.
create or replace function check_match() returns trigger as
$$
declare
  match_year             integer;
  player_career_start_yr integer;
  player_career_end_yr   integer;
  tournament_start_dt    timestamp(0);
  tournament_end_dt      timestamp(0);
  player1_check          boolean;
  player2_check          boolean;
  tournament_check       boolean;
begin
  match_year = cast(date_part('year', new.match_dt::date) as integer);

  select career_start_yr, career_end_yr into player_career_start_yr, player_career_end_yr
  from participant
  where participant_id = new.player1_id;
  player1_check := (player_career_start_yr is null or player_career_start_yr <= match_year) and
                   (player_career_end_yr is null or player_career_end_yr >= match_year);

  select career_start_yr, career_end_yr into player_career_start_yr, player_career_end_yr
  from participant
  where participant_id = new.player2_id;
  player2_check := (player_career_start_yr is null or player_career_start_yr <= match_year) and
                   (player_career_end_yr is null or player_career_end_yr >= match_year);

  select start_dt, end_dt into tournament_start_dt, tournament_end_dt
  from tournament
  where tournament_id = new.tournament_id;
  tournament_check := (tournament_start_dt <= new.match_dt) and (tournament_end_dt >= new.match_dt);

  if not player1_check or not player2_check or not tournament_check then
    return old;
  end if;

  return new;
end;
$$ language plpgsql;

create trigger match_update
  before insert or update
  on match
  for each row
execute procedure check_match();

-- Некорректная вставка
insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt)
values (12, 1, 1, 2, 'Полуфинал', '6-4, 7-6, 6-4', 164, '2016-01-24');

-- Корректная вставка
insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt)
values (12, 1, 1, 2, 'Полуфинал', '6-4, 7-6, 6-4', 164, '2019-01-24');

-- Некорректное обновление
update match
set player1_id = 4
where match_id = 12;

-- Корректное обновление
update match
set player1_id = 3
where match_id = 12;

delete
from match
where match_id = 12;
