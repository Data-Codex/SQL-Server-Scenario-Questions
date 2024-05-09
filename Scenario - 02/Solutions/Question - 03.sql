
-----------------------------------------------------------------------------------------------------

--Question - 03

/*
Write a T-SQL query to calculate the total sales amount for each 
product category based on seasons (Spring, Summer, Fall, Winter)
*/

-----------------------------------------------------------------------------------------------------

SELECT
    CASE
        WHEN MONTH(st.SaleDate) IN (3, 4, 5) THEN 'Spring'
        WHEN MONTH(st.SaleDate) IN (6, 7, 8) THEN 'Summer'
        WHEN MONTH(st.SaleDate) IN (9, 10, 11) THEN 'Fall'
        WHEN MONTH(st.SaleDate) IN (12, 1, 2) THEN 'Winter'
    END AS Season,
    c.CategoryName AS TopSellingCategory,
    SUM(st.Quantity * st.UnitPrice) AS SeasonalSales
FROM
    SalesTransactions st
JOIN
    Products p ON st.ProductID = p.ProductID
JOIN
    Categories c ON p.CategoryID = c.CategoryID
GROUP BY
    CASE
        WHEN MONTH(st.SaleDate) IN (3, 4, 5) THEN 'Spring'
        WHEN MONTH(st.SaleDate) IN (6, 7, 8) THEN 'Summer'
        WHEN MONTH(st.SaleDate) IN (9, 10, 11) THEN 'Fall'
        WHEN MONTH(st.SaleDate) IN (12, 1, 2) THEN 'Winter'
    END,
    c.CategoryName
ORDER BY
    Season, SeasonalSales DESC;