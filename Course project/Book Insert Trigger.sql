/*Создание триггера "Добавлена книга*/
CREATE TRIGGER BooksInsert
ON Books
AFTER INSERT
AS
INSERT INTO History (B_CONTRACT, OPERATION)
SELECT B_CONTRACT, 'Добавлена книга ' + B_TITLE
FROM INSERTED