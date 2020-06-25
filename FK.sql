CREATE TABLE t1(
	n1 [int] NOT NULL,
	n2 [int] NOT NULL
) 


CREATE TABLE t2(
	n1 [int] NOT NULL,
	n2 [int] NOT NULL
) 

ALTER TABLE t1  ADD  CONSTRAINT [PK_T1] PRIMARY KEY CLUSTERED (n1)


ALTER TABLE t2  --WITH NOCHECK 
ADD  CONSTRAINT [FK_T2] FOREIGN KEY(n1)
REFERENCES [dbo].t1 (n1)
--ON DELETE CASCADE

INSERT INTO t1
(
	n1,
	n2
)
VALUES
(
	1,
	1
)


INSERT INTO t1
(
	n1,
	n2
)
VALUES
(
	2,
	2
)

INSERT INTO t2
(
	n1,
	n2
)
VALUES
(
	1,
	1
)

DELETE FROM t1 WHERE n1=2 --can delete if there is no reference data
DELETE FROM t1 WHERE n1=1 --can't because there is reference, but if create fk with cascade then can be deleted and will be deleted referened
DELETE FROM t2

DROP TABLE t1 --cant drop first t1 when there is fk
DROP TABLE t2