
-----------------------------------------------------------------------------------------------------

--Question - 01

--Identify the top-selling product in terms of total quantity sold for each region.

-----------------------------------------------------------------------------------------------------

WITH RegionSales AS (
    SELECT
        r.RegionName,
        p.ProductName,
        SUM(st.Quantity) AS TotalQuantitySold,
        ROW_NUMBER() OVER (PARTITION BY r.RegionID ORDER BY SUM(st.Quantity) DESC) AS Rank
    FROM
        SalesTransactions st
    JOIN
        Products p ON st.ProductID = p.ProductID
    JOIN
        Regions r ON st.RegionID = r.RegionID
    GROUP BY
        r.RegionID, r.RegionName, p.ProductName
)

SELECT
    RegionName,
    ProductName AS TopSellingProduct,
    TotalQuantitySold
FROM
    RegionSales
WHERE
    Rank = 1;
