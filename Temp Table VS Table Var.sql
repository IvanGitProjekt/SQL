--0. make the same script with GO.
--1. make the same script in another tab
--2. make the same script twice.

 SELECT 1 AS n INTO #tIvan
 
 SELECT * FROM #tIvan
 
 GO 
 SELECT * FROM #tIvan
 
-- DROP TABLE #tIvan


/*


 SELECT 1 AS n INTO ##tIvan
 
 SELECT * FROM ##tIvan
 
 GO 
 SELECT * FROM ##tIvan
 
-- DROP TABLE ##tIvan
*/

/*
DECLARE @t TABLE (ID INT)

SELECT *
FROM @t

GO 

SELECT *
FROM @t

 */