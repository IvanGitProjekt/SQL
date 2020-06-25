--CREATE TABLE testDef (a INT NULL DEFAULT 1, b int null)
--CREATE TABLE testDef (a INT not NULL DEFAULT 1, b int null)
--drop table testDef

INSERT INTO testDef(b) VALUES (1)
INSERT INTO testDef(a,b) VALUES (null,2)
INSERT INTO testDef(a,b) VALUES (default,3)

SELECT * FROM testDef AS td

TRUNCATE TABLE testDef