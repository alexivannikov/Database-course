/*Заполнение таблицы "Книги" данными из файла"*/
USE [Orders]
GO

BULK INSERT [Orders].[dbo].[Authors]
FROM 'C:\Users\Alex\Desktop\Программная инженерия\Базы данных\Курсовой проект\Данные\Authors.txt'
	
WITH (CODEPAGE = 'ACP', DATAFILETYPE = 'char', FIELDTERMINATOR = '\t', ROWTERMINATOR =
'\n');
GO