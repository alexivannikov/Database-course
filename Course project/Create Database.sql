/*Создание БД*/

USE [master]
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = N'Orders')
DROP DATABASE [Orders]
GO

CREATE DATABASE [Orders]
GO
