/*���������� ������� "�����" ������� �� �����"*/
USE [Orders]
GO

BULK INSERT [Orders].[dbo].[Authors]
FROM 'C:\Users\Alex\Desktop\����������� ���������\���� ������\�������� ������\������\Authors.txt'
	
WITH (CODEPAGE = 'ACP', DATAFILETYPE = 'char', FIELDTERMINATOR = '\t', ROWTERMINATOR =
'\n');
GO