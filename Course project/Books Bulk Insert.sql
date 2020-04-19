/*Заполнение таблицы "Книги" данными из файла"*/
USE [Orders]
GO

BULK INSERT [Orders].[dbo].[Books]
FROM 'C:\Users\Alex\Desktop\Программная инженерия\Базы данных\Курсовой проект\Данные\Books.txt'
	
WITH (CODEPAGE = 'ACP', DATAFILETYPE = 'char', FIELDTERMINATOR = '\t', ROWTERMINATOR =
'\n');
GO