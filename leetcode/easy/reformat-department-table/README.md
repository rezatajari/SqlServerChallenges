# Reformat Department Table

**Difficulty:** Medium  
**Topics:** SQL, Pivoting, Aggregation, Conditional Logic  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to **reformat the Department table** so that each department has a single row with revenue columns for each month.

The input table has **one row per department per month**, with the columns:

- `id` → department ID  
- `revenue` → revenue for that month  
- `month` → month name (`"Jan"` to `"Dec"`)

The output table should have:

- One row per department (`id`)  
- One column for each month’s revenue, named `<Month>_Revenue` (e.g., `Jan_Revenue`)  
- `NULL` for months with no revenue data

---

## Table Schema

### Table: Department

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| revenue     | int     |
| month       | varchar |

- `(id, month)` is the **primary key**.  
- Each row represents a department’s revenue in a specific month.  
- Month values are in: `["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]`.

---

## Task Description

Return a table with the following structure:

| Column Name | Description |
|-------------|-------------|
| id          | Department ID |
| Jan_Revenue | Revenue in January |
| Feb_Revenue | Revenue in February |
| Mar_Revenue | Revenue in March |
| ...         | ... |
| Dec_Revenue | Revenue in December |

Requirements:

- If there is no revenue for a particular month, the corresponding column should be `NULL`.  
- Include **all 12 months** in the output.  
- The order of rows does not matter.

---

## Example Input and Output

### Input

**Department table:**

| id | revenue | month |
|----|---------|-------|
| 1  | 8000    | Jan   |
| 2  | 9000    | Jan   |
| 3  | 10000   | Feb   |
| 1  | 7000    | Feb   |
| 1  | 6000    | Mar   |

### Output

| id | Jan_Revenue | Feb_Revenue | Mar_Revenue | Apr_Revenue | ... | Dec_Revenue |
|----|-------------|-------------|-------------|-------------|-----|-------------|
| 1  | 8000        | 7000        | 6000        | NULL        | ... | NULL        |
| 2  | 9000        | NULL        | NULL        | NULL        | ... | NULL        |
| 3  | NULL        | 10000       | NULL        | NULL        | ... | NULL        |

### Explanation

- Revenue from months without data (e.g., Apr–Dec) is `NULL`.  
- The result table has **13 columns**: 1 for the department ID + 12 for each month’s revenue.

---

## Notes

- This is essentially a **pivot operation** in SQL.  
- Ensure that each department has **exactly one row**.  
- The output does not require ordering of departments.  

---
