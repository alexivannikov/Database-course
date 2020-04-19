/*Создание таблицы "Авторы"*/
USE [Orders]
GO

DROP TABLE IF EXISTS dbo.Authors
GO

CREATE TABLE Authors(
A_ID INT NOT NULL PRIMARY KEY,
A_NAME VARCHAR(50) NOT NULL
);
GO