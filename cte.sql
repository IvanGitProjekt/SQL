WITH t1 AS (
	
SELECT 1 AS n
UNION ALL
SELECT 3 AS n
),
t2 as(
SELECT 1 AS n
UNION ALL
SELECT 2 AS n
) 
SELECT *
FROM   t1
       JOIN t2
            ON  t1.n = t2.n ;

WITH t1 AS (
	
SELECT 1 AS n
UNION ALL
SELECT 3 AS n
),
t2 as(
SELECT 1 AS n
UNION ALL
SELECT 2 AS n
) 
SELECT *
FROM   t1
       JOIN t2
            ON  t1.n = t2.n OR t1.n=3;
			            


WITH t1 AS (
	
SELECT 1 AS n
UNION ALL
SELECT 3 AS n
),
t2 as(
SELECT 1 AS n
UNION ALL
SELECT 2 AS n
) 
SELECT *
FROM   t1
       JOIN t2
            ON  t1.n = t2.n OR t2.n=2;
			            