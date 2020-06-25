select datepart(dd,ao.opentime),max(ao.volume) from AccountsOperations ao with(Nolock) where ao.opentime>'2013-09-10' and ao.opentime<'2013-09-19'
group by datepart(dd,ao.opentime)
order by datepart(dd,ao.opentime)



select ao.accountid,ao.ticketid,ao.volume--* 
from AccountsOperations ao with(Nolock) where ao.opentime>'2013-09-10' and ao.opentime<'2013-09-19'
and ao.volume =(select max(ao2.volume) from AccountsOperations ao2 with(Nolock) where ao2.opentime>'2013-09-10' and ao2.opentime<'2013-09-19'
				and datepart(dd,ao2.opentime)=datepart(dd,ao.opentime)
				)
-->>>2min

select ao.accountid,ao.ticketid,ao.volume--* 
from AccountsOperations ao with(Nolock) 
where ao.opentime>'2013-09-10' and ao.opentime<'2013-09-19'		
--18sec		
				
select max(ao.volume) over (partition by datepart(dd,ao.opentime)) as maxv,ao.accountid,ao.ticketid,ao.volume--* 
from AccountsOperations ao with(Nolock) 
where ao.opentime>'2013-09-10' and ao.opentime<'2013-09-19'			
--23sec	

select * from 
(
select max(ao.volume) over (partition by datepart(dd,ao.opentime)) as maxv,ao.accountid,ao.ticketid,ao.volume--* 
from AccountsOperations ao with(Nolock) 
where ao.opentime>'2013-09-10' and ao.opentime<'2013-09-19'			
) t where t.maxv=t.volume
--4sec