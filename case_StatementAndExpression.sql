-- CASE EXPRESSION:
-- The case exp goes thriugh conditions and return a value when the first condition is met. if no cond.are true,it return the val inthe ELSE clause
-- If there is no ELSE part anfd no conditions are true,it return NULL
-- 

-- CASE Statement:
-- syntax--> 
-- CASE
-- WHEN COND1 THEN RES1
-- WHEN COND2 THEN RES2
-- WHEN CONDN THEN RESULT N
-- ELSE OTHER_RESULT
-- END;
-- SELECT * FROM payment
SELECT customer_id,amount,
CASE
WHEN amount = 1000 THEN 'Too Expensive product'
WHEN amount > 500 THEN 'Expensive product'
WHEN amount > 100 THEN 'Moderate product'
ELSE  'Inexpensive product'
END AS productStatus
FROM payment

-- CASE Expression:
-- syntax--> 
-- CASE Expression
-- WHEN val1 THEN RES1
-- WHEN val2 THEN RES2
-- WHEN valn THEN RESULT N
-- ELSE OTHER_RESULT
-- END;

Select customer_id,
CASE amount
WHEN 1000 THEN 'Prime Customer'
WHEN 500 THEN 'Plus Customer'
ELSE 'Regular Customer'
END AS CustomerStatus
FROM payment
