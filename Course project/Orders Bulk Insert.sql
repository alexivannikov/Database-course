/*���������� ������� "������" ������� �� ���������� �����"*/
USE [Orders]
GO

BULK INSERT [Orders].[dbo].[Orders]
FROM 'C:\Users\Alex\Desktop\����������� ���������\���� ������\�������� ������\������\Orders.txt'
	
WITH (CODEPAGE = 'ACP', DATAFILETYPE = 'char', FIELDTERMINATOR = '\t', ROWTERMINATOR =
'\n');
GO