--PIVOT
SELECT  Category, [2019],[2020],[2021]
FROM  ( SELECT  Category, Qty, Orderyear FROM Sales.CategoryQtyYear) AS D 
PIVOT(SUM(qty) FOR orderyear IN ([2019],[2020],[2021])) AS pvt;

--UNPIVOT
SELECT category, qty, orderyear
FROM Sales.PivotedCategorySales
UNPIVOT(qty FOR orderyear IN([2019],[2020],[2021])) AS unpvt;