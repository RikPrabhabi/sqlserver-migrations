CREATE   FUNCTION dbo.fn_GetFullName
(
    @FirstName NVARCHAR(50),
    @LastName  NVARCHAR(50)
)
RETURNS NVARCHAR(100)
AS
BEGIN
    RETURN @FirstName + ' ' + @LastName;
END
