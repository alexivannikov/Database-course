/*Создание хранимой процедуры "Реквизиты сотрудников*/
DROP PROCEDURE IF EXISTS dbo.EmployeeSummary
GO

CREATE PROCEDURE EmployeeSummary AS
SELECT E_FAMILY AS Family, E_NAME AS Name, E_SURNAME AS Surname, E_POST AS Position, E_TEL AS Telephone
FROM Employees


