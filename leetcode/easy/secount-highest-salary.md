# Second Highest Salary

**Difficulty:** Easy  
**Topics:** SQL, Aggregation, Ranking, Subqueries  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find the **second highest distinct salary** from the Employee table.  

- If there is no second highest salary (for example, only one unique salary exists), return `NULL`.  
- You should only consider **distinct** salaries; repeated salaries should count as one.

---

## Table Schema

### Table: Employee

| Column Name | Type |
|-------------|------|
| id          | int  |
| salary      | int  |

- `id` is the primary key.  
- Each row contains information about the salary of an employee.

---

## Task Description

Write a solution that returns a table with a single column:

| Column Name           | Description |
|-----------------------|-------------|
| SecondHighestSalary   | The second highest unique salary from the Employee table. Return `NULL` if it does not exist. |

---

## Example Input and Output

### Example 1

**Employee table:**

| id | salary |
|----|--------|
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |

**Output:**

| SecondHighestSalary |
|--------------------|
| 200                |

**Explanation:**  
The distinct salaries are 300, 200, 100. The second highest is 200.

---

### Example 2

**Employee table:**

| id | salary |
|----|--------|
| 1  | 100    |

**Output:**

| SecondHighestSalary |
|--------------------|
| NULL               |

**Explanation:**  
There is only one distinct salary, so there is no second highest.

---

## Notes

- Only **distinct** salaries should be considered.  
- Make sure your query handles the case when the second highest salary does not exist.  
- Think about how to sort and rank values to find the second largest.  
- This challenge can be solved using subqueries, window functions, or other SQL ranking techniques.
