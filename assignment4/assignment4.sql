use olympicarchery;
-- Part 2, 1
/* SELECT FName,LName,Country FROM participant;*/

-- Part 2, 2
SELECT FName,LName,Country FROM participant 
WHERE OlympicID IN 
(SELECT OlympicID FROM coach 
WHERE orientation = 'Pending');

-- Part 2, 3
SELECT Country,count(OlympicID) as '# Athletes' 
FROM participant 
WHERE OlympicID IN 
(SELECT OlympicID FROM athlete) 
GROUP BY Country;

-- Part 2, 4
SELECT p.OlympicID,a.BirthYear
FROM participant as p
LEFT OUTER JOIN athlete as a
ON p.OlympicID = a.OlympicID
ORDER BY BirthYear;

-- Part 2, 5
SELECT Country
FROM participant
GROUP BY Country
HAVING count(OlympicID) > 1;

-- Part 2, 6
SELECT OlympicID,FName,LName,Country FROM participant WHERE OlympicID IN (
SELECT Olympian FROM individual_results 									UNION
SELECT Member1 FROM team WHERE TeamID IN (SELECT Team FROM team_results) 	UNION
SELECT Member2 FROM team WHERE TeamID IN (SELECT Team FROM team_results) 	UNION
SELECT Member3 FROM team WHERE TeamID IN (SELECT Team FROM team_results)	UNION
SELECT Member4 FROM team WHERE TeamID IN (SELECT Team FROM team_results)	UNION
SELECT Member5 FROM team WHERE TeamID IN (SELECT Team FROM team_results)   );

-- Part 2, 7
SELECT CName FROM country
WHERE (AllTimeGold+AllTimeSilver+AllTimeBrONze) >= 5;

-- Part 2, 8
/*SELECT Country,count(ID.OlympicID) as 'Total medals'
FROM participant as p
LEFT JOIN
(SELECT Olympian as 'OlympicID' FROM individual_results
UNION ALL
SELECT Member1 FROM team WHERE TeamID IN (SELECT Team FROM team_results)) as ID 
ON p.OlympicID = ID.OlympicID
GROUP BY Country
ORDER BY count(ID.OlympicID) DESC;*/

-- Part 2, 9
/*SELECT OlympicID,FName,LName FROM participant
WHERE OlympicID IN 
(SELECT OlympicID FROM athlete
WHERE FirstGames = 'Tokyo 2020');*/

-- Part 2, 10
/*SELECT p.FName,p.LName,a.BirthYear
FROM participant as p
LEFT JOIN athlete as a
ON p.OlympicID = a.OlympicID
WHERE p.OlympicID IN
(SELECT OlympicID FROM athlete
WHERE BirthYear = (SELECT min(BirthYear) FROM athlete)
OR    BirthYear = (SELECT max(BirthYear) FROM athlete))
ORDER BY a.BirthYear;*/

-- Part 2, 11
/*
-- Create View
DROP VIEW IF EXISTS team_athletes;
CREATE VIEW team_athletes as
SELECT FName,LName,BirthYear 
FROM participant as p
RIGHT JOIN
athlete as a
ON p.OlympicID = a.OlympicID
ORDER BY BirthYear;

-- Display View
SELECT * FROM team_athletes;*/

-- Part 2, 12
/*
-- Create Table
DROP TABLE IF EXISTS INDIVID_W;
CREATE TABLE INDIVID_W (
	Event_date 		char(7) 	default 'July 30',
    Venue_name		char(26) 	default 'Dream Island Archery Field',
    LName			varchar(25) ,
	Country			varchar(30)	,
    foreign key (Country) references COUNTRY(CName)
);

-- INSERT relevant data INTO table
INSERT INTO individ_w (LName,Country)
SELECT LName,Country 
FROM participant
WHERE OlympicID IN 
(SELECT OlympicID FROM athlete
WHERE sex = 'F');

-- Display Table
SELECT * FROM individ_w;*/






