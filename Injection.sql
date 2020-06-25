
 declare @var varchar(40)='ken18@email.ee'' or 1 = 1--'

select 'select top 10 * from users u with(nolock) where username='''+@var+ ''' '

execute ('select top 10 * from users u with(nolock) where username='''+@var+ ''' ')

select top 10 * from users u with(nolock) where username='ken18@email.ee' or 1 = 1)--' 

select top 10 * 
FROM "Users" AS "us"
 LEFT JOIN "UsersDomainLanguages" AS "ln" ON ln.UserId = us.UserId and ln.DomainId = 1 WHERE (us.Username = 'test.' or 1=1)--') ORDER BY "UserId" ASC