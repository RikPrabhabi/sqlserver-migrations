CREATE FUNCTION dbo.fn_GetCustomers()
RETURNS TABLE
AS
RETURN
(
    SELECT
        ID,
        FullName,
        Email,
        PhoneNumber,
        CreatedOn,
        Active,
        OrderByNo
    FROM dbo.Customers
);