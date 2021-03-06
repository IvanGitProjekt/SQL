/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 10000 *
INTO testUsers2--testUsers1
  FROM [Admiral].[dbo].[Users] u


ALTER TABLE [dbo].[testUsers1] ADD  CONSTRAINT [PK_testUsers1_UserID] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)

CREATE NONCLUSTERED INDEX IX_testUsers2_UserID ON dbo.testUsers2 (UserID) INCLUDE (IsEnabled)


SELECT t1.UserId, t1.isEnabled --*-- 1--*--1-- t1.UserId, t1.isEnabled --*
FROM testUsers1 t1
WHERE t1.UserId =1 
	--AND t1.isEnabled =1 
	
SELECT t2.UserId, t2.isEnabled --*--1-- t2.UserId, t2.isEnabled --*
FROM testUsers2 t2
WHERE t2.UserId =1 
	--AND t2.isEnabled =1 	
	
ALTER TABLE [dbo].[testUsers2] ADD  CONSTRAINT [PK_testUsers2_UserID] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)	


update statistics testUsers2   


DBCC FREEPROCCACHE 