/*Заполнение таблицы "Заказы" данными из текстового файла"*/
USE [Orders]
GO

BULK INSERT [Orders].[dbo].[Orders]
FROM 'C:\Users\Alex\Desktop\Программная инженерия\Базы данных\Курсовой проект\Данные\Orders.txt'
	
WITH (CODEPAGE = 'ACP', DATAFILETYPE = 'char', FIELDTERMINATOR = '\t', ROWTERMINATOR =
'\n');
GO