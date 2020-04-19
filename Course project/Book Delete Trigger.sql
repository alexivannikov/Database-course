/*�������� �������� "������� �����*/
USE [Orders]
GO

CREATE TRIGGER BooksDelete
ON Books
AFTER DELETE
AS
INSERT INTO History (B_CONTRACT, OPERATION)
SELECT B_CONTRACT, '������� ����� ' + B_TITLE
FROM DELETED