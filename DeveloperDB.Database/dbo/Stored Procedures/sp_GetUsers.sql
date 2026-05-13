CREATE PROCEDURE sp_GetForms
AS
BEGIN

	SELECT ID, Name, Email, PhoneNumber FROM Forns;
END;