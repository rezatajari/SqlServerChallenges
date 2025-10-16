# Triangle Judgement

**Difficulty:** Easy  
**Topics:** SQL, Conditional Logic, Geometry  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to determine whether three given line segments can form a valid triangle.

A **triangle is valid** if and only if the **sum of any two sides** is **greater than the third side**.  
Mathematically, for sides `x`, `y`, and `z`, the following conditions must all be true:

- `x + y > z`
- `x + z > y`
- `y + z > x`

If these conditions are satisfied, the result should be `"Yes"`, otherwise `"No"`.

---

## Table Schema

### Table: Triangle

| Column Name | Type |
|--------------|------|
| x            | int  |
| y            | int  |
| z            | int  |

- `(x, y, z)` is the **primary key**.  
- Each row represents the lengths of three line segments.

---

## Task Description

Return a table with the following columns:

| Column Name | Description |
|--------------|-------------|
| x            | Length of the first side |
| y            | Length of the second side |
| z            | Length of the third side |
| triangle     | `"Yes"` if the three sides can form a triangle, otherwise `"No"` |

---

## Example Input and Output

### Input

**Triangle table:**

| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 15 |

### Output

| x  | y  | z  | triangle |
|----|----|----|-----------|
| 13 | 15 | 30 | No        |
| 10 | 20 | 15 | Yes       |

**Explanation:**  
- For the first row (13, 15, 30): `13 + 15 = 28`, which is **not greater than** 30 → **No**  
- For the second row (10, 20, 15): all three conditions hold → **Yes**

---

## Notes

- Use a **CASE WHEN** statement to check the triangle conditions.  
- Remember: all three inequalities must hold true.  
- Return `"Yes"` or `"No"` based on whether the three sides can form a valid triangle.
