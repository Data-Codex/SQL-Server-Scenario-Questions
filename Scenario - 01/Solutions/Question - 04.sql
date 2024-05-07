
-----------------------------------------------------------------------------------------------------

--Question - 04

/*
Write a T-SQL query to calculate the total sales (revenue) for each month across all 
regions organized by year and month. Display the results in chronological order.
*/

-----------------------------------------------------------------------------------------------------

SELECT
    YEAR(st.SaleDate) AS SalesYear,
    MONTH(st.SaleDate) AS SalesMonth,
    DATENAME(month, st.SaleDate) AS MonthName,
    SUM(st.Quantity * st.UnitPrice) AS TotalSales
FROM
    SalesTransactions st
GROUP BY
    YEAR(st.SaleDate), MONTH(st.SaleDate), DATENAME(month, st.SaleDate)
ORDER BY
    YEAR(st.SaleDate), MONTH(st.SaleDate);
