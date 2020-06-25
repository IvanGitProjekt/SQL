DECLARE @comment VARCHAR(20) ='to #1110551 abc'

SELECT PATINDEX('%[^0-9]%', @comment)

select replace(@comment,'to #','')

SELECT PATINDEX('%[^0-9]%', replace(@comment,'to #',''))
