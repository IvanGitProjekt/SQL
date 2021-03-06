SELECT CASE 
			WHEN EXISTS (SELECT TOP 1 * FROM Instruments WHERE ParentID IN (13, 14) AND ao.Symbol LIKE '%' + [Name] + '%') THEN ABS(ao.OpenPrice - ao.ClosePrice) * POWER(10, 0)
			WHEN ao.Digits IN (3, 5) THEN ABS(ao.OpenPrice - ao.ClosePrice) * POWER(10, ao.Digits - 1)
			ELSE ABS(ao.OpenPrice - ao.ClosePrice) * POWER(10, ao.Digits)
		END AS 'Pips', 
		CASE 
			WHEN EXISTS (SELECT TOP 1 * FROM Instruments WHERE ParentID IN (13, 14) AND ao.Symbol LIKE '%' + [Name] + '%') THEN 1
			WHEN ao.Digits IN (3, 5) THEN 2
			ELSE 3
		END AS 'Pips case',
		ao.OpenPrice - ao.ClosePrice AS 'open-close',
		ao.OpenPrice, ao.ClosePrice
FROM AccountsOperations AS ao
	INNER JOIN Accounts AS a ON a.AccountId = ao.AccountId AND a.ServerId = ao.ServerId
WHERE	ao.AccountId = 8067032
	AND	ao.ServerId = 1
	AND	a.TradeType IN (1, 3)
	AND	ao.OperationType IN (0, 1)
	AND	a.Mode IN (0, 2)
	AND	DATEDIFF(MINUTE, ao.OpenTime, ao.CloseTime) >= 5
	AND	ao.OpenTime BETWEEN '2015-09-26 00:00:00.000' AND '2015-10-01 00:00:00.000'