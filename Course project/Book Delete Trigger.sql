/*Создание триггера "Удалена книга*/
USE [Orders]
GO

CREATE TRIGGER BooksDelete
ON Books
AFTER DELETE
AS
INSERT INTO History (B_CONTRACT, OPERATION)
SELECT B_CONTRACT, 'Удалена книга ' + B_TITLE
FROM DELETED