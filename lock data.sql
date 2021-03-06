/*
CREATE TABLE [dbo].[testTable](
	[userid] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[testTable] ([userid]) VALUES (1)
INSERT [dbo].[testTable] ([userid]) VALUES (1)
INSERT [dbo].[testTable] ([userid]) VALUES (2)
INSERT [dbo].[testTable] ([userid]) VALUES (3)
INSERT [dbo].[testTable] ([userid]) VALUES (4)
INSERT [dbo].[testTable] ([userid]) VALUES (5)
INSERT [dbo].[testTable] ([userid]) VALUES (6)
INSERT [dbo].[testTable] ([userid]) VALUES (7)
INSERT [dbo].[testTable] ([userid]) VALUES (88)
INSERT [dbo].[testTable] ([userid]) VALUES (99)

*/
/*
    BEGIN
		CREATE NONCLUSTERED INDEX IX_testTable_UserID ON [dbo].[testTable]
		(	
			[UserID] ASC
		)
    END  
*/

BEGIN 	TRANSACTION

UPDATE  [Admiral].[dbo].[testTable] 
SET userid=9
WHERE userid=99

SELECT * FROM 
[Admiral].[dbo].[testTable]

--COMMIT TRANSACTION

--and in another tab - same script without begin tran and for another data.