USE [Orders]
GO

/*������� ����� - ������*/
DROP TABLE IF EXISTS dbo.Titles
GO

CREATE TABLE Titles(
B_ID INT NOT NULL FOREIGN KEY REFERENCES Books(B_CONTRACT),
A_ID INT NOT NULL FOREIGN KEY REFERENCES Authors(A_ID),
A_NO INT NOT NULL IDENTITY(1, 1), 
);
GO

