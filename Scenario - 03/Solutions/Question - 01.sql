
-----------------------------------------------------------------------------------------------------

--Question - 01
/*
Write a T-SQL query to analyze customer Orders distribution across different
regions and determine the number of unique customers order per region.
*/
-----------------------------------------------------------------------------------------------------


SELECT
    r.RegionName,
    COUNT(DISTINCT c.CustomerID) AS UniqueCustomersCount
FROM
    Regions r
LEFT JOIN
    SalesTransactions st ON r.RegionID = st.RegionID
LEFT JOIN
    Customers c ON st.CustomerID = c.CustomerID
GROUP BY
    r.RegionName
ORDER BY
    UniqueCustomersCount DESC;

