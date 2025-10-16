# Product Sales Analysis

**Difficulty:** Easy  
**Topics:** SQL Joins, Foreign Keys, SELECT Queries  
**Source:** Inspired by LeetCode SQL  

---

## Table Schemas

### Table: Sales

| Column Name | Type | Description |
|--------------|------|-------------|
| sale_id      | int  | Unique sale identifier (part of the primary key) |
| product_id   | int  | References product_id from the Product table |
| year         | int  | The year in which the sale occurred |
| quantity     | int  | Quantity of the product sold |
| price        | int  | Price per unit of the product |

**Primary Key:** `(sale_id, year)`  
**Foreign Key:** `product_id` → `Product.product_id`

---

### Table: Product

| Column Name  | Type    | Description |
|---------------|---------|-------------|
| product_id    | int     | Unique product identifier |
| product_name  | varchar | Name of the product |

**Primary Key:** `product_id`

---

## Task Description

Write an SQL query to **report the product name, year, and price** for each sale in the `Sales` table.

Return the result table in **any order**.

---

## Example

### Input

#### Sales Table

| sale_id | product_id | year | quantity | price |
|----------|-------------|------|-----------|--------|
| 1        | 100         | 2008 | 10        | 5000   |
| 2        | 100         | 2009 | 12        | 5000   |
| 7        | 200         | 2011 | 15        | 9000   |

#### Product Table

| product_id | product_name |
|-------------|--------------|
| 100         | Nokia        |
| 200         | Apple        |
| 300         | Samsung      |

---

### Output

| product_name | year | price |
|---------------|------|-------|
| Nokia         | 2008 | 5000  |
| Nokia         | 2009 | 5000  |
| Apple         | 2011 | 9000  |

---

## Explanation

- For `sale_id = 1`, `product_id = 100` → **Nokia**, sold in **2008** for **5000**.  
- For `sale_id = 2`, `product_id = 100` → **Nokia**, sold in **2009** for **5000**.  
- For `sale_id = 7`, `product_id = 200` → **Apple**, sold in **2011** for **9000**.

---

## Notes

- You’ll need to perform a **JOIN** between the `Sales` and `Product` tables using `product_id`.  
- The `quantity` column is not needed in the output.
