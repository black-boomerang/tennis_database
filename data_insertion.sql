set search_path = tennis, public;

insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr) values (1, 'Новак', 'Джокович', 'M', 'Сербия', 2003);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr) values (2, 'Роджер', 'Федерер', 'M', 'Швейцария', 1998);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr) values (3, 'Даниил', 'Медведев', 'M', 'Россия', 2013);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr, career_end_yr) values (4, 'Евгений', 'Кафельников', 'M', 'Россия', 1992, 2003);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr, career_end_yr) values (5, 'Ллейтон', 'Хьюитт', 'M', 'Австралия', 1998, 2016);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr, career_end_yr) values (6, 'Йонас', 'Бьоркман', 'M', 'Швеция', 1991, 2013);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr, career_end_yr) values (7, 'Тодд', 'Вудбридж', 'M', 'Австралия', 1988, 2005);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr) values (8, 'Дарья', 'Касаткина', 'W', 'Россия', 2014);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr) values (9, 'Серена', 'Уильямс', 'W', 'США', 1995);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr) values (10, 'Мария', 'Шарапова', 'W', 'Россия', 2001);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr) values (11, 'Анжелика', 'Кербер', 'W', 'Германия', 2003);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr, career_end_yr) values (12, 'Амели', 'Моресмо', 'W', 'Франция', 1993, 2009);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr, career_end_yr) values (13, 'Магдалена', 'Малеева', 'W', 'Болгария', 1989, 2010);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr, career_end_yr) values (14, 'Зина', 'Гаррисон', 'W', 'США', 1982, 1997);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr) values (15, 'Милош', 'Раонич', 'M', 'Канада', 2008);


insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr) values (16, 'Иван', 'Любичич', 'M', 'Хорватия', 2013);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr) values (17, 'Пол', 'Дороченко', 'M', 'Франция', 1998);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm) values (18, 'Филипп', 'Дехас', 'M', 'Бельгия');
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr) values (19, 'Патрик', 'Муратоглу', 'M', 'Греция', 1999);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr) values (20, 'Томас', 'Хогстедт', 'M', 'Швеция', 2010);
insert into participant (participant_id, first_nm, last_nm, gender_nm, nationality_nm, career_start_yr, career_end_yr) values (21, 'Юлия', 'Берберян', 'W', 'Болгария', 1975, 1995);

insert into player (player_id, height_val, weight_val, rating_no, max_rating_no) values (1, 185, 85, 6, 1);
insert into player (player_id, height_val, weight_val, rating_no, max_rating_no) values (2, 188, 77, 1, 1);
insert into player (player_id, height_val, weight_val, rating_no, max_rating_no) values (3, 198, 83, 14, 14);
insert into player (player_id, height_val, weight_val, rating_no) values (4, 185, 85, 1);
insert into player (player_id, height_val, weight_val, rating_no) values (5, 178, 77, 1);
insert into player (player_id, height_val, weight_val, rating_no) values (6, 183, 83, 4);
insert into player (player_id, height_val, weight_val, rating_no) values (7, 178, 75, 19);
insert into player (player_id, height_val, weight_val, rating_no, max_rating_no) values (8, 170, 62, 22, 10);
insert into player (player_id, height_val, weight_val, rating_no, max_rating_no) values (9, 175, 72, 11, 1);
insert into player (player_id, height_val, weight_val, rating_no, max_rating_no) values (10, 188, 59, 24, 1);
insert into player (player_id, height_val, weight_val, rating_no, max_rating_no) values (11, 173, 68, 5, 1);
insert into player (player_id, height_val, weight_val, rating_no) values (12, 175, 69, 1);
insert into player (player_id, height_val, weight_val, rating_no) values (13, 168, 59, 4);
insert into player (player_id, height_val, weight_val, rating_no) values (14, 164, 61, 4);
insert into player (player_id, height_val, weight_val, rating_no, max_rating_no) values (15, 196, 98, 15, 3);

insert into coach (coach_id, specialization_nm) values (16, 'Главный тренер');
insert into coach (coach_id, specialization_nm) values (17, 'Тренер по физ-подготовке');
insert into coach (coach_id, specialization_nm) values (18, 'Главный тренер');
insert into coach (coach_id, specialization_nm) values (19, 'Главный тренер');
insert into coach (coach_id, specialization_nm) values (20, 'Главный тренер');
insert into coach (coach_id, specialization_nm) values (21, 'Главный тренер');

insert into player_x_coach (player_id, coach_id) values (2, 16);
insert into player_x_coach (player_id, coach_id) values (2, 17);
insert into player_x_coach (player_id, coach_id) values (15, 16);
insert into player_x_coach (player_id, coach_id) values (8, 18);
insert into player_x_coach (player_id, coach_id) values (9, 19);
insert into player_x_coach (player_id, coach_id) values (10, 20);
insert into player_x_coach (player_id, coach_id) values (13, 21);

insert into sponsor (sponsor_id, sponsor_nm, specialization_nm) values (1, 'Rolex', 'Производство наручных часов');
insert into sponsor (sponsor_id, sponsor_nm, specialization_nm) values (2, 'Peak', 'Производство спортивной обуви, одежды и инвентаря');
insert into sponsor (sponsor_id, sponsor_nm, specialization_nm) values (3, 'Jetstar', 'Авиакомпания');
insert into sponsor (sponsor_id, sponsor_nm, specialization_nm) values (4, 'Ricoh', 'Производство печатной техники');
insert into sponsor (sponsor_id, sponsor_nm, specialization_nm) values (5, 'Head', 'Производство спортивного инвентаря');
insert into sponsor (sponsor_id, sponsor_nm, specialization_nm) values (6, 'Nike', 'Производство спортивной обуви, одежды и инвентаря');
insert into sponsor (sponsor_id, sponsor_nm, specialization_nm) values (7, 'Wilson', 'Производство обуви, одежды и инвентаря для тенниса');
insert into sponsor (sponsor_id, sponsor_nm, specialization_nm) values (8, 'Adidas', 'Производство спортивной обуви, одежды и инвентаря');

insert into player_x_sponsor (player_id, sponsor_id) values (2, 1);
insert into player_x_sponsor (player_id, sponsor_id) values (2, 6);
insert into player_x_sponsor (player_id, sponsor_id) values (2, 7);
insert into player_x_sponsor (player_id, sponsor_id) values (10, 5);
insert into player_x_sponsor (player_id, sponsor_id) values (10, 6);
insert into player_x_sponsor (player_id, sponsor_id) values (9, 6);
insert into player_x_sponsor (player_id, sponsor_id) values (9, 7);
insert into player_x_sponsor (player_id, sponsor_id) values (11, 8);

insert into tournament (tournament_id, tournament_nm, prize_pool_amt, court_surface_tp, start_dt, end_dt, category_nm, country_nm) values (1, 'Открытый чемпионат Австралии', 60000000, 'H', '2019-01-14', '2019-01-27', 'Турнир Большого шлема', 'Австралия');
insert into tournament (tournament_id, tournament_nm, prize_pool_amt, court_surface_tp, start_dt, end_dt, category_nm, country_nm) values (2, 'Indian Wells Masters', 9000000, 'H', '2018-03-07', '2018-03-18', 'Masters 1000/Premier Mandatory', 'США');
insert into tournament (tournament_id, tournament_nm, prize_pool_amt, court_surface_tp, start_dt, end_dt, category_nm, country_nm) values (3, 'Mutua Madrid Open', 7000000, 'C',  '2010-05-09', '2010-05-16', 'Masters 1000/Premier Mandatory', 'Испания');
insert into tournament (tournament_id, tournament_nm, prize_pool_amt, court_surface_tp, start_dt, end_dt, category_nm, country_nm) values (4, 'Queen''s Club Championships', 2000000, 'G', '2017-06-19', '2017-06-25', 'Masters 500', 'Великобритания');
insert into tournament (tournament_id, tournament_nm, prize_pool_amt, court_surface_tp, start_dt, end_dt, category_nm, country_nm) values (5, 'Уимблдонский турнир', 9000000, 'G', '2004-06-21', '2004-07-04', 'Турнир Большого шлема', 'Великобритания');

insert into sponsor_x_tournament (sponsor_id, tournament_id) values (1, 1);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (1, 2);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (1, 3);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (1, 4);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (1, 5);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (2, 1);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (2, 2);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (3, 1);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (3, 3);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (3, 5);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (4, 1);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (4, 5);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (5, 1);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (5, 4);
insert into sponsor_x_tournament (sponsor_id, tournament_id) values (5, 5);

insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt) values (1, 5, 5, 7, 'Первый раунд', '6-4, 2-6, 7-5, 5-7, 6-3', 183, '2004-06-21');
insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt) values (2, 5, 9, 10, 'Финал', '6-1, 6-4', 75, '2004-06-04');
insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt) values (3, 1, 1, 3, 'Четвёртый раунд', '6-4, 6-7, 6-2, 6-3', 205, '2019-01-21');
insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt) values (4, 1, 8, 11, 'Первый раунд', '7-5, 4-6, 7-6', 130, '2019-01-15');
insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt) values (5, 2, 11, 10, 'Второй раунд', '6-2, 6-0', 99, '2018-03-09');
insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt) values (6, 2, 2, 3, 'Полуфинал', '6-1, 2-6, 7-6', 119, '2018-03-18');
insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt) values (7, 3, 10, 13, 'Четвертьфинал', '6-4, 6-4', 80, '2010-05-13');
insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt) values (8, 3, 1, 2, 'Финал', '7-6, 6-7, 6-7', 190, '2010-05-16');
insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt) values (9, 4, 8, 10, 'Первый раунд', '7-5, 5-7, 4-6', 151, '2017-06-19');
insert into match (match_id, tournament_id, player1_id, player2_id, stage_nm, final_score, duration_val, match_dt) values (10, 4, 3, 15, 'Полуфинал', '6-4, 7-6', 103, '2017-06-24');

insert into player_x_tournament (player_id, tournament_id) values (5, 5);
insert into player_x_tournament (player_id, tournament_id) values (7, 5);
insert into player_x_tournament (player_id, tournament_id) values (9, 5);
insert into player_x_tournament (player_id, tournament_id) values (10, 5);
insert into player_x_tournament (player_id, tournament_id) values (1, 1);
insert into player_x_tournament (player_id, tournament_id) values (3, 1);
insert into player_x_tournament (player_id, tournament_id) values (8, 1);
insert into player_x_tournament (player_id, tournament_id) values (11, 1);
insert into player_x_tournament (player_id, tournament_id) values (2, 2);
insert into player_x_tournament (player_id, tournament_id) values (3, 2);
insert into player_x_tournament (player_id, tournament_id) values (10, 2);
insert into player_x_tournament (player_id, tournament_id) values (11, 2);
insert into player_x_tournament (player_id, tournament_id) values (1, 3);
insert into player_x_tournament (player_id, tournament_id) values (2, 3);
insert into player_x_tournament (player_id, tournament_id) values (10, 3);
insert into player_x_tournament (player_id, tournament_id) values (13, 3);
insert into player_x_tournament (player_id, tournament_id) values (3, 4);
insert into player_x_tournament (player_id, tournament_id) values (8, 4);
insert into player_x_tournament (player_id, tournament_id) values (10, 4);
insert into player_x_tournament (player_id, tournament_id) values (15, 4);
