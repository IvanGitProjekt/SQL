
SELECT * FROM [testTable]


SELECT * FROM [testTable]
WHERE  userid >= 6


declare @ids table (id int);

UPDATE TOP (2) [testTable]
SET    userid = userid
OUTPUT INSERTED.userid INTO @ids
WHERE  userid >= 6

SELECT @@ROWCOUNT

SELECT *
FROM @ids