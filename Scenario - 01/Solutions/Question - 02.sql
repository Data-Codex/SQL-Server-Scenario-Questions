
-----------------------------------------------------------------------------------------------------

--Question - 02

--Calculate the total sales (revenue) for each product category.

-----------------------------------------------------------------------------------------------------

SELECT
    c.CategoryName,
    SUM(st.Quantity * st.UnitPrice) AS TotalSales
FROM
    SalesTransactions st
JOIN
    Products p ON st.ProductID = p.ProductID
JOIN
    Categories c ON p.CategoryID = c.CategoryID
GROUP BY
    c.CategoryName;