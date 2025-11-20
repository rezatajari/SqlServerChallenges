# Sales Analysis III

**Difficulty:** Medium  
**Topics:** SQL, Date Filtering, Aggregation, Conditional Logic  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all **products that were sold exclusively in the first quarter (Q1) of 2019**.

Q1 2019 covers the date range:

- **Start:** 2019-01-01  
- **End:** 2019-03-31  

A product qualifies **only if**:
- It has **at least one sale** in Q1 2019, and  
- It has **no sales** outside Q1 2019.

---

## Table Schemas

### Table: Product

| Column Name  | Type    |
|---------------|---------|
| product_id    | int     |
| product_name  | varchar |
| unit_price    | int     |

- `product_id` is the **primary key**.

### Table: Sales

| Column Name | Type    |
|-------------|---------|
| seller_id   | int     |
| product_id  | int     |
| buyer_id    | int     |
| sale_date   | date    |
| quantity    | int     |
| price       | int     |

- `product_id` is a **foreign key** referencing `Product.product_id`.  
- This table **may contain duplicate rows**.  
- Each row represents one sale transaction.

---

## Task Description

Return a table with:

| Column Name | Description |
|-------------|-------------|
| product_id  | ID of the product |
| product_name | Name of the product |

Include only the products that were **sold exclusively during Q1 2019**.

---

## Example Input and Output

### Input

#### Product Table:

| product_id | product_name | unit_price |
|------------|---------------|------------|
| 1          | S8            | 1000       |
| 2          | G4            | 800        |
| 3          | iPhone        | 1400       |

#### Sales Table:

| seller_id | product_id | buyer_id | sale_date  | quantity | price |
|-----------|------------|----------|------------|----------|-------|
| 1         | 1          | 1        | 2019-01-21 | 2        | 2000  |
| 1         | 2          | 2        | 2019-02-17 | 1        | 800   |
| 2         | 2          | 3        | 2019-06-02 | 1        | 800   |
| 3         | 3          | 4        | 2019-05-13 | 2        | 2800  |

### Output

| product_id | product_name |
|------------|--------------|
| 1          | S8           |

### Explanation

- Product **1 (S8)** → Sold **only** in Q1 2019 → **Included**  
- Product **2 (G4)** → Sold in Q1 2019 **and also in June 2019** → **Excluded**  
- Product **3 (iPhone)** → Sold only **after** Q1 2019 → **Excluded**

---