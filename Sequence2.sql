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
select num,ROW_NUMBER () over (order by t.num),num-ROW_NUMBER () over (order by t.num) 				
from t
