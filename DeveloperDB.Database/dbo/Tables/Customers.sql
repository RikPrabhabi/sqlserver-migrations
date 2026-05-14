CREATE TABLE [dbo].[Customers] (
    [ID]          INT            IDENTITY (1, 1) NOT NULL,
    [FullName]    NVARCHAR (100) NOT NULL,
    [Email]       NVARCHAR (150) NOT NULL,
    [PhoneNumber] INT            NULL,
    [CreatedOn]   DATETIME       DEFAULT (getdate()) NOT NULL,
    [Active]      INT            DEFAULT ((1)) NULL,
    [OrderByNo]   INT            DEFAULT ((1)) NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE TRIGGER dbo.trg_Customers_Update
ON dbo.Customers
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.CustomerAudit
    (
        CustomerID,
        ActionType,
        FullName,
        Email,
        PhoneNumber,
        CreatedOn,
        Active,
        OrderByNo
    )
    SELECT
        ID,
        'UPDATE',
        FullName,
        Email,
        PhoneNumber,
        CreatedOn,
        Active,
        OrderByNo
    FROM inserted;
END;
GO
CREATE TRIGGER dbo.trg_Customers_Insert
ON dbo.Customers
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.CustomerAudit
    (
        CustomerID,
        ActionType,
        FullName,
        Email,
        PhoneNumber,
        CreatedOn,
        Active,
        OrderByNo
    )
    SELECT
        ID,
        'INSERT',
        FullName,
        Email,
        PhoneNumber,
        CreatedOn,
        Active,
        OrderByNo
    FROM inserted;
END;
GO
CREATE TRIGGER dbo.trg_Customers_Delete
ON dbo.Customers
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.CustomerAudit
    (
        CustomerID,
        ActionType,
        FullName,
        Email,
        PhoneNumber,
        CreatedOn,
        Active,
        OrderByNo
    )
    SELECT
        ID,
        'DELETE',
        FullName,
        Email,
        PhoneNumber,
        CreatedOn,
        Active,
        OrderByNo
    FROM deleted;
END;