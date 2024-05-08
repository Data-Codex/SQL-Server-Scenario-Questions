
-----------------------------------------------------------------------------------------------------

--Question - 03

/*
Write a T-SQL query to find the top 3 loyal customers based on the total amount spent (revenue)
across all transactions. For each of these top customers, determine their most frequently purchased product category.
*/

-----------------------------------------------------------------------------------------------------

WITH CustomerSpending AS (
    SELECT
        c.CustomerID,
        c.CustomerName,
        SUM(st.Quantity * st.UnitPrice) AS TotalAmountSpent,
        DENSE_RANK() OVER (ORDER BY SUM(st.Quantity * st.UnitPrice) DESC) AS Rankvalue
    FROM
        SalesTransactions st
    JOIN
        Customers c ON st.CustomerID = c.CustomerID
    GROUP BY
        c.CustomerID, c.CustomerName
)

SELECT TOP 3
    cs.CustomerName AS LoyalCustomer,
    cs.TotalAmountSpent AS TotalSpending,
    c.CategoryName AS PreferredProductCategory
FROM
    CustomerSpending cs
JOIN
    SalesTransactions st ON cs.CustomerID = st.CustomerID
JOIN
    Products p ON st.ProductID = p.ProductID
JOIN
    Categories c ON p.CategoryID = c.CategoryID
WHERE cs.Rankvalue <= 3
GROUP BY
    cs.CustomerName, cs.TotalAmountSpent, c.CategoryName
ORDER BY
    cs.TotalAmountSpent DESC;
