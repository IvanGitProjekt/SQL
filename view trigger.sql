
SELECT u.Name, u.Surname
INTO  testUsersIvan
FROM admiral.dbo.Users AS u
WHERE 1=2


SELECT *
FROM testUsersIvan

IF (OBJECT_ID('testUsersIvanV') IS NOT NULL)
DROP VIEW testUsersIvanV

CREATE VIEW testUsersIvanV
AS 
SELECT u.Name, u.Surname
FROM testUsersIvan u
GROUP BY u.Name, u.Surname

SELECT *
FROM testUsersIvanV

INSERT INTO testUsersIvanV ( Name, Surname)
VALUES ('adf2','asdf2')

CREATE TRIGGER testUsersIvanT
ON testUsersIvanV
INSTEAD OF INSERT
AS
BEGIN
	SELECT 1
END

--now insert will not return error (because view cannot be inserted because of group by)
-- it will be done logic from instead of
INSERT INTO testUsersIvanV ( Name, Surname)
VALUES ('adf2','asdf2')
-------======
DROP TABLE testUsersIvan
DROP VIEW  testUsersIvanV