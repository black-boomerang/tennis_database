drop schema if exists tennis cascade;
create schema tennis;
set search_path = tennis, public;

drop table if exists participant;
create table participant
(
  participant_id  int,
  first_nm        varchar(30) not null,
  last_nm         varchar(30) not null,
  gender_nm       char,
  nationality_nm  varchar(50) not null,
  career_start_yr int,
  career_end_yr   int,
  primary key (participant_id),
  constraint chk_participant check (gender_nm in ('M', 'W'))
);

drop table if exists player;
create table player
(
  player_id     int,
  height_val    int,
  weight_val    int,
  rating_no     int not null default 0,
  max_rating_no int not null default 0,
  primary key (player_id),
  constraint fk_player_participant foreign key (player_id) references participant (participant_id),
  constraint chk_player check (height_val >= 0 and weight_val >= 0
    and rating_no >= 0 and max_rating_no >= 0)
);

drop table if exists coach;
create table coach
(
  coach_id          int,
  specialization_nm varchar(30) not null,
  primary key (coach_id)
);

drop table if exists player_x_coach;
create table player_x_coach
(
  player_id int,
  coach_id  int,
  primary key (player_id, coach_id),
  constraint fk_player foreign key (player_id) references player (player_id),
  constraint fk_coach foreign key (coach_id) references coach (coach_id)
);

drop table if exists sponsor;
create table sponsor
(
  sponsor_id        int,
  sponsor_nm        varchar(40) not null,
  specialization_nm varchar(50),
  primary key (sponsor_id)
);

drop table if exists player_x_sponsor;
create table player_x_sponsor
(
  player_id  int,
  sponsor_id int,
  primary key (player_id, sponsor_id),
  constraint fk_player foreign key (player_id) references player (player_id),
  constraint fk_sponsor foreign key (sponsor_id) references sponsor (sponsor_id)
);

drop table if exists tournament;
create table tournament
(
  tournament_id    int,
  tournament_nm    varchar(40) not null,
  prize_pool_amt   int         not null default 0,
  court_surface_tp char,
  start_dt         timestamp(0),
  end_dt           timestamp(0),
  category_nm      varchar(40),
  country_nm       varchar(60) NOT NULL,
  primary key (tournament_id),
  constraint chk_tournament check (prize_pool_amt >= 0 and court_surface_tp in ('H', 'C', 'G'))
);

drop table if exists sponsor_x_tournament;
create table sponsor_x_tournament
(
  sponsor_id    int,
  tournament_id int,
  primary key (sponsor_id, tournament_id),
  constraint fk_sponsor foreign key (sponsor_id) references sponsor (sponsor_id),
  constraint fk_tournament foreign key (tournament_id) references tournament (tournament_id)
);

drop table if exists match;
create table match
(
  match_id      int,
  tournament_id int,
  player1_id    int,
  player2_id    int,
  stage_nm      varchar(30),
  final_score   varchar(30),
  duration_val  int not null default 0,
  match_dt      timestamp(0),
  primary key (match_id),
  constraint chk_match check (duration_val >= 0 and (final_score similar to
                                                     '(0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7), (0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7)'
    or final_score similar to
       '(0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7), (0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7), (0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7)'
    or final_score similar to
       '(0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7), (0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7), (0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7), (0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7)'
    or final_score similar to
       '(0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7), (0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7), (0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7), (0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7), (0|1|2|3|4|5|6|7)-(0|1|2|3|4|5|6|7)'))
);

drop table if exists player_x_tournament;
create table player_x_tournament
(
  player_id     int,
  tournament_id int,
  primary key (player_id, tournament_id),
  constraint fk_player foreign key (player_id) references player (player_id),
  constraint fk_tournament foreign key (tournament_id) references tournament (tournament_id)
);
