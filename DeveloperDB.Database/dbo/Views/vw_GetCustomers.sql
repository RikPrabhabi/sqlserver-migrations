
CREATE VIEW [dbo].[vw_GetCustomers]
AS
SELECT
    ID,
    FullName,
    Email,
    PhoneNumber
FROM dbo.Customers;