CREATE TABLE [dbo].[Customers] (
    [ID]        INT            IDENTITY (1, 1) NOT NULL,
    [FullName]  NVARCHAR (100) NOT NULL,
    [Email]     NVARCHAR (150) NOT NULL,
    [PhoneNumber] INT NULL, 
    [CreatedOn] DATETIME       DEFAULT (getdate()) NOT NULL,
    [Active] INT NULL DEFAULT 1, 
    [OrderByNo] INT NULL DEFAULT 1, 
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([ID] ASC)
);

