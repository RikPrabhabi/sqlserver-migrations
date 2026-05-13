-- Works on SQL Server 2016 SP1 and later
CREATE   PROCEDURE dbo.usp_GetCustomerByID
    @CustomerID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        ID,
        FullName,
        Email,
        PhoneNumber,
        CreatedOn,
        Active
    FROM dbo.Customers
    WHERE ID = @CustomerID;
END
