CREATE TABLE [dbo].[Sales] (
    [SaleID]     INT  NOT NULL,
    [CustomerID] INT  NULL,
    [ProductID]  INT  NULL,
    [Quantity]   INT  NULL,
    [SaleDate]   DATE NULL,
    [PromotionCode] VARCHAR(50) NOT NULL
);


GO

