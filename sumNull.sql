SELECT SUM(t.n)
FROM
(
SELECT 1 AS n
UNION ALL
SELECT NULL
)t


SELECT MAX(t.n)
FROM
(
SELECT 1 AS n
UNION ALL
SELECT NULL
)t

SELECT MIN(t.n)
FROM
(
SELECT 1 AS n
UNION ALL
SELECT NULL
)t

SELECT COUNT(t.n)
FROM
(
SELECT 1 AS n
UNION ALL
SELECT NULL
)t
---------======

SELECT COUNT(*)
FROM
(
SELECT 1 AS n
UNION ALL
SELECT NULL
)t

