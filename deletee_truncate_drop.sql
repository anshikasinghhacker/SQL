--DELETE , DROP, TRUNCATE
CREATE TABLE emp(empid int primary key,empname varchar(50),emprole varchar(50))
INSERT INTO emp(empid,empname,emprole)
VALUES
(1,'Anshika','Software Engineer'),
(2,'Anjali','Software Analyst'),
(3,'Harsh','Software Developer');
SELECT * FROM emp

-- ----------DELETE-------------
--The delete statement is used to delete existing records in a table
-- syntax--> DELETE FROM table_name WHERE condition;
DELETE FROM emp 
-- WHERE empid = 1;
SELECT * FROM emp

-- ----------TRUNCATE-------------
-- The truncate table command deletes the data inside a table,but not the table itself
-- Syntax--> TRUNCATE TABLE tableName
TRUNCATE TABLE emp;
SELECT * FROM emp;

-- ---------DROP-------------------
-- The DROP table command delete a table in the database 
-- Syntax
-- DROP TABLE tableName;
DROP TABLE emp;
SELECT * FROM emp;