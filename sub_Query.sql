-- INSERT INTO payment(customer_id,amount,mode,payment_date)
-- VALUES
-- (7,500,'debit card','2024-09-07'),
-- (8,400,'credit card','2023-09-07'),
-- (9,100,'credit card','2021-05-07'),
-- (10,500,'debit card','2024-09-02');

--  Select * from payment
 
--  ------------SUB QUERY--------------------
-- A Subquery or inner query or a nested query allows us to create complex query on the output of another query
-- SYNTAX
-- SELECT col_name
-- FROM table_name
-- WHERE col_name operator(SELECT col_name FROM table_name where condition)
-- q-->Find the details of customers,whose payment amount is more than the avg of total amount paid by all customers
-- Divide the Q into two parts:
-- 1.Find the avg amount
-- 2.Filter the cust whose amount> avg amount
-- 1st approach
-- select avg(amount) from payment
-- select * from payment where amount>508

-- 2nd approach --dynamic approach
-- SELECT * from payment 
-- WHERE amount > (Select avg(amount) from payment)

-- CREATE TABLE cust(custid int primary key,custName varchar(50))
-- INSERT INTO cust(custid,custName)
-- VALUES
-- (1,'Ansh'),
-- (2,'Anshika'),
-- (3,'Ziva'),
-- (11,'Shubham'),
-- (15,'Saurabh');
-- SELECT * FROM cust

-- ---IN operator-------
-- SELECT customer_id, amount, mode
-- from payment
-- where customer_id in (select custid from cust)

-- ---EXISTS operator------
-- SELECT custName 
-- FROM cust c
-- WHERE EXISTS(SELECT customer_id,amount 
-- 			 FROM payment p
-- 			 WHERE p.customer_id = c.custid AND amount < 100)
