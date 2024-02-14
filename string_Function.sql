-- Most used string functions
-- String function are used to perform an operationon input stringreturn an output string
-- UPPER(),LOWER(),LENGTH(),SUBSTRING(),NOW(),FORMAT(),CONCAT(),REPLACE(),TRIM()

CREATE TABLE StdData(stdname varchar(50),stdlocation varchar(50),stdcontact numeric);
INSERT INTO StdData(stdname,stdlocation,stdcontact)
VALUES
('Anshika','Chandigarh',6205),
('Shubham','Patna',8965),
('Alok','Delhi',67543);
SELECT * FROM StdData
SELECT UPPER(stdname) FROM StdData
SELECT LOWER(stdname) FROM StdData
SELECT LENGTH(stdname),stdname FROM StdData
SELECT SUBSTRING(stdname,1,3),stdname FROM StdData 
SELECT REPLACE(stdname,'Alok','Abhishek'),stdname
FROM StdData;