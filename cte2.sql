WITH t1 AS (
	
SELECT 1 AS n, 1 AS n2
UNION ALL
SELECT 3 AS n, 1 AS n2
UNION ALL
SELECT 4 AS n, 2 AS n2
),
t2 as(
SELECT 1 AS n, 1 AS n2
UNION ALL
SELECT 2 AS n, 1 AS n2
UNION ALL
SELECT 4 AS n, 2 AS n2
) 
SELECT *
FROM   t1
       JOIN t2
            ON  t1.n = t2.n ;

WITH t1 AS (
	
SELECT 1 AS n, 1 AS n2
UNION ALL
SELECT 3 AS n, 1 AS n2
UNION ALL
SELECT 4 AS n, 2 AS n2
),
t2 as(
SELECT 1 AS n, 1 AS n2
UNION ALL
SELECT 2 AS n, 1 AS n2
UNION ALL
SELECT 4 AS n, 2 AS n2
) 
SELECT *
FROM   t1
       JOIN t2
            ON  t1.n2 = t2.n2;                  
            
WITH t1 AS (
	
SELECT 1 AS n, 1 AS n2
UNION ALL
SELECT 3 AS n, 1 AS n2
UNION ALL
SELECT 4 AS n, 2 AS n2
),
t2 as(
SELECT 1 AS n, 1 AS n2
UNION ALL
SELECT 2 AS n, 1 AS n2
UNION ALL
SELECT 4 AS n, 2 AS n2
) 
SELECT *
FROM   t1
       JOIN t2
            ON  t1.n2 = t2.n2 AND t1.n=4;            