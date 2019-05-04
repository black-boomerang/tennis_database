set search_path = tennis, public;

-- Первый CRUD-запрос
insert into sponsor (
  sponsor_id,
  sponsor_nm,
  specialization_nm)
values (
  10,
  'Xerox',
  'Производство спортивного инвентаря');

select *
from sponsor
where sponsor_nm = 'Xerox';

update sponsor
set specialization_nm = 'Производство офисной техники'
where sponsor_nm = 'Xerox';

delete
from sponsor
where sponsor_nm = 'Xerox';

-- Второй CRUD-запрос
insert into match (
  match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt)
values (12, 1, 1, 2, 'Полуфинал', '6-4, 7-6, 6-4', 164, '2019-01-24');

select *
from match
where match_id = 12;

update match
set final_score = '6-4, 7-6, 5-7, 6-4'
where match_id = 12;

delete
from match
where match_id = 12;
