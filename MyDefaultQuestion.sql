create table testT (col1 int )
insert into testT (col1  )
values (1)


select * from testT

alter table testT add col2 int not null default 0

select * from testT

insert into testT (col1,col2  )
values (1,2)

select * from testT

insert into testT (col1  )
values (1)

select * from testT


---------===========
create table testT2 (col1 int )
insert into testT2 (col1  )
values (1)


select * from testT2

alter table testT2 add col2 int  null default 0

select * from testT2

insert into testT2 (col1,col2  )
values (1,2)

select * from testT2

insert into testT2 (col1  )
values (1)

select * from testT2