CREATE TABLE t1 
(
 ID INT CONSTRAINT pk_t1_n 	PRIMARY KEY 
)


CREATE TABLE t2 
(
 ID INT CONSTRAINT pk_t2_n 	PRIMARY KEY,
 t1_ID INT CONSTRAINT fk_t2_t1_ID FOREIGN KEY REFERENCES t1(ID)
)


INSERT INTO t1
(
	ID
)
VALUES (1),(2), (3)

INSERT INTO t2
(
	ID,
	t1_ID
)
VALUES(	1,	2),(	2,	2),(	3,	2)