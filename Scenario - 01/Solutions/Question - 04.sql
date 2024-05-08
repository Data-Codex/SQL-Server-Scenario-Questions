
-----------------------------------------------------------------------------------------------------

--Question - 04

/*
Write a T-SQL query to calculate the total sales (revenue) for each month across all 
regions and product categories, organized by year and month. Display the results in chronological order.
*/

-----------------------------------------------------------------------------------------------------

SELECT
    YEAR(st.SaleDate) AS SalesYear,
    MONTH(st.SaleDate) AS SalesMonth,
    DATENAME(month, st.SaleDate) AS MonthName,
    r.RegionName,
    c.CategoryName,
    SUM(st.Quantity * st.UnitPrice) AS TotalSales
FROM
    SalesTransactions st
JOIN
    Products p ON st.ProductID = p.ProductID
JOIN
    Categories c ON p.CategoryID = c.CategoryID
JOIN
    Regions r ON st.RegionID = r.RegionID
GROUP BY
    YEAR(st.SaleDate), MONTH(st.SaleDate), DATENAME(month, st.SaleDate),
    r.RegionName, c.CategoryName
ORDER BY
    YEAR(st.SaleDate), MONTH(st.SaleDate);

