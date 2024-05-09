
-----------------------------------------------------------------------------------------------------

--Question - 01
/*
Write a T-SQL query to calculate the total sales revenue for each month 
and region, comparing the current month's sales with the previous month's sales.
*/
-----------------------------------------------------------------------------------------------------


SELECT
    YEAR(st.SaleDate) AS SalesYear,
    MONTH(st.SaleDate) AS SalesMonth,
    r.RegionName,
    SUM(st.Quantity * st.UnitPrice) AS TotalSales,
    ISNULL(CAST(LAG(SUM(st.Quantity * st.UnitPrice)) 
		OVER (PARTITION BY r.RegionID 
		ORDER BY YEAR(st.SaleDate), MONTH(st.SaleDate)) AS VARCHAR(255)),'No Previous Data Found') AS PreviousMonthSales
FROM
    SalesTransactions st
JOIN
    Regions r ON st.RegionID = r.RegionID
GROUP BY
    YEAR(st.SaleDate), MONTH(st.SaleDate), r.RegionName, r.RegionID
ORDER BY
    SalesYear, SalesMonth, r.RegionID;
