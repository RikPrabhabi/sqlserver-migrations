CREATE TABLE [dbo].[Users] (
    [UserID]       INT            IDENTITY (1, 1) NOT NULL,
    [FullName]     NVARCHAR (150) NOT NULL,
    [Username]     NVARCHAR (100) NOT NULL,
    [Email]        NVARCHAR (255) NOT NULL,
    [PasswordHash] NVARCHAR (500) NOT NULL,
    [PhoneNumber]  NVARCHAR (20)  NULL,
    [Role]         NVARCHAR (50)  DEFAULT ('User') NOT NULL,
    [IsActive]     BIT            DEFAULT ((1)) NOT NULL,
    [CreatedAt]    DATETIME       DEFAULT (getdate()) NOT NULL,
    [UpdatedAt]    DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC),
    UNIQUE NONCLUSTERED ([Email] ASC),
    UNIQUE NONCLUSTERED ([Username] ASC)
);

