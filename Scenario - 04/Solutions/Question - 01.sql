
-----------------------------------------------------------------------------------------------------

--Question - 01
/*
Analyze regional sales data to identify the top three product categories by total revenue in each
region and calculate the percentage contribution of these categories to total sales, providing
insights into regional preferences and revenue distribution.
*/
-----------------------------------------------------------------------------------------------------


WITH RegionProductSales AS (
    SELECT
        r.RegionName,
        cat.CategoryName AS ProductCategory,
        SUM(st.Quantity * st.UnitPrice) AS TotalSalesRevenue,
        DENSE_RANK() OVER (PARTITION BY r.RegionName ORDER BY SUM(st.Quantity * st.UnitPrice) DESC) AS CategoryRank
    FROM
        Regions r
    JOIN
        SalesTransactions st ON r.RegionID = st.RegionID
    JOIN
        Products p ON st.ProductID = p.ProductID
    JOIN
        Categories cat ON p.CategoryID = cat.CategoryID
    GROUP BY
        r.RegionName, cat.CategoryName
),
RankedRegionProductSales AS (
    SELECT
        RegionName,
        ProductCategory,
        TotalSalesRevenue,
        CategoryRank,
        SUM(TotalSalesRevenue) OVER (PARTITION BY RegionName) AS TotalRegionSales
    FROM
        RegionProductSales
)
SELECT
    RegionName,
    CASE
        WHEN CategoryRank = 1 THEN '1st'
        WHEN CategoryRank = 2 THEN '2nd'
        WHEN CategoryRank = 3 THEN '3rd'
        ELSE 'Others'
    END AS Rank,
    ProductCategory,
    TotalSalesRevenue,
    (TotalSalesRevenue * 100.0) / TotalRegionSales AS PercentageOfTotalSales
FROM
    RankedRegionProductSales
WHERE
    CategoryRank <= 3
ORDER BY
    RegionName, CategoryRank;



