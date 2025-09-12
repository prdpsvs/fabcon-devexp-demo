WITH base AS (
    SELECT
        SaleID,
        CustomerID,
        ProductID,
        Quantity,
        SaleDate,
        PromotionCode
    FROM {{ source('retail', 'Sales') }}
)
SELECT
    CustomerID,
    ProductID,
    SUM(Quantity) AS TotalQuantity,
    COUNT(DISTINCT SaleID) AS NumTransactions,
    COUNT(DISTINCT PromotionCode) AS PromotionsUsed
FROM base
GROUP BY CustomerID, ProductID;
