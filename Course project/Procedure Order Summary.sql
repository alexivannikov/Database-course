/*Создание хранимой процедуры "Информация о заказах*/
USE [Orders]
GO

DROP PROCEDURE IF EXISTS dbo.OrderSummary
GO

CREATE PROCEDURE OrderSummary AS
SELECT O_ID AS Id, O_FAMILY AS Family, O_NAME AS Name, O_SURNAME AS Surname, O_ADDR AS Address
FROM Orders
