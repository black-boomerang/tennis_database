-- Принимая на вход счёт матча, процедура выводит его победителя (пример счёта: '6-4, 7-5, 1-6, 4-6, 7-6',
-- победитель - игрок 1)
create or replace function find_winner(final_score text) returns integer
as
$$
declare
  winner_num    integer;
  player1_score integer;
  player2_score integer;
  comma_pos     integer;
  game_set      varchar(5);
begin
  winner_num := 0;
  player1_score := 0;
  player2_score := 0;
  comma_pos := position(',' in final_score);
  while comma_pos <> 0
    loop
      game_set := substring(final_score from 1 for comma_pos);
      final_score := substring(final_score from comma_pos + 2);
      if substring(game_set from 1 for 1) > substring(game_set from 3 for 1) then
        player1_score := player1_score + 1;
      else
        player2_score := player2_score + 1;
      end if;
      comma_pos := position(',' in final_score);
    end loop;
  if substring(final_score from 1 for 1) > substring(final_score from 3 for 1) then
    player1_score := player1_score + 1;
  else
    player2_score := player2_score + 1;
  end if;

  if player1_score > player2_score then
    winner_num := 1;
  else
    winner_num := 2;
  end if;

  raise notice 'Победитель: игрок %', winner_num;
  return winner_num;
end;
$$
  language plpgsql;

select find_winner('6-4, 7-5, 1-6, 4-6, 7-6') as winner;
