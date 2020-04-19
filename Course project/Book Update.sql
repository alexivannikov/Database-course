/*Изменение записи в таблице "Книги*/
USE [Orders]
GO

UPDATE Books SET B_PRICE = 8800.00
WHERE B_PRICE = 9000.00;

SELECT *FROM HISTORY