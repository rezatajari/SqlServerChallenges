# Biggest Single Number

**Difficulty:** Easy  
**Topics:** SQL, Aggregation, Filtering, MAX Function  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find the **largest single number** in the `MyNumbers` table.

A **single number** is defined as a number that appears **only once** in the table.

If there are **no single numbers**, return `null`.

---

## Table Schema

### Table: MyNumbers

| Column Name | Type |
|--------------|------|
| num          | int  |

- This table **may contain duplicates**.  
- There is **no primary key**.  
- Each row contains one integer.

---

## Task Description

Return a table with one column:

| Column Name | Description |
|--------------|-------------|
| num          | The largest number that appears exactly once. Returns `null` if no single number exists. |

---

## Example Input and Output

### Example 1

**Input:**

| num |
|-----|
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

**Output:**

| num |
|-----|
| 6   |

**Explanation:**  
The single numbers are `1, 4, 5, 6`.  
Among them, the largest is `6`.

---

### Example 2

**Input:**

| num |
|-----|
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |

**Output:**

| num  |
|------|
| null |

**Explanation:**  
All numbers occur more than once, so there are **no single numbers**.  
In this case, the result should be `null`.

---

## Notes

- Use **GROUP BY** on the `num` column to count how many times each number appears.  
- Use **HAVING COUNT(num) = 1** to filter only single numbers.  
- Apply the **MAX()** function to find the largest of these single numbers.  
- If there are no single numbers, ensure the query returns `null`.
