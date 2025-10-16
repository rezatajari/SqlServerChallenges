# Swap Salary

**Difficulty:** Easy  
**Topics:** SQL UPDATE, Conditional Logic  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to **swap all 'f' and 'm' values** in the `sex` column using a **single SQL UPDATE statement** — no intermediate tables or SELECT queries are allowed.

---

## Table Schema

### Table: Salary

| Column Name | Type    | Description |
|--------------|---------|-------------|
| id           | int     | Unique employee ID (primary key) |
| name         | varchar | Employee name |
| sex          | ENUM('m', 'f') | Employee gender |
| salary       | int     | Employee salary |

---

## Task Description

Update the `Salary` table so that:

- Every `'m'` becomes `'f'`  
- Every `'f'` becomes `'m'`

You must do this with **a single `UPDATE` statement**, **no SELECTs**, and **no temporary tables**.

---

## Example Input and Output

### Example 1

**Input:**

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |

**Output:**

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |

**Explanation:**

- Records with `'m'` were changed to `'f'`.  
- Records with `'f'` were changed to `'m'`.  
- All other data remains unchanged.

---

## Notes

- You must use **conditional logic** inside the `UPDATE` statement, such as:
  - `CASE WHEN`  
  - `IF()` (for MySQL)
- **Do not use SELECT statements** or **temporary/intermediate tables**.
- The change should be performed **in place**, directly on the `Salary` table.
