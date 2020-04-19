/*Удаление записи в таблице "Книги*/
USE [Orders]
GO

DELETE FROM Books
WHERE B_CONTRACT = 1354837

SELECT * FROM History