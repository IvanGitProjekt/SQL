/*
CREATE TABLE test1 ( n1 INT)

INSERT INTO test1
(
	n1
)
VALUES
(
1
)
*/


DBCC TRACEON(610)

update test1
set n1=2

insert into test1 (n1) values (3)

DBCC TRACEOFF(610)