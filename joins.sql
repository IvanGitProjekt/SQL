create table t1 (n1 int)

--insert into t1(n1) values (1),(2),(5)
insert into t1(n1) values (1),(5)

create table t2 (n2 int)

--insert into t2(n2) values (1),(1),(3),(2),(4)
insert into t2(n2) values (1),(3)

select * from t1


select * from t2

select * 
from t1	
	 join t2
		on t1.n1=t2.n2

select * 
from t1	
	left join t2
		on t1.n1=t2.n2
		
select * 
from t1	
	left join t2
		on t1.n1=t2.n2
		and t1.n1<>2		
		
select * 
from t1	
	FULL OUTER JOIN t2	
		on t1.n1=t2.n2	


select * 
from t1	
	CROSS join t2

DROP TABLE t1
DROP TABLE t2		
