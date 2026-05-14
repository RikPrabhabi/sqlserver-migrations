
CREATE   VIEW [dbo].[vw_ActiveCustomers]
AS
    SELECT 
        ID,
        FullName
    FROM dbo.Customers
    WHERE Email IS NOT NULL;