/*Функция вычисления максимальной стоимости книги, помноженной на 100"*/
USE [Orders]
GO

DROP FUNCTION IF EXISTS MaxPrice
GO

CREATE FUNCTION MaxPrice(@a INT)
RETURNS INT
BEGIN
DECLARE @maxPr INT
SET  @maxPr = (SELECT MAX(B_PRICE) FROM BOOKS)*@a;
RETURN @maxPr
END
GO

PRINT Orders.dbo.MaxPrice(100)
