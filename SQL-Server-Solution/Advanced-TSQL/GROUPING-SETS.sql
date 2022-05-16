SELECT <column list with aggregate(s)>
FROM <source>
GROUP BY 
GROUPING SETS(
    (<column_name>),--one or more columns
    (<column_name>),--one or more columns
    () -- empty parentheses if aggregating all rows
        );

SELECT Category, Cust, SUM(Qty) AS TotalQty
FROM Sales.CategorySales
GROUP BY 
    GROUPING SETS((Category),(Cust),())
ORDER BY Category, Cust;