# Delete Duplicate Emails

**Difficulty:** Medium  
**Topics:** SQL, DELETE, Subqueries, Data Cleaning  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to **delete all duplicate emails** in the Person table, keeping **only one unique email** with the **smallest `id`**.  

- After deletion, each email should appear only once.  
- The row that remains for each duplicate email should be the one with the **smallest `id`**.  
- The final order of the table does not matter.

---

## Table Schema

### Table: Person

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the primary key.  
- Each row contains a single email address.  
- Emails do **not** contain uppercase letters.

---

## Task Description

- For **SQL users**: Write a `DELETE` statement to remove duplicates.  
- For **Pandas users**: Modify the `Person` table in place to remove duplicates.  

After running your solution, the remaining rows should form the final state of the `Person` table with **unique emails only**.

---

## Example Input and Output

### Input

**Person table:**

| id | email            |
|----|-----------------|
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |

### Output

| id | email            |
|----|-----------------|
| 1  | john@example.com |
| 2  | bob@example.com  |

**Explanation:**  
- `john@example.com` appears twice.  
- The row with the smaller `id` (`id = 1`) is kept.  
- The duplicate with `id = 3` is removed.

---

## Notes

- Make sure only **one row per email** remains.  
- For SQL, use subqueries or ranking functions to identify duplicates before deletion.  
- For Pandas, methods like `.drop_duplicates()` with `keep='first'` can be used.  
- The final table’s order does not matter.
