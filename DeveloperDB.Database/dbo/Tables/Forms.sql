CREATE TABLE [dbo].[Forms] (
    [ID]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] VARCHAR (100) NOT NULL,
    [Email] VARCHAR(100) NULL, 
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

