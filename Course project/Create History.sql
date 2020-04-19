/*Создание таблицы "События базы данных"*/
USE [Orders]
GO

DROP TABLE IF EXISTS dbo.History
GO

CREATE TABLE History 
(
	B_CONTRACT INT NOT NULL,
    Operation VARCHAR(200) NOT NULL,
    CreateAt DATETIME NOT NULL DEFAULT GETDATE(),
);
GO



