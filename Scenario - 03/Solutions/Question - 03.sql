
-----------------------------------------------------------------------------------------------------

--Question - 03

/*
Write a T-SQL query to calculate the remaining inventory quantity
for each product category after deducting total sales quantities.
*/

-----------------------------------------------------------------------------------------------------

SELECT
    c.CategoryName,
    SUM(p.InventoryQuantity) AS InitialInventory,
    SUM(st.Quantity) AS TotalSalesQuantity,
    SUM(p.InventoryQuantity) - SUM(st.Quantity) AS RemainingInventory
FROM
    Products p
JOIN
    Categories c ON p.CategoryID = c.CategoryID
LEFT JOIN
    SalesTransactions st ON p.ProductID = st.ProductID
GROUP BY
    c.CategoryName
ORDER BY
    RemainingInventory DESC;
