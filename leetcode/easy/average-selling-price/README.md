# Average Selling Price

**Difficulty:** Medium
**Topics:** SQL, Aggregation, Joins, Date Ranges, Weighted Average
**Source:** Inspired by LeetCode SQL

---

## Challenge Goal

Your task is to calculate the **average selling price** for each product based on historical prices and units sold.

* The `Prices` table contains product prices for specific date ranges.
* The `UnitsSold` table contains sales data (product, date, and quantity sold).

Compute the **average selling price** as the **weighted average**:

average_price = Total Price of Product ÷ Total Units Sold

* Round `average_price` to **2 decimal places**.
* If a product has **no sold units**, assume its average selling price is `0`.

Return the result table in any order.

---

## Table Schema

### Table: Prices

| Column Name | Type |
| ----------- | ---- |
| product_id  | int  |
| start_date  | date |
| end_date    | date |
| price       | int  |

* `(product_id, start_date, end_date)` is the **primary key**.
* Each row indicates the price of the product in the period from `start_date` to `end_date`.
* For a given product, date periods **do not overlap**.

### Table: UnitsSold

| Column Name   | Type |
| ------------- | ---- |
| product_id    | int  |
| purchase_date | date |
| units         | int  |

* Table **may contain duplicate rows**.
* Each row indicates the number of units sold for a product on a specific date.

---

## Task Description

Return a table with the following columns:

| Column Name   | Description                             |
| ------------- | --------------------------------------- |
| product_id    | Product ID                              |
| average_price | Weighted average selling price (2 d.p.) |

Requirements:

* Compute a **weighted average** of price × units sold for each product.
* If a product has no sales, set `average_price = 0`.
* Output may be returned in any order.

---

## Example Input and Output

### Input

**Prices table:**

| product_id | start_date | end_date   | price |
| ---------- | ---------- | ---------- | ----- |
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |

**UnitsSold table:**

| product_id | purchase_date | units |
| ---------- | ------------- | ----- |
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |

---

### Output

| product_id | average_price |
| ---------- | ------------- |
| 1          | 6.96          |
| 2          | 16.96         |

---

### Explanation

* **Product 1**:
  Total price = (100 × 5) + (15 × 20) = 500 + 300 = 800
  Total units = 100 + 15 = 115
  Average price = 800 ÷ 115 ≈ 6.96

* **Product 2**:
  Total price = (200 × 15) + (30 × 30) = 3000 + 900 = 3900
  Total units = 200 + 30 = 230
  Average price = 3900 ÷ 230 ≈ 16.96

* Weighted average ensures each sale is properly accounted for according to its quantity.

---

## Notes

* This problem tests **weighted aggregation**, **date range joins**, and **handling missing sales**.
* Ensure proper rounding to **2 decimal places**.
* Products with no sales must return **0** as their average price.
