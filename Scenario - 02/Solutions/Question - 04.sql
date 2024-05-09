
-----------------------------------------------------------------------------------------------------

--Question - 04

/*
Write a T-SQL query to identify customers who have made purchases in multiple
product categories and determine their purchase diversity.
*/

-----------------------------------------------------------------------------------------------------

SELECT
    st.CustomerID, 
	cs.CustomerName,
    COUNT(DISTINCT c.CategoryName) AS UniqueCategoryCount
FROM
    SalesTransactions st
JOIN
	Customers cs ON st.CustomerID = cs.CustomerID
JOIN
    Products p ON st.ProductID = p.ProductID
JOIN
    Categories c ON p.CategoryID = c.CategoryID
GROUP BY
    st.CustomerID, cs.CustomerName
HAVING 
	COUNT(DISTINCT c.CategoryName) > 1
ORDER BY 
	UniqueCategoryCount DESC

