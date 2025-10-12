# Joins

This folder contains SQL Server exercises focused on **joining tables** to retrieve related data.  
You will practice **INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN** to understand how tables can be combined based on matching columns.

The goal is to **reinforce practical understanding of table relationships** and how to query data across multiple tables.

---

## Included Exercises

- **inner-join.sql** – Learn how to retrieve only the rows that have matching values in both tables.  
  - Example: Combine `Employee` and `People` tables based on `nationalcode` to show common records.  
  - Key concept: Only rows with matching keys in both tables are returned.

- **left-right-full-join.sql** – Learn how to retrieve all rows from one or both tables, with matching data where available.  
  - **LEFT JOIN:** All rows from the left table (`Employee`) and matching rows from the right table (`People`).  
  - **RIGHT JOIN:** All rows from the right table (`People`) and matching rows from the left table (`Employee`).  
  - **FULL JOIN:** All rows from both tables, with matches where available.  

---

## How to Use

1. Open SQL Server Management Studio (SSMS) or another SQL client.  
2. Navigate to this folder and open a `.sql` file.  
3. Execute the `INSERT` statements first to populate the tables with sample data.  
4. Run the JOIN queries to observe the output and how rows are matched.  
5. Experiment by:  
   - Adding more rows to the tables,  
   - Joining on different columns,  
   - Using different types of JOINs to see how the results change.

---

## Tips for Learning

- Always inspect the tables (`SELECT *`) before joining to understand the data.  
- Use **INNER JOIN** when you want only common rows.  
- Use **LEFT JOIN** or **RIGHT JOIN** to keep all rows from one table, even if there’s no match.  
- Use **FULL JOIN** to see all possible rows from both tables.  
- Experiment with multiple columns in the `ON` condition for complex relationships.
