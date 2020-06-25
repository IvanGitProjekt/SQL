with 
   t (num) as
   (select 1  union all
    select 2 union all 
    select 3 union all
    select 5 union all
    select 6 union all
    select 9 union all
    select 11 union all
    select 12 union all
    select 13 union all
    select 14 )
	,Seq (n)
	as 
		(select 1
			union all	
		select n+1
		from Seq
		where n<14 
	)
select *
from 
	(	
		select n,
				case when exists (select 1 from t where t.num=Seq.n) then 1 else 0 end as flag				
		from Seq
	)t
order by t.n


;with Seq (n)
	as 
		(select 1
			union all	
		select n+1
		from Seq
		where n<14 
	)
select 	*			
		from Seq
