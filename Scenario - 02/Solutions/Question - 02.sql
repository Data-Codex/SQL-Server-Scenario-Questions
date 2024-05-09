
-----------------------------------------------------------------------------------------------------

--Question - 02

--Write a T-SQL query to calculate the percentage of total sales revenue contributed by each product category.

-----------------------------------------------------------------------------------------------------


SELECT
    c.CategoryName,
    SUM(st.Quantity * st.UnitPrice) AS CategorySales,
    SUM(st.Quantity * st.UnitPrice) / SUM(SUM(st.Quantity * st.UnitPrice)) OVER () * 100 AS CategoryContributionPercentage
FROM
    SalesTransactions st
JOIN
    Products p ON st.ProductID = p.ProductID
JOIN
    Categories c ON p.CategoryID = c.CategoryID
GROUP BY
    c.CategoryName
ORDER BY
    CategorySales DESC;