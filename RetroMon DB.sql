use thnguye;


drop table if exists Email;
drop table if exists Monster;
drop table if exists ClubPlayer;
drop table if exists Club;
drop table if exists Player;


create table if not exists Player (
  playerId int primary key not null auto_increment,
  code varchar(50) not null,
  type varchar(30) not null,
  userName varchar(200) not null
);

create table if not exists Club (
  clubId int not null primary key auto_increment,
  code varchar(50) not null,
  name varchar(200) not null
);

create table if not exists ClubPlayer(
	clubPlayerId int not null primary key auto_increment,
    clubId int not null,
    playerId int not null,
    foreign key (clubId) references Club(clubId),
    foreign key (playerId) references Player(playerId),
    -- this constraint limits redundant records:
  constraint `uniqueClubPlayerCombo` unique (clubId,playerId)
);

create table if not exists Monster (
  monsterId int not null primary key auto_increment,
  code varchar(50) not null, 
  level int not null,
  name varchar(200) not null,
  element varchar(200) not null,
  attack double not null,
  defense double not null,
  health double not null,
  playerId int not null,
  foreign key (playerId) references Player(playerId)
);

create table if not exists Email (
  emailId int not null primary key auto_increment,
  email varchar(200), 
  playerId int not null,
  foreign key (playerId) references Player(playerId)
  
);



 insert into Player (playerId, code, type, userName) values
 (1, "bnm4", "Gold", "vybui");
  insert into Player (playerId, code, type, userName) values
 (2, "jkl7", "Silver", "sonhuynh");
 insert into Player (playerId, code, type, userName) values
 (3, "ghj56", "Bronze", "linhnguyen");
  insert into Player (playerId, code, type, userName) values
 (4, "iop9", "Bronze", "maivu");
   insert into Player (playerId, code, type, userName) values
 (5, "rty7", "Silver", "thuber");
  insert into Player (playerId, code, type, userName) values
 (6, "asd67", "Gold", "linhtruong");
 
 insert into Club (clubId, code, name) values (21, "345ghj", "CornHacks");
 insert into Club (clubId, code, name) values (22, "678tyu", "Hackathon");
 
 
 insert into ClubPlayer (clubPlayerId, clubId, playerId) values (1, 21, 1);
 insert into ClubPlayer (clubPlayerId, clubId, playerId) values (2, 21, 2);
 insert into ClubPlayer (clubPlayerId, clubId, playerId) values (3, 21, 5);
 insert into ClubPlayer (clubPlayerId, clubId, playerId) values (4, 22, 3);
 insert into ClubPlayer (clubPlayerId, clubId, playerId) values (5, 22, 4);
 insert into ClubPlayer (clubPlayerId, clubId, playerId) values (6, 22, 6);
 
  insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (1, "abc1", 1, "Bulbasaur", "GS", 15, 5, 100, 4);
  insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (2, "abc12", 2, "Ivvysaur", "GS", 25, 10, 200, 1);
  insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (3, "abc12", 2, "Ivvysaur", "GS", 25, 10, 200, 6);
  insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (4, "abc123", 3, "Venusaur", "GS", 35, 15, 300, 5);
  insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (5, "bcd1", 1, "Charmander", "F", 16, 6, 100, 3);
   insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (6, "bcd1", 1, "Charmander", "F", 16, 6, 100, 4);
  insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (7, "bcd12", 2, "Charmeleon", "F", 26, 11, 200, 2);
  insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (8, "bcd123", 3, "Charizard", "F", 36, 16, 300, 1);
  insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (9, "cde1", 1, "Squirtle", "W", 17, 7, 100, 5);
 insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (10, "cde12", 2, "Wartortle", "W", 27, 12, 200, 3);
 insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (11, "cde123", 3, "Blastoise", "W", 37, 17, 300, 2);
 insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (12, "cde123", 3, "Blastoise", "W", 37, 17, 300, 6);
  insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (13, "def1", 1, "Pikachu", "E", 18, 8, 100, 5);
   insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (14, "def12", 2, "Raichu", "E", 28, 13, 200, 1);
    insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (15, "def12", 2, "Raichu", "E", 28, 13, 200, 6);
   insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (16, "efg1", 1, "Sandshrew", "GD", 19, 9, 100, 2);
  insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (17, "efg12", 2, "Sandslash", "GD", 29, 14, 200, 1);
  insert into Monster (monsterId, code, level, name, element, attack, 
 defense, health, playerId) values (18, "efg12", 2, "Sandslash", "GD", 29, 14, 200, 3);
 
 
 insert into Email (emailId, playerId, email) values (1, 1, "vybui123@gmail.com");
 insert into Email (emailId, playerId, email) values (2, 1, "vybui@unl.edu");
 insert into Email (emailId, playerId, email) values (3, 2, "sonhuynh345@yahho.com");
 insert into Email (emailId, playerId, email) values (4, 3, "linhnguyen098@gmail.com");
 insert into Email (emailId, playerId, email) values (5, 4, "maivu567@gmail.com");
 insert into Email (emailId, playerId, email) values (6, 6, "linhtruong@unl.edu");
 

 

 


