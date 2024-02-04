-- EXTRACT_FUNCTION-----
-- The EXTRACT() fun extracts a part from a given date value.
-- SYNTAX --> SELECT EXTRACT(MONTH FROM date_field)FROM Table
--  YEAR, QUARTER, MONTH, WEEK, DAY, HOUR, MINUTE,DOW,DOY

SELECT EXTRACT(Month from paymentdate) as month_payment, paymentdate from payment
SELECT EXTRACT(year from paymentdate) as year_payment, paymentdate from payment
SELECT EXTRACT(DOW from paymentdate) as Day_OF_WEEK_payment, paymentdate from payment
SELECT EXTRACT(day from paymentdate) as day_payment, paymentdate from payment