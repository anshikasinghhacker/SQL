-- SELF JOIN---
-- A SELF JOIN ARE POWERFUL FOR COMPARING VALUES IN A COLUMN OF ROWS WITH THE SAME TABLE
-- A SELF JOIN IN WHICH A TABLE IDS JOINED TO ITSELF
-- STNTAX---> SELECT column_name 
--            from Table as T1 
--            JOIN Table AS T2
--           ON T1.col_name = T2.col_name
CREATE TABLE emp(empid int primary key, empname varchar(50),manager_id bigint);
INSERT INTO emp(empid,empname,manager_id)
VALUES(1,'Agni',3),
      (2,'Akash',4),
	  (3,'Dharti',2),
-- 	  (4,'Vayu',3);
SELECT * FROM emp;

-- ------SELF JOIN--------
SELECT * FROM emp as T1
JOIN emp as T2
on T2.empid = T1.manager_id

SELECT T1.empname AS employee_name , T2.empname AS manager_name
FROM emp AS T1
JOIN emp AS T2
on T2.empid = T1.manager_id

-- NOTE WE CAN MAP DATA WITHIN SAME TABLE BY THE HELP OF SELF JOIN

-- ------------UNION----------------------
-- The SQL UNION clause is used to combine/concatenate the results of two or more SELECT statements without returning any duplicate rows and keeps unique records
--  To use union clause each select statement must have 
-- . The same number of columns selected and expressions
-- . The same data type and
-- . Have them in the same order
-- SYNTAX---
-- SELECT col_name FROM TABLEa
-- UNION 
-- SELECT col_name FROM TABLEb

-- ----------UNION ALL------------------
-- In UNION ALL  everything is same as UNION, it combines/concat two or more table but keeps all records, inckuding duplicates
-- Syntax:
-- SELECT colnam from TableA
-- UNION ALL 
-- SELECT colnam from TableB

-- create table a table b and perform both union and union all
--  TABLE 1
CREATE TABLE custAAA(cust_name varchar(30), cust_amount bigint);
INSERT INTO custAAA(cust_name,cust_amount)
VALUES('Anjali Chauhan',5000),
      ('Anshika Singh', 40000),
	  ('Harsh Raj',50000),
	  ('Bipin Kumar',90000);
SELECT * FROM custAAA 

--  TABLE 2
 CREATE TABLE custAA(cust_name varchar(30), cust_amount bigint);
INSERT INTO custAA(cust_name,cust_amount)
VALUES('Anshika Singh',4000),
      ('Bibha Chauhan', 60000);

--  SELECT * FROM custAA

-- ------------UNION OPERATION----------
SELECT cust_name,cust_amount
FROM custAAA
UNION 
SELECT cust_name,cust_amount
FROM custAA

-- ------------UNION OPERATION----------
SELECT cust_name,cust_amount
FROM custAAA
UNION ALL
SELECT cust_name,cust_amount
FROM custAA
	  
