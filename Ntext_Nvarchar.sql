create table testText(v1 ntext, v2 nvarchar(20))

insert into testText(v1 , v2 )
values (N'фыва',N'фыва')

select * from testText

create table testText2(v1 ntext, v2 nvarchar(20))


insert into testText2(v1 , v2 )
select v1 , v2 
from testText


select * from testText2

delete from testText2
delete from testText