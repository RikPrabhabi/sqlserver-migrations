CREATE TABLE [dbo].[ProductDetails] (
    [ID]           INT             IDENTITY (1, 1) NOT NULL,
    [ProductID]    INT             NOT NULL,
    [ProductName]  NVARCHAR (200)  NOT NULL,
    [ProductCode]  NVARCHAR (100)  NULL,
    [CategoryID]   INT             NULL,
    [BrandID]      INT             NULL,
    [Description]  NVARCHAR (MAX)  NULL,
    [CostPrice]    DECIMAL (18, 2) DEFAULT ((0)) NULL,
    [SellingPrice] DECIMAL (18, 2) DEFAULT ((0)) NULL,
    [StockQty]     INT             DEFAULT ((0)) NULL,
    [Unit]         NVARCHAR (50)   NULL,
    [Barcode]      NVARCHAR (100)  NULL,
    [IsActive]     BIT             DEFAULT ((1)) NULL,
    [CreatedAt]    DATETIME        DEFAULT (getdate()) NULL,
    [UpdatedAt]    DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

