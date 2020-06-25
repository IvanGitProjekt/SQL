

SELECT *
INTO #t1
FROM 
(
SELECT 1 AS n
UNION ALL
SELECT 2 AS n
UNION ALL
SELECT 3 AS n
UNION ALL
SELECT 4 AS n
UNION ALL
SELECT 5 AS n
UNION ALL
SELECT 6 AS n
UNION ALL
SELECT 7 AS n
UNION ALL
SELECT 8 AS n
UNION ALL
SELECT 9 AS n
UNION ALL
SELECT 10 AS n
UNION ALL
SELECT 11 AS n
/*UNION ALL
SELECT 12 AS n
UNION ALL
SELECT 13 AS n
UNION ALL
SELECT 14 AS n
*/

)t

SELECT *
INTO #t2
FROM #t1

SELECT *
INTO #t3
FROM #t1

---------=============
/*SELECT *
FROM #t1

SELECT *
FROM #t2

SELECT *
FROM #t3
*/


SELECT *,t1.n*t2.n*t3.n
FROM #t1 t1
	JOIN #t2 t2
		ON t2.n>t1.n
	JOIN #t3 t3
		ON t3.n>t2.n		
WHERE t1.n+t2.n+t3.n=14		
	AND t1.n*t2.n*t3.n<65
ORDER BY t1.n,t2.n,t3.n			



SELECT *,t1.n*t2.n*t3.n
FROM #t1 t1
	JOIN #t2 t2
		ON t2.n>=t1.n
	JOIN #t3 t3
		ON t3.n>=t2.n		
WHERE t1.n+t2.n+t3.n=14		
	AND t1.n*t2.n*t3.n<65
ORDER BY t1.n,t2.n,t3.n		
---------=============
DROP TABLE #t1
DROP TABLE #t2
DROP TABLE #t3