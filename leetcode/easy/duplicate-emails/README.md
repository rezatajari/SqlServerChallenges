# Duplicate Emails

**Difficulty:** Easy  
**Topics:** SQL, Aggregation, Filtering, Data Cleaning  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all **duplicate emails** in the Person table.

- Each email in the table may appear one or more times.  
- You must return only the email addresses that appear **more than once**.  
- The result should not include duplicates in the output itself.  
- The order of the results does not matter.

---

## Table Schema

### Table: Person

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the primary key (unique for each row).  
- `email` contains lowercase letters only and is never `NULL`.  
- Each row represents a single person’s email address.

---

## Task Description

Return a table with one column:

| Column Name | Description |
|--------------|--------------|
| Email        | The email address that appears more than once in the Person table. |

---

## Example Input and Output

### Example

**Person table:**

| id | email   |
|----|----------|
| 1  | a@b.com  |
| 2  | c@d.com  |
| 3  | a@b.com  |

**Output:**

| Email   |
|----------|
| a@b.com  |

**Explanation:**  
The email `a@b.com` appears twice, so it should be included in the output.

---

## Notes

- The result should include each duplicated email **only once**, even if it appears multiple times.  
- Consider using grouping or aggregation to count occurrences.  
- Filtering for records with count greater than one (`> 1`) will help identify duplicates.
