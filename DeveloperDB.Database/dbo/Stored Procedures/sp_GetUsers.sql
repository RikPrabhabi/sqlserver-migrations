CREATE PROCEDURE [dbo].[sp_GetForms]
AS
BEGIN

	SELECT ID, Name, Email FROM Forms;
END;