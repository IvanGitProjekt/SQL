/*
declare @v int =null


set @v=2

set @v=null


select @v

---------==========
declare @v2 int =null

select @v2=2

select @v2=null

select @v2
*/
----------------222=============
declare @v int =null

set @v=2

set @v=(select 3 where 1=2)


select @v

---------==========
declare @v2 int =null

select @v2=2

select @v2=(select 3 where 1=2)

select @v2

---------==========
declare @v3 int =null

select @v3=2

select @v3=3 where 1=2

select @v3
