/*Создание представления "Авторы - Книги"*/
USE [Orders]
GO

CREATE VIEW AuthorsBooks AS
SELECT Books.B_TITLE AS Book,
	   Authors.A_NAME AS Author,
	   Books.B_PRICE AS Price 
FROM Books INNER JOIN Authors ON Authors.A_ID = Books.AUTHOR_ID
GO
