CREATE FUNCTION dbo.fn_GetForms()
RETURNS TABLE
AS
RETURN
(
    SELECT
        ID,
        Name,
        Email,
        PhoneNumber
    FROM dbo.Forms
);