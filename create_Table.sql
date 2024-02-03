CREATE TABLE customer
(
	"ID" int PRIMARY KEY,
	"Name" varchar(50) NOT NULL,
	"Age" int NOT NULL,
	"City" char(50),
	"Salary" numeric
);
 Select * from customer;
-- ------------INSERT---------------
INSERT INTO customer("ID","Name","Age","City","Salary")
VALUES
(1,'Anshika',21,'Chandigarh',20000),
(2,'Anjali',26,'Banglore',40000),
(3,'Harsh',24,'Delhi',80000);
SELECT * FROM customer

-- ------------UPDATE---------------
-- The UPDATE command is used to update existing rows in a table
-- SYNTAX:-
-- UPDATE TABLE_NAME
-- SET colname = val1, colname = val2
-- where id = val

-- UPDATE customer
-- SET "Name" = 'Muskan', "Age" = 22
-- WHERE "ID" = 1;

-- SELECT * FROM customer