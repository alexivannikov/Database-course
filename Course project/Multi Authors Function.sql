/*Функция выводящая авторов, у которых нескольких книг*/
USE [Orders]
GO

DROP FUNCTION IF EXISTS MultiAuthors
GO

CREATE FUNCTION MultiAuthors()
RETURNS TABLE
AS
RETURN (SELECT Authors.A_NAME AS Author 
FROM Authors INNER JOIN Books ON Authors.A_ID = Books.AUTHOR_ID
GROUP BY Authors.A_NAME
HAVING COUNT(*)  > 1 );
GO

SELECT * FROM MultiAuthors()