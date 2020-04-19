/*Создание представления "Книги - Редакторы"*/
USE [Orders]
GO

CREATE VIEW BooksEditors AS
SELECT Books.B_TITLE AS Book,
	   Employees.E_FAMILY AS EditorFamily,
	   Employees.E_NAME AS EditorName,
	   Employees.E_SURNAME AS EditorSurname

FROM Books INNER JOIN Employees ON Books.B_EDIT = Employees.E_ID
GO


