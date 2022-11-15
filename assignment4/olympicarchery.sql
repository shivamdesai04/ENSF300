
DROP DATABASE IF EXISTS OLYMPICARCHERY;
CREATE DATABASE OLYMPICARCHERY; 
USE OLYMPICARCHERY;

DROP TABLE IF EXISTS COUNTRY;
CREATE TABLE COUNTRY (
	CName					varchar(30)	not null,
	AllTimeGold				integer,
	AllTimeSilver			integer,
    AllTimeBronze			integer,
	primary key (CName)
);

INSERT INTO COUNTRY (CName, AllTimeGold, AllTimeSilver, AllTimeBronze)
VALUES
('Australia','1','0','2'),
('Belarus','0','0','0'),
('Canada','0','0','0'),
('Chinese Taipei','0','2','2'),
('France','1','1','1'),
('Germany','0','2','2'),
('India','0','0','0'),
('Italy','2','3','4'),
('Japan','0','3','4'),
('Mexico','0','1','2'),
('Netherlands','0','1','1'),
('People''s Republic of China','1','6','2'),
('Republic of Korea','27','9','7'),
('ROC','0','2','0'),
('Turkey','1','0','0'),
('United States of America','8','5','3');


DROP TABLE IF EXISTS PARTICIPANT;
CREATE TABLE PARTICIPANT (
	OlympicID			varchar(10) not null,
	LName				varchar(25) not null,
	FName				varchar(25) not null,
	Country				varchar(30)	not null,
	primary key (OlympicID),
	foreign key (Country) references COUNTRY(CName)    
);

INSERT INTO PARTICIPANT (OlympicID, LName, FName, Country)
VALUES
('T2020_001','Alvarez','Luis','Mexico'),
('T2020_002','An','San','Republic of Korea'),
('T2020_003','Barbelin','Lisa','France'),
('T2020_004','Bayardo','Gabriela','Netherlands'),
('T2020_005','Boari','Lucilla','Italy'),
('T2020_006','Broeksma','Gijs','Netherlands'),
('T2020_007','Brown','Mackenzie','United States of America'),
('T2020_008','Deng','Yu-Cheng','Chinese Taipei'),
('T2020_009','Duenas','Crispin','Canada'),
('T2020_010','Ellison','Brady','United States of America'),
('T2020_011','Furukawa','Takaharu','Japan'),
('T2020_012','Gazoz','Mete','Turkey'),
('T2020_013','Gomboeva','Svetlana','ROC'),
('T2020_014','Jang','Minhee','Republic of Korea'),
('T2020_015','Kang','Chae Young','Republic of Korea'),
('T2020_016','Kawata','Yuki','Japan'),
('T2020_017','Kim','Woojin','Republic of Korea'),
('T2020_018','Kim','Je Deok','Republic of Korea'),
('T2020_019','Kroppen','Michelle','Germany'),
('T2020_020','Kumari','Deepika','India'),
('T2020_021','Li','Jialun','People''s Republic of China'),
('T2020_022','Marusava','Hanna','Belarus'),
('T2020_023','Muto','Hiroki','Japan'),
('T2020_024','Nespoli','Mauro','Italy'),
('T2020_025','Oh','Jinhyek','Republic of Korea'),
('T2020_026','Osipova','Elena','ROC'),
('T2020_027','Perova','Ksenia','ROC'),
('T2020_028','Roman','Aida','Mexico'),
('T2020_029','Schwarz','Charline','Germany'),
('T2020_030','Tang','Chih-Chun','Chinese Taipei'),
('T2020_031','Unruh','Florian','Germany'),
('T2020_032','Unruh','Lisa','Germany'),
('T2020_033','Valencia','Alejandra','Mexico'),
('T2020_034','Van Den Berg','Sjef','Netherlands'),
('T2020_035','Vazquez Flores','Ana Pavala','Mexico'),
('T2020_036','Wei','Chun-Heng','Chinese Taipei'),
('T2020_037','Wijler','Steve','Netherlands'),
('T2020_038','Worth','Taylor','Australia'),
('T2020_039','Wu','Jiaxin','People''s Republic of China'),
('T2020_040','Oh','Kyomoon','Australia'),
('T2020_041','Lee','Kisik','United States of America'),
('T2020_042','Riggs','Shawn','Canada'),
('T2020_043','Van Der Hoff','Ron','Netherlands'),
('T2020_044','Kim','Seong-eun','Republic of Korea'),
('T2020_045','Gurung','Mim Bahadur','India');

DROP TABLE IF EXISTS ATHLETE;
CREATE TABLE ATHLETE (
	OlympicID		varchar(10) not null,
	Sex				char(1),
	BirthYear		integer,
	FirstGames		varchar(20),
	primary key (OlympicID),
	foreign key (OlympicID) references PARTICIPANT(OlympicID)
);

INSERT INTO ATHLETE (OlympicID, Sex, BirthYear, FirstGames)
VALUES
('T2020_001','M','1991','London 2012'),
('T2020_002','F','2001','Tokyo 2020'),
('T2020_003','F','2000','Tokyo 2020'),
('T2020_004','F','1994','Rio 2016'),
('T2020_005','F','1997','Rio 2016'),
('T2020_006','M','1999','Tokyo 2020'),
('T2020_007','F','1995','Rio 2016'),
('T2020_008','M','1999','Tokyo 2020'),
('T2020_009','M','1986','Beijing 2008'),
('T2020_010','M','1988','Beijing 2008'),
('T2020_011','M','1984','Athens 2004'),
('T2020_012','M','1999','Rio 2016'),
('T2020_013','F','1998','Tokyo 2020'),
('T2020_014','F','1999','Tokyo 2020'),
('T2020_015','F','1996','Tokyo 2020'),
('T2020_016','M','1997','Tokyo 2020'),
('T2020_017','M','1992','Rio 2016'),
('T2020_018','M','2004','Tokyo 2020'),
('T2020_019','F','1996','Tokyo 2020'),
('T2020_020','F','1994','London 2012'),
('T2020_021','M','1993','Tokyo 2020'),
('T2020_022','F','1978','Tokyo 2020'),
('T2020_023','M','1997','Tokyo 2020'),
('T2020_024','M','1987','Beijing 2008'),
('T2020_025','M','1981','London 2012'),
('T2020_026','F','1993','Tokyo 2020'),
('T2020_027','F','1989','London 2012'),
('T2020_028','F','1988','Beijing 2008'),
('T2020_029','F','2001','Tokyo 2020'),
('T2020_030','M','2001','Tokyo 2020'),
('T2020_031','M','1993','Tokyo 2020'),
('T2020_032','F','1988','Rio 2016'),
('T2020_033','F','1994','London 2012'),
('T2020_034','M','1995','Rio 2016'),
('T2020_035','F','2000','Tokyo 2020'),
('T2020_036','M','1994','Rio 2016'),
('T2020_037','M','1996','Tokyo 2020'),
('T2020_038','M','1991','London 2012'),
('T2020_039','F','1997','Rio 2016');

DROP TABLE IF EXISTS COACH;
CREATE TABLE COACH (
	OlympicID		varchar(10) not null,
	Orientation		varchar(20),
	primary key (OlympicID),
	foreign key (OlympicID) references PARTICIPANT(OlympicID)
);

INSERT INTO COACH (OlympicID, Orientation)
VALUES
('T2020_040','Complete'),
('T2020_041','Complete'),
('T2020_042','Pending'),
('T2020_043','Complete'),
('T2020_044','Complete'),
('T2020_045','Pending');

DROP TABLE IF EXISTS TEAM;
CREATE TABLE TEAM (
	TeamID			varchar(25) not null,
	Member1			varchar(10) not null,
	Member2			varchar(10) not null,
	Member3			varchar(10) not null,
	Member4			varchar(10),
	Member5			varchar(10),
	Member6			varchar(10),
	primary key (TeamID)
    );

INSERT INTO TEAM (TeamID, Member1, Member2, Member3, Member4, Member5, Member6)
VALUES
('T2020_KoreaW','T2020_002','T2020_014','T2020_015', null, null, null),
('T2020_ROCW','T2020_013','T2020_026','T2020_027', null, null, null),
('T2020_GermanyW','T2020_019','T2020_029','T2020_032', null, null, null),
('T2020_KoreaM','T2020_018','T2020_017','T2020_025', null, null, null),
('T2020_CTaipeiM','T2020_008','T2020_030','T2020_036', null, null, null),
('T2020_JapanM','T2020_011','T2020_016','T2020_023', null, null, null),
('T2020_KoreaX','T2020_015','T2020_002','T2020_025','T2020_018','T2020_017','T2020_014'),
('T2020_NetherlandsX','T2020_004','T2020_034','T2020_037','T2020_006', null, null),
('T2020_MexicoX','T2020_033','T2020_001','T2020_028','T2020_035', null, null);

ALTER TABLE TEAM
ADD foreign key (Member1) references ATHLETE(OlympicID),
ADD	foreign key (Member2) references ATHLETE(OlympicID),
ADD	foreign key (Member3) references ATHLETE(OlympicID),
ADD	foreign key (Member4) references ATHLETE(OlympicID),
ADD	foreign key (Member5) references ATHLETE(OlympicID),
ADD	foreign key (Member6) references ATHLETE(OlympicID);

DROP TABLE IF EXISTS EVENT_SCHEDULE;
CREATE TABLE EVENT_SCHEDULE (
	EventID			varchar(15)	not null,
	EventDate		varchar(15) not null,
	Location		varchar(30) not null,
	primary key (EventID)
);

INSERT INTO EVENT_SCHEDULE (EventID, EventDate, Location)
VALUES
('Men','July 31','Dream Island Archery Field'),
('Women','July 30','Dream Island Archery Field'),
('Men''s Team','July 26','Dream Island Archery Field'),
('Women''s Team','July 25','Dream Island Archery Field'),
('Mixed Team','July 24','Dream Island Archery Field');

DROP TABLE IF EXISTS INDIVIDUAL_RESULTS;
CREATE TABLE INDIVIDUAL_RESULTS (
	EventID			varchar(15)	not null,
	Olympian		varchar(10) not null,
	Medal			varchar(10) not null,
	primary key (EventID, Olympian),
	foreign key (EventID) references EVENT_SCHEDULE(EventID),
	foreign key (Olympian) references PARTICIPANT(OlympicID)
);

INSERT INTO INDIVIDUAL_RESULTS(EventID, Olympian, Medal)
VALUES
('Women','T2020_002','Gold'),
('Women','T2020_026','Silver'),
('Women','T2020_005','Bronze'),
('Men','T2020_012','Gold'),
('Men','T2020_024','Silver'),
('Men','T2020_011','Bronze');

DROP TABLE IF EXISTS TEAM_RESULTS;
CREATE TABLE TEAM_RESULTS (
	EventID			varchar(15)	not null,
	Team			varchar(25) not null,
	Medal			varchar(10) not null,
	primary key (EventID, Team),
	foreign key (EventID) references EVENT_SCHEDULE(EventID),
	foreign key (Team) references TEAM(TeamID)
);

INSERT INTO TEAM_RESULTS(EventID, Team, Medal)
VALUES
('Men''s Team','T2020_KoreaM','Gold'),
('Men''s Team','T2020_CTaipeiM','Silver'),
('Men''s Team','T2020_JapanM','Bronze'),
('Women''s Team','T2020_KoreaW','Gold'),
('Women''s Team','T2020_ROCW','Silver'),
('Women''s Team','T2020_GermanyW','Bronze'),
('Mixed Team','T2020_KoreaX','Gold'),
('Mixed Team','T2020_NetherlandsX','Silver'),
('Mixed Team','T2020_MexicoX','Bronze');

