# Filtering Monthly Sales Data

## Scenario
The finance department requires a report of all sales transactions that occurred in a specific month to calculate quarterly commissions. As a backend developer, you need to retrieve specific order details from the database for the month of **June 2021**.

## Technical Requirements
- **Source Table:** `Sales.Orders`
- **Output Columns:** `orderid`, `orderdate`, `custid`, `empid`
- **Target Period:** June 1, 2021, through June 30, 2021.

## Performance & Design Considerations
While there are multiple ways to filter dates in T-SQL, this exercise focuses on **SARGability** (Search Argumentability).

### 1. Logical Query Processing
In T-SQL, the database engine processes this request in a specific order that differs from the syntax order:
1. **FROM**: The engine identifies the `Sales.Orders` table.
2. **WHERE**: The engine filters the rows based on the date range.
3. **SELECT**: The engine picks the four requested columns for the final result set.



### 2. SARGability (Index Optimization)
To ensure high performance, we avoid wrapping the `orderdate` column in functions like `MONTH()` or `YEAR()`. 
- **Inefficient:** `WHERE MONTH(orderdate) = 6` (Forces an Index Scan).
- **Efficient:** `WHERE orderdate >= '20210601' AND orderdate < '20210701'` (Enables an Index Seek).



### 3. Language-Neutral Date Literals
The solution uses the `YYYYMMDD` format. This is the safest format in SQL Server as it is not affected by regional `SET DATEFORMAT` or `SET LANGUAGE` settings, ensuring the backend code is robust across different server environments.

