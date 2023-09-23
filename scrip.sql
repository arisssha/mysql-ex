-- create database CHESS_TOURNAMENT;

use    CHESS_TOURNAMENT;

 -- create table PLAYERS (
 player_id   int  not null  unique,
 first_name  varchar(255) not null,
 last_name   varchar(255) not null,
 email       varchar(255) not null,
 age         int);
 
-- alter table PLAYERS
 modify  email varchar(255);
 
-- drop table  PLAYERS;
 
 -- create table PLAYERS (
 player_id   int  not null  unique,
 first_name  varchar(255) not null,
 last_name   varchar(255) not null,
 email       varchar(255),
 age         int);
 
 -- alter table PLAYERS
 modify player_id int NOT NULL PRIMARY KEY;
 
 
 -- insert into PLAYERS values
 (1, "Dwayne", "Johnson", "Dwayne_Rock_Johnson@gmail.com", 41),
 (2, "Joe", "Biden", "Joe_Biden_123@gmail.com", 56),
 (3, "Jeff", "Bezos", "Jeff_Amazon_Bezos@gmail.com", 43),
 (4, "Bill", "Gates", "Bill_WIN_95_Gates@gmail.com", 64),
 (5, "Kylie", "Jenner", "Kylie_Pretty_Jenner@gmail.com",23),
 (6, "Robert", "Downey Jr.", "Iron_Downey_Jr@gmail.com", 49),
 (8, "Barack", "Obama", "Barack_Obama_009@gmail.com", 58),
 (9, "Justin", "Beiber", "Justin_969_Beiber@gmail.com",	22),
 (10, "Taylor",	"Swift", "Taylor_Sign_a_Song_Swift@gmail.com", 30),
 (11, "John", "Snow", "", 31),
 (12, "Peter", "Parker", "",  21);
 
 create table GAMES (
 game_id int not null,
 first_palyer_id int not null,
 second_player_id int not null,
 PRIMARY KEY (game_id));
 
 insert into GAMES values
 (1, 3, 6),
 (2, 2, 1),
 (3, 8, 5),
 (4, 4, 8),
 (5, 1, 7),
 (6, 2, 5),
 (7, 3, 10),
 (8, 9, 8),
 (9, 4, 7),
 (10, 3, 10);
 
 create table GAMES_RESULTS (
 result_id int not null,
 result_value varchar(30));
 
 alter table GAMES_RESULTS 
 modify result_id int NOT NULL PRIMARY KEY;
 
 insert into  GAMES_RESULTS values
 (1, "WIN"),
 (2, "LOSE"),
 (3, "DRAW");
 
 create table ACHIEVEMENTS (
 achiev_id int not null,
 achiev_value varchar(55),
 PRIMARY KEY (achiev_id));
 
 insert into ACHIEVEMENTS values
 (1, "Newbie"),
 (2, "Amateur"),
 (3, "Professional"),
 (4, "Master"),
 (5, "Grand master");
 
 create table PLAYER_ACHIEVS (
 pair_id int NOT NULL,
 player_id int NOT NULL,
 achiev_id int NOT NULL,
 PRIMARY KEY (pair_id));
 
  insert into PLAYER_ACHIEVS values
  (1, 2, 1),
  (2, 2, 2),
  (3, 2, 3),
  (4, 7, 1),
  (5, 5, 1),
  (6, 5, 2),
  (7, 1, 1),
  (8, 9, 1),
  (9, 10, 1),
  (10, 3, 1),
  (11, 7, 2),
  (12, 8, 1),
  (13, 8, 2),
  (14, 8, 3),
  (15, 8, 4);
  
  create table PLAYER_RESULTS (
  pair_id int NOT NULL,
  game_id int NOT NULL,
  player_id int NOT NULL,
  result_id int NOT NULL);
  
  insert into PLAYER_RESULTS values
  (1, 1, 3, 1),
  (2, 1, 6, 2),
  (3, 2, 2, 3),
  (4, 2, 1, 3),
  (5, 3, 8, 2),
  (6, 3, 5, 1),
  (7, 4, 4, 3),
  (8, 4, 8, 3),
  (9, 5, 1, 2),
  (10, 5, 7, 1),
  (11, 6, 2, 1),
  (12, 6, 5, 2),
  (13, 7, 3, 3),
  (14, 7, 10, 3),
  (15, 8, 9, 3),
  (16, 8, 8, 3),
  (17, 9, 4, 2),
  (18, 9, 7, 1),
  (19, 10, 3, 1),
  (20, 10, 10, 2);
  
  -- DELETE FROM PLAYERS
  WHERE player_id > 10;
  
  -- UPDATE PLAYERS
  SET first_name = 'Sofia', email = 'Sofia_Pretty_Jenner@gmail.com'
  WHERE player_id = 5;
  
 --  ALTER TABLE PLAYERS
  ADD nickname varchar (255);
  
   DROP table  PLAYERS;
   
   CREATE table PLAYERS (
 player_id   int  not null,
 first_name  varchar(255) not null,
 last_name   varchar(255) not null,
 email       varchar(255) not null,
 age         int,
 PRIMARY KEY ( player_id ));
 
 insert into PLAYERS values
 (1, "Dwayne", "Johnson", "Dwayne_Rock_Johnson@gmail.com", 41),
 (2, "Joe", "Biden", "Joe_Biden_123@gmail.com", 56),
 (3, "Jeff", "Bezos", "Jeff_Amazon_Bezos@gmail.com", 43),
 (4, "Bill", "Gates", "Bill_WIN_95_Gates@gmail.com", 64),
 (5, "Kylie", "Jenner", "Kylie_Pretty_Jenner@gmail.com",23),
 (6, "Robert", "Downey Jr.", "Iron_Downey_Jr@gmail.com", 49),
 (7, "Cristiano", "Ronaldo", "Cristiano_The_Goal@gmail.com", 36),
 (8, "Barack", "Obama", "Barack_Obama_009@gmail.com", 58),
 (9, "Justin", "Beiber", "Justin_969_Beiber@gmail.com",	22),
 (10, "Taylor",	"Swift", "Taylor_Sign_a_Song_Swift@gmail.com", 30),
 (11, "John", "Snow", "", 31),
 (12, "Peter", "Parker", "",  21);
 
 DELETE FROM PLAYERS
  WHERE player_id > 10;
  
  UPDATE PLAYERS
  SET first_name = 'Sofia', email = 'Sofia_Pretty_Jenner@gmail.com'
  WHERE player_id = 5;
  
  ALTER TABLE PLAYERS
  ADD nickname varchar (55);
  
  UPDATE PLAYERS SET nickname = 'Rock' WHERE player_id = 1;
  UPDATE PLAYERS SET nickname = 'Job' WHERE player_id = 2;
  UPDATE PLAYERS SET nickname = 'Amazon' WHERE player_id = 3;       
  UPDATE PLAYERS SET nickname = 'Win' WHERE player_id = 4;       
  UPDATE PLAYERS SET nickname = 'Pretty' WHERE player_id = 5;
  UPDATE PLAYERS SET nickname = 'Iron' WHERE player_id = 6;
  UPDATE PLAYERS SET nickname = 'Goal' WHERE player_id = 7;
  UPDATE PLAYERS SET nickname = 'Bama' WHERE player_id = 8;      
  UPDATE PLAYERS SET nickname = 'Jazz' WHERE player_id = 9;
  UPDATE PLAYERS SET nickname = 'Song' WHERE player_id = 10;
  
  ALTER TABLE GAMES
  ADD FOREIGN KEY (first_palyer_id) REFERENCES PLAYERS (player_id);
  
   ALTER TABLE GAMES
  ADD FOREIGN KEY (second_player_id) REFERENCES PLAYERS (player_id);
  
  alter table PLAYER_ACHIEVS
  add foreign key (player_id) references PLAYERS (player_id);
  
alter table PLAYER_ACHIEVS
  add foreign key (achiev_id) references ACHIEVEMENTS (achiev_id);
  
  alter table PLAYER_RESULTS 
  add foreign key (player_id) references  PLAYERS (player_id);
  
   alter table PLAYER_RESULTS 
   add primary key (pair_id, game_id);
    
   alter table PLAYER_RESULTS 
   add foreign key (result_id) references GAMES_RESULTS (result_id);
  
   alter table PLAYER_RESULTS 
   add foreign key (game_id) references GAMES (game_id);