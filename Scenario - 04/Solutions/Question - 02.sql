
-----------------------------------------------------------------------------------------------------

--Question - 02
/*
Write a T-SQL query to identify the top five best-selling products across all regions based 
on total sales revenue. Additionally, calculate the average purchase frequency and average spending 
per customer for each product category to assess customer engagement and product popularity.
*/
-----------------------------------------------------------------------------------------------------


WITH TopSellingProducts AS (
    SELECT TOP 5
        p.ProductID,
        p.ProductName,
        c.CategoryName,
        SUM(st.Quantity * st.UnitPrice) AS TotalSalesRevenue
    FROM
        Products p
    JOIN
        Categories c ON p.CategoryID = c.CategoryID
    JOIN
        SalesTransactions st ON p.ProductID = st.ProductID
    GROUP BY
        p.ProductID, p.ProductName, c.CategoryName
    ORDER BY
        TotalSalesRevenue DESC
),

ProductCustomerEngagement AS (
    SELECT
        p.ProductID,
        c.CategoryName,
        COUNT(DISTINCT st.CustomerID) AS UniqueCustomers,
        COUNT(*) AS TotalPurchases,
        AVG(CAST(st.Quantity AS FLOAT)) AS AveragePurchaseFrequency,
        AVG(st.UnitPrice * st.Quantity) AS AverageSpendingPerCustomer
    FROM
        Products p
    JOIN
        Categories c ON p.CategoryID = c.CategoryID
    JOIN
        SalesTransactions st ON p.ProductID = st.ProductID
    GROUP BY
        p.ProductID, c.CategoryName
)

SELECT
    tsp.ProductName,
    tsp.CategoryName,
    tsp.TotalSalesRevenue,
    pce.UniqueCustomers,
    pce.TotalPurchases,
    pce.AveragePurchaseFrequency,
    pce.AverageSpendingPerCustomer
FROM
    TopSellingProducts tsp
JOIN
    ProductCustomerEngagement pce ON tsp.ProductID = pce.ProductID
ORDER BY
    tsp.TotalSalesRevenue DESC;



