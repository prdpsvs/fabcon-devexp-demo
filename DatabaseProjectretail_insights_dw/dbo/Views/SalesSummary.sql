CREATE   VIEW SalesSummary AS
SELECT
    s.SaleDate,
    s.ProductID,
    SUM(s.Quantity) AS TotalQuantity,
    COUNT(DISTINCT s.SaleID) AS NumTransactions,
    COUNT(DISTINCT s.PromotionCode) AS PromotionsUsed
FROM Sales s
GROUP BY s.SaleDate, s.ProductID;

GO

