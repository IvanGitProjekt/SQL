WITH t1 AS (
	
SELECT 1 AS n0, 2 AS n, 1 AS n2
UNION ALL
SELECT 1 AS n0, 3 AS n, 1 AS n2
UNION ALL
SELECT 1 AS n0, 4 AS n, 2 AS n2
)
SELECT n0,n2, SUM(n)--*
FROM   t1
GROUP BY n0,n2;

WITH t1 AS (
	
SELECT 1 AS n0, 2 AS n, 1 AS n2
UNION ALL
SELECT 1 AS n0, 3 AS n, 1 AS n2
UNION ALL
SELECT 1 AS n0, 4 AS n, 2 AS n2
)
SELECT distinct n0,n2, SUM(n)--*
FROM   t1
GROUP BY n0,n2;

WITH t1 AS (
	
SELECT 1 AS n0, 2 AS n, 1 AS n2
UNION ALL
SELECT 1 AS n0, 3 AS n, 1 AS n2
UNION ALL
SELECT 1 AS n0, 4 AS n, 2 AS n2
)
SELECT distinct n0, SUM(n)--*
FROM   t1
GROUP BY n0,n2;

WITH t1 AS (
	
SELECT 1 AS n0, 1 AS n, 1 AS n2
UNION ALL
SELECT 1 AS n0, 3 AS n, 1 AS n2
UNION ALL
SELECT 1 AS n0, 4 AS n, 2 AS n2
)
SELECT distinct n0, SUM(n)--*
FROM   t1
GROUP BY n0,n2

