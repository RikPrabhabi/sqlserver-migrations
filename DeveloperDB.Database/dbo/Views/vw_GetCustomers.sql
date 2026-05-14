CREATE VIEW dbo.vw_GetCustomers
AS
SELECT
    ID,
    FullName,
    Email,
    PhoneNumber,
    CreatedOn,
    Active,
    OrderByNo
FROM dbo.Customers;