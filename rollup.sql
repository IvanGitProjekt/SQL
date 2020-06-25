/************************************************************
 * Code formatted by SoftTree SQL Assistant © v6.4.230
 * Time: 12/4/2016 3:51:18 PM
 ************************************************************/

CREATE TABLE #t
(
	NAME     VARCHAR(10),
	n1       INT,
	n2       INT
)

INSERT INTO #t
  (
    NAME,
    n1,
    n2
  )
VALUES
  (
    'as',
    1,
    2
  ),
('as', 1, 3),
('umis', 0, 1),
('uk', 1, 3),
('pty', 1, 5)
		
SELECT *
FROM   #t		

SELECT NAME,n1, SUM(n2)
FROM   #t		
GROUP BY NAME,n1	

SELECT NAME,n1, SUM(n2)
FROM   #t		
GROUP BY GROUPING sets ( (NAME,n1))	

SELECT NAME,n1, SUM(n2)
FROM   #t		
GROUP BY GROUPING sets ( (NAME),(n1))	

SELECT NAME,n1, SUM(n2)
FROM   #t		
GROUP BY ROLLUP ( NAME,n1)	

DROP TABLE  #t