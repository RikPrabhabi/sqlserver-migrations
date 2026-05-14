CREATE PROCEDURE [dbo].[sp_GetCustomer]
AS
BEGIN

	SELECT ID, Email, FullName, PhoneNumber FROM Customers;
END;