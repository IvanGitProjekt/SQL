USE [Admiral]
GO


insert into [dbo].[TestTask]([CompanyId],Name)
values(1,11)
insert into [dbo].[TestTask]([CompanyId],Name)
values(2,22)
insert into [dbo].[TestTask]([CompanyId],Name)
values(2,33)
insert into [dbo].[TestTask]([CompanyId],Name)
values(3,44)
insert into [dbo].[TestTask]([CompanyId],Name)
values(3,55)
insert into [dbo].[TestTask]([CompanyId],Name)
values(3,66)




select companyid,name,ROW_NUMBER() OVER(PARTITION BY companyid ORDER BY companyid) from [dbo].[TestTask]




delete 
from   [dbo].[TestTask]
from  [dbo].[TestTask] t1  join (select companyid,name,ROW_NUMBER() OVER(PARTITION BY companyid ORDER BY companyid) as number from [dbo].[TestTask] t1) t2 
on t1.companyid=t2.companyid 
and t1.name=t2.name
where t2.number<>1




--if realy already exists some kind of ID
delete 
from   [dbo].[TestTask]
from   [dbo].[TestTask] t1 
where exists (select 1 from [dbo].[TestTask]  t2 where t2.CompanyId =t1.companyid and t2.Name>t1.name)




