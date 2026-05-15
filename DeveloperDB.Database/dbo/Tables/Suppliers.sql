CREATE TABLE [dbo].[Suppliers] (
    [ID]            INT            IDENTITY (1, 1) NOT NULL,
    [SupplierName]  NVARCHAR (150) NOT NULL,
    [ContactPerson] NVARCHAR (100) NULL,
    [Email]         NVARCHAR (150) NULL,
    [PhoneNumber]   NVARCHAR (20)  NULL,
    [Address]       NVARCHAR (250) NULL,
    [City]          NVARCHAR (100) NULL,
    [State]         NVARCHAR (100) NULL,
    [PinCode]       NVARCHAR (10)  NULL,
    [GSTNumber]     NVARCHAR (30)  NULL,
    [CreatedOn]     DATETIME       CONSTRAINT [DF_Suppliers_CreatedOn] DEFAULT (getdate()) NOT NULL,
    [Active]        BIT            CONSTRAINT [DF_Suppliers_Active] DEFAULT ((1)) NOT NULL,
    [OrderByNo]     INT            NULL,
    CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ([ID] ASC)
);

