select * from Mail where Email = 'bkm.u@yandex.com' --order by 1 desc

select * from Mail where Email like 'bkm.u@yandex.com' --order by 1 DESC


SELECT *
FROM 
(
SELECT 'bkm.u@yandex.com ' AS mail
UNION ALL

SELECT 'bkm.u@yandex.com'
)t
where mail LIKE 'bkm.u@yandex.com' 

SELECT 1
WHERE '1234' = '1234   '


SELECT 1
WHERE '1234' LIKE '1234   '