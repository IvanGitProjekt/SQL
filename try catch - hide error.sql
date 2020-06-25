begin try
   print 1
end try
begin catch
   print ERROR_MESSAGE()
end catch
/*
BEGIN TRY
*/
   raiserror('fake error',16,1)
/*
end try
begin catch
   print ERROR_MESSAGE()
end catch
*/
begin try
   print 2
end try
begin catch
   print ERROR_MESSAGE()
end catch