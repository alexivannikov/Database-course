/*Создание представления "Заказчики*/
CREATE VIEW Customers AS
SELECT Orders.O_FAMILY AS CustomerFamily,
	   Orders.O_NAME AS CustomerName, 
	   Orders.O_SURNAME AS CustomerSurname,
	   Orders.O_ID AS OrderID,
	   Books.B_TITLE AS Book,
	   Books.B_CONTRACT AS BookID,
	   Items.B_COUNT AS Quantity,
	   Orders.O_READY AS OrderReady

FROM Items INNER JOIN Orders ON Items.O_ID = Orders.O_ID
INNER JOIN Books ON Items.B_ID = Books.B_CONTRACT
GO