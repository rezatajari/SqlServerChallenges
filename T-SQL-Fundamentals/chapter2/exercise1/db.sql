SELECT orderid, orderdate, custid, empid 
FROM Sales.Orders 
WHERE orderdate >= '20210601' 
  AND orderdate < '20210701';