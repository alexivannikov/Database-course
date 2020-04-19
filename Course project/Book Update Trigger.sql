/*Создание триггера "Обновлена книга*/
USE [Orders]
GO

CREATE TRIGGER BookUpdate
ON Books
AFTER UPDATE
AS
INSERT INTO History (B_CONTRACT, OPERATION)
SELECT B_CONTRACT, 'Обновлена книга ' + B_TITLE
FROM INSERTED