CREATE TABLE #t
(
	n1     INT,
	t0     INT
)

INSERT INTO #t
  (
    n1,
    t0
  )
VALUES
  (1,6),
  (2, 6)
  
  
  
SELECT *
FROM   #t		

SELECT *
FROM #t t1 
	JOIN #t t2
		ON t2.n1=2
WHERE t1.n1=1


UPDATE t2
SET t2.t0=3
FROM #t t1 
	JOIN #t t2
		ON t2.n1=2
WHERE t1.n1=1

  
SELECT *
FROM   #t	
	
DROP TABLE  #t		
	  