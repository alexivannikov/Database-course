/*���������� ������� "���������� ��������" ������� �� ���������� �����"*/
USE [Orders]
GO

BULK INSERT [Orders].[dbo].[Employees]
FROM 'C:\Users\Alex\Desktop\����������� ���������\���� ������\�������� ������\������\Employees.txt'
	
WITH (CODEPAGE = 'ACP', DATAFILETYPE = 'char', FIELDTERMINATOR = '\t', ROWTERMINATOR =
'\n');
GO
