create table testU ( N int) 

truncate table testU

insert into testU (N) values (1)

alter table testU  add constraint UQ_testU_N UNIQUE (N) 

alter table testU nocheck  constraint UQ_testU_N 


CREATE UNIQUE INDEX UQ_testU_N
ON testU (N)
WHERE N>1

insert into testU (N) values (1)
insert into testU (N) values (2)