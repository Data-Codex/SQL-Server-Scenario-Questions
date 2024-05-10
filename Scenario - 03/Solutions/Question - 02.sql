
-----------------------------------------------------------------------------------------------------

--Question - 02

--Write a T-SQL query to calculate the year-over-year growth rate of sales revenue for each product category.

-----------------------------------------------------------------------------------------------------


SELECT
    c.CategoryName,
    YEAR(st.SaleDate) AS SalesYear,
    SUM(st.Quantity * st.UnitPrice) AS TotalSalesAmount,
    LAG(SUM(st.Quantity * st.UnitPrice), 1) OVER (PARTITION BY c.CategoryName ORDER BY YEAR(st.SaleDate)) AS PreviousYearSalesAmount,
    CASE
        WHEN LAG(SUM(st.Quantity * st.UnitPrice), 1) OVER (PARTITION BY c.CategoryName ORDER BY YEAR(st.SaleDate)) = 0 THEN NULL
        ELSE ((SUM(st.Quantity * st.UnitPrice) - LAG(SUM(st.Quantity * st.UnitPrice), 1) OVER (PARTITION BY c.CategoryName ORDER BY YEAR(st.SaleDate))) / LAG(SUM(st.Quantity * st.UnitPrice), 1) OVER (PARTITION BY c.CategoryName ORDER BY YEAR(st.SaleDate))) * 100
    END AS SalesGrowthRate
FROM
    SalesTransactions st
JOIN
    Products p ON st.ProductID = p.ProductID
JOIN
    Categories c ON p.CategoryID = c.CategoryID
GROUP BY
    c.CategoryName, YEAR(st.SaleDate)
ORDER BY
    c.CategoryName, SalesYear;
