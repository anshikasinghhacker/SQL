--------------windows function-------------
-- 
-- windows functions applies aggregate, ranking and analytic functions over particular window (set of rows)
-- And OVER clause is used with window function to define that window.
-- windows function---here the rows maintain their separate identities.
-- syntax:-
-- SELECT col_name
-- fun()over  ([PARTION BY Clause])
--            [ORDER BY Clause]
--            [ROW or RANGE clause]

-- WINDOW FUN TYPES 
-- Aggregate:- SUM,AVG,COUNT,MIN, MAX
-- RANKING :- ROW_NUM,RANK,DENSE_RANKE,PERCENT_RANK
-- Value/Analytic:= LEAD,LAG,FIRST_VAL,LAST_VAL

--  CREATE TABLE data(new_id bigint,new_cat varchar(50))
-- INSERT INTO data(new_id ,new_cat)
-- VALUES
-- -- (100,'Agni'),
-- -- (200,'Agni'),
-- -- (500,'Dharti'),
-- -- (700,'Dharti'),
-- -- (200,'Vayu'),
-- -- (300,'Vayu'),
-- -- (500,'Vayu');
-- SELECT * from data
SELECT new_id,new_cat,
SUM(new_id) OVER(PARTITION BY new_cat ORDER BY new_id)AS "Total",
AVG(new_id) OVER(PARTITION BY new_cat ORDER BY new_id)AS "Average",
COUNT(new_id) OVER(PARTITION BY new_cat ORDER BY new_id)AS "Count",
MIN(new_id) OVER(PARTITION BY new_cat ORDER BY new_id)AS "Min",
Max(new_id) OVER(PARTITION BY new_cat ORDER BY new_id)AS "Max"
From data

