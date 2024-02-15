-- ----------AGGREGATE FUNCTIONS-----------------
-- COUNT
-- SUM
-- AVG
-- MIN
-- MAX

CREATE TABLE payment(customer_id bigint primary key,amount bigint,mode varchar(50),payment_date date)
INSERT INTO payment(customer_id,amount,mode,payment_date)
VALUES
(1,600,'cash','2024-06-07'),
(2,80,'credit card','2014-08-03'),
(3,900,'credit card','2016-07-07'),
(4,800,'cash','2010-05-07'),
(5,200,'debit card','2012-06-07'),
(6,1000,'debit card','2024-04-02');

SELECT * FROM payment

SELECT SUM(amount) FROM payment
SELECT COUNT(*) FROM payment
SELECT MAX(amount) FROM payment
SELECT MIN(amount) FROM payment
SELECT AVG(amount) FROM payment
SELECT ROUND(AVG(amount),2) FROM payment