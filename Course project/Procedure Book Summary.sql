/*Создание хранимой процедуры "Книги - Цена - Менеджер*/
USE [Orders]
GO

DROP PROCEDURE IF EXISTS dbo.BookSummary
GO

CREATE PROCEDURE BookSummary AS
SELECT B_TITLE AS Book, B_PRICE AS Price, B_MAN AS Manager
FROM Books
