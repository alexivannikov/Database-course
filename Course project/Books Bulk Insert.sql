/*���������� ������� "�����" ������� �� �����"*/
USE [Orders]
GO

BULK INSERT [Orders].[dbo].[Books]
FROM 'C:\Users\Alex\Desktop\����������� ���������\���� ������\�������� ������\������\Books.txt'
	
WITH (CODEPAGE = 'ACP', DATAFILETYPE = 'char', FIELDTERMINATOR = '\t', ROWTERMINATOR =
'\n');
GO