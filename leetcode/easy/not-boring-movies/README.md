# Not Boring Movies

**Difficulty:** Easy  
**Topics:** SQL Filtering, Sorting, WHERE Clauses  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all **movies** that meet the following conditions:

1. The movie’s `id` is **odd-numbered**.  
2. The movie’s `description` is **not "boring"**.  

Return the result table **ordered by `rating` in descending order**.

---

## Table Schema

### Table: Cinema

| Column Name | Type    | Description |
|--------------|---------|-------------|
| id           | int     | Unique movie identifier (primary key) |
| movie        | varchar | Name of the movie |
| description  | varchar | Short description or genre |
| rating       | float   | Rating from 0 to 10 (2 decimal places) |

---

## Task Description

Return all columns (`id`, `movie`, `description`, `rating`) for movies that satisfy:

- `id` is **odd** (e.g., 1, 3, 5, …).  
- `description` is **not equal to "boring"** (case-sensitive comparison).  

Sort the results by **`rating` in descending order** (highest-rated first).

---

## Example Input and Output

### Example 1

**Input:**

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | irish      | boring      | 6.2    |
| 4  | Ice song   | Fantacy     | 8.6    |
| 5  | House card | Interesting | 9.1    |

**Output:**

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |

**Explanation:**  
- Movies with **odd IDs** are `1`, `3`, and `5`.  
- Movie `3` has a description `"boring"`, so it’s excluded.  
- The remaining movies (`1` and `5`) are sorted by rating from **highest to lowest**.

---

## Notes

- Use the **modulus operator (`%`)** to check for odd IDs (`id % 2 = 1`).  
- Use a **WHERE clause** to filter out `"boring"` descriptions.  
- Apply **ORDER BY rating DESC** to sort results.  
- Case sensitivity may depend on your SQL collation settings — ensure `"boring"` matches exactly.
```
