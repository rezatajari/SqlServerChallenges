# Sales Person

**Difficulty:** Medium  
**Topics:** SQL, Joins, Filtering, Subqueries  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find the **names of all salespersons** who did **not** have any orders related to the company named **"RED"**.

- Each salesperson may have zero or more orders in the `Orders` table.  
- Only include salespersons who **have no orders linked to the company "RED"**.  
- The order of results does not matter.

---

## Table Schemas

### Table: SalesPerson

| Column Name     | Type    |
|-----------------|---------|
| sales_id        | int     |
| name            | varchar |
| salary          | int     |
| commission_rate | int     |
| hire_date       | date    |

- `sales_id` is the **primary key**.  
- Each row represents a salesperson and their details.

### Table: Company

| Column Name | Type    |
|-------------|---------|
| com_id      | int     |
| name        | varchar |
| city        | varchar |

- `com_id` is the **primary key**.  
- Each row represents a company and its city.

### Table: Orders

| Column Name | Type |
|-------------|------|
| order_id    | int  |
| order_date  | date |
| com_id      | int  |
| sales_id    | int  |
| amount      | int  |

- `order_id` is the primary key.  
- `com_id` references `Company(com_id)`.  
- `sales_id` references `SalesPerson(sales_id)`.  
- Each row represents an order placed by a salesperson for a company.

---

## Task Description

Return a table with one column:

| Column Name | Description |
|-------------|-------------|
| name        | The name of a salesperson with no orders linked to company "RED" |

---

## Example Input and Output

### Input

**SalesPerson table:**

| sales_id | name | salary | commission_rate | hire_date  |
|----------|------|--------|-----------------|------------|
| 1        | John | 100000 | 6               | 4/1/2006   |
| 2        | Amy  | 12000  | 5               | 5/1/2010   |
| 3        | Mark | 65000  | 12              | 12/25/2008 |
| 4        | Pam  | 25000  | 25              | 1/1/2005   |
| 5        | Alex | 5000   | 10              | 2/3/2007   |

**Company table:**

| com_id | name   | city     |
|--------|--------|----------|
| 1      | RED    | Boston   |
| 2      | ORANGE | New York |
| 3      | YELLOW | Boston   |
| 4      | GREEN  | Austin   |

**Orders table:**

| order_id | order_date | com_id | sales_id | amount |
|----------|------------|--------|----------|--------|
| 1        | 1/1/2014   | 3      | 4        | 10000  |
| 2        | 2/1/2014   | 4      | 5        | 5000   |
| 3        | 3/1/2014   | 1      | 1        | 50000  |
| 4        | 4/1/2014   | 1      | 4        | 25000  |

### Output

| name |
|------|
| Amy  |
| Mark |
| Alex |

**Explanation:**  
- John and Pam have orders associated with company "RED".  
- Amy, Mark, and Alex do not have any orders linked to "RED", so they are included.

---

## Notes

- You can solve this using a **LEFT JOIN** combined with a filter for `NULL` values.  
- Alternatively, a **subquery with NOT IN** or `NOT EXISTS` can identify salespersons without orders for "RED".  
- The result should include **all salespersons who never sold to RED**, regardless of their other orders.
