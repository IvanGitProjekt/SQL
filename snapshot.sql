CREATE DATABASE TestSnapshot5 ON 
( NAME = Limits, FILENAME = 'E:\TestSnapshot5.ss') ,
( NAME = Limits_1, FILENAME = 'E:\TestSnapshot5_1.ss')
AS SNAPSHOT OF Limits;