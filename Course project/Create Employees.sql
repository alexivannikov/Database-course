/*�������� ������� "���������� ��������"*/
USE [Orders]
GO

DROP TABLE IF EXISTS dbo.Employees
GO

CREATE TABLE Employees(
E_ID INT NOT NULL PRIMARY KEY,
E_FAMILY VARCHAR (50) NOT NULL, 
E_NAME VARCHAR (50) NOT NULL, 
E_SURNAME VARCHAR (50) NOT NULL, 
E_BORN DATE NOT NULL,
E_PASSP VARCHAR(50) NOT NULL,
E_INN INT NOT NULL,
E_POST VARCHAR(50) NOT NULL,
E_SALARY DECIMAL(8, 2) NOT NULL,
E_TEL VARCHAR(50) NOT NULL,
);
GO








