-- create database CHESS_TOURNAMENT;

use    CHESS_TOURNAMENT;

  create table PLAYERS (
 player_id   int  not null  unique,
 first_name  varchar(255) not null,
 last_name   varchar(255) not null,
 email       varchar(255) not null,
 age         int);
 
 alter table PLAYERS
 modify  email varchar(255);
 
 drop table  PLAYERS;
 
  create table PLAYERS (
 player_id   int  not null  unique,
 first_name  varchar(255) not null,
 last_name   varchar(255) not null,
 email       varchar(255),
 age         int);
 
 
 
 
 
 insert into PLAYERS values
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
 
 
 
 
 

 