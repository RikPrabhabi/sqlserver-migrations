CREATE   VIEW dbo.vw_ActiveCustomers
AS
    SELECT 
        ID,
        FullName,
        Email
    FROM dbo.Customers
    WHERE Email IS NOT NULL;
