Create table #Orders (
order_number int primary key,
customer_number int)

insert into #Orders 
(order_number,customer_number)
values
(1,1),
(2,2),
(3,3),
(4,3)

SELECT TOP 1 customer_number
FROM #Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC;
