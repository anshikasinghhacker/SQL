CREATE TABLE customer(customer_id int primary key,first_name varchar(50),last_name varchar(50),address_id bigint);
INSERT INTO customer(customer_id,first_name,last_name,address_id)
VALUES(1,'Anshika','Singh',4),
(2,'Anjali','Chauhan',5),
(3,'Harsh','Raj',6),
(4,'Bibha','Singh',7),
(5,'Bipin','Kumar',8),
(6,'Muskan','Singh',9),
(7,'Juhi','Chauhan',10),
(8,'Bipul','Raj',11),
(9,'Minnie','Mishra',12),
(10,'Cheeku','Mishra',13);
SELECT * FROM customer
SELECT * FROM payment

-- -----------JOIN ----------
-- ----TYPES--------
-- INNER
-- LEFT
-- RIGHT
-- FULL JOIN

-- 1. inner join
CREATE TABLE customerData(customer_id int primary key,first_name varchar(50),last_name varchar(50),address_id bigint);
INSERT INTO customerData(customer_id,first_name,last_name,address_id)
VALUES(1,'Anshika','Singh',4),
(2,'Anjali','Chauhan',5),
(3,'Harsh','Raj',6),
(4,'Bibha','Singh',7),
(5,'Bipin','Kumar',8),
(10,'Muskan','Singh',9),
(14,'Juhi','Chauhan',10),
(81,'Bipul','Raj',11),
(51,'Minnie','Mishra',12),
(12,'Cheeku','Mishra',13);
SELECT * FROM customerData

-- INNER JOIN
Select * from customerData as c 
inner join payment as p 
on c.customer_id = p.custid

-- LEFT JOIN 
Select * from customerData as c 
left join payment as p
on c.customer_id = p.custid

-- RIGHT JOIN
Select * from customerData as c 
right join payment as p
on c.customer_id = p.custid

-- FULL JOIN
Select * from customerData as c 
full join payment as p
on c.customer_id = p.custid
