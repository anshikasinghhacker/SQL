CREATE TABLE studentInfo
(stdName varchar(50) NOT NULL, stdUid int PRIMARY KEY,stdDep varchar(30),stdSec char NOT NULL);
SELECT * FROM studentInfo
INSERT INTO studentInfo
(stdname,stduid,stddep,stdsec)
VALUES
('Anshika',1,'CSE','A'),
('Anjali',5,'EE','B'),
('Harsh',3,'ECE','A'),
('Rohan',9,'CSE','B'),
('Sonali',6,'BBA','C');
SELECT * FROM studentInfo

-- Select statement is use to select data from table
-- to select all the data available in the we write command -- SELECT * FROM studentInfo
-- if we want to select some data then look below
SELECT stdname,stddep from studentInfo;
-- to select distinct or unique value from table we use distinct keyword withe select statement
SELECT DISTINCT stdSec from studentInfo
-- ------------NOW------------------
-- WHERE CLAUSE
-- The where clause is used to filter records
-- It is used to extract only those records that fulfill a specified condition
SELECT stdName FROM studentInfo WHERE stdSec ='A';
SELECT stdName from studentInfo where stdUid<5 AND stdDep ='CSE';

-- ------------NOW ------------------------
-- LIMIT CLAUSE OR ORDERBY
-- ORDER BY HELP TO SORT DATA
SELECT * FROM studentInfo 
ORDER BY stdName ASC

SELECT * FROM studentInfo 
LIMIT 3

