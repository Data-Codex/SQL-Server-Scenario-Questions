
-----------------------------------------------------------------------------------------------------

--Question - 03

/*
Write a T-SQL query to calculate the total number of purchases and average
spending per customer for each product category highest to lowest.
*/

-----------------------------------------------------------------------------------------------------

SELECT
    c.CategoryName,
    COUNT(*) AS TotalPurchases,
    COUNT(DISTINCT st.CustomerID) AS UniqueCustomers,
    AVG(st.UnitPrice * st.Quantity) AS AverageSpendingPerCustomer
FROM
    Categories c
JOIN
    Products p ON c.CategoryID = p.CategoryID
JOIN
    SalesTransactions st ON p.ProductID = st.ProductID
GROUP BY
    c.CategoryName
ORDER BY
    TotalPurchases DESC;
