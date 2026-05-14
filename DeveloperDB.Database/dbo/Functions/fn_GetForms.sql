CREATE FUNCTION [dbo].[fn_GetForms]()
RETURNS TABLE
AS
RETURN
(
    SELECT
        ID,
        Name,
        Email
    FROM dbo.Forms
);