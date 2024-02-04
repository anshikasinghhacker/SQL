-- --------GROUP BY-----------------
-- The Group By statement group rows that have same values into summary rows.
-- It is often used with aggregate function (count(),max(),min(),sum(),avg())
-- SELECT COL_NAME
-- FROM TABLE_NAME
-- GROUPBY COL_NAME

-- SELECT mode, sum(amount) AS total
-- FROM payment
-- GROUP BY mode

-- --------HAVING CLAUSE____________
-- The HAVING clause is used to applya filter on the result of GROUP BY based on specified condition.
-- The WHERE clause places conditions on the selevted columns,whereas the HAVING clause places conditions on groups created by GROUP BY Clause
-- SYNTAX-
-- SELECT COLNAME
-- FROM TABLENAME
-- WHERE CONDITION
-- GROUP BY COLNAME
-- HAVING CONDITIONS

-- SELECT mode, count(amount) as total
-- from payment 
-- group by mode
-- HAVING count(amount) >= 2