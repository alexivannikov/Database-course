/*�������� �������� "��������� �����*/
CREATE TRIGGER BooksInsert
ON Books
AFTER INSERT
AS
INSERT INTO History (B_CONTRACT, OPERATION)
SELECT B_CONTRACT, '��������� ����� ' + B_TITLE
FROM INSERTED