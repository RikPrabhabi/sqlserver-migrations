CREATE TABLE [dbo].[CustomerAudit] (
    [AuditID]     INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]  INT            NULL,
    [ActionType]  VARCHAR (20)   NULL,
    [FullName]    NVARCHAR (100) NULL,
    [Email]       NVARCHAR (150) NULL,
    [PhoneNumber] INT            NULL,
    [CreatedOn]   DATETIME       NULL,
    [Active]      INT            NULL,
    [OrderByNo]   INT            NULL,
    [ActionDate]  DATETIME       DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([AuditID] ASC)
);

