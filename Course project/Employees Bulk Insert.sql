/*Заполнение таблицы "Сотрудники магазина" данными из текстового файла"*/
USE [Orders]
GO

BULK INSERT [Orders].[dbo].[Employees]
FROM 'C:\Users\Alex\Desktop\Программная инженерия\Базы данных\Курсовой проект\Данные\Employees.txt'
	
WITH (CODEPAGE = 'ACP', DATAFILETYPE = 'char', FIELDTERMINATOR = '\t', ROWTERMINATOR =
'\n');
GO
