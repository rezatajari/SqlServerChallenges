# Employees Earning More Than Their Managers

**Difficulty:** Easy  
**Topics:** SQL Joins, Self Join  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all employees who earn **more than their managers**.  

Each employee has a salary and a manager (who is also listed in the same table). You need to compare each employee’s salary with the salary of their manager and return the names of the employees who earn more.

---

## Table Schema

### Table: Employee

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |

- `id` is the primary key.  
- `managerId` refers to the `id` of another employee in the same table (can be NULL if the employee has no manager).  

---

## Task Description

Write an SQL query that returns:

| Column Name | Description |
|-------------|-------------|
| Employee    | The name of the employee whose salary is greater than their manager's salary |

The result can be returned in any order.

---

## Example Input and Output

### Input

**Employee**

| id | name  | salary | managerId |
|----|-------|--------|-----------|
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |

---

### Output

| Employee |
|----------|
| Joe      |

---

### Explanation

- Joe’s manager is Sam, whose salary is 60000. Joe earns 70000 → qualifies.  
- Henry’s manager is Max, whose salary is 90000. Henry earns 80000 → does not qualify.  
- Sam and Max have no managers → not considered.

---

## Hints

- You need to compare each employee to their manager in the **same table**, so consider using a **self join**.  
- Join the table on `employee.managerId = manager.id` to pair employees with their managers.  
- Then filter where `employee.salary > manager.salary`.

---

## Suggested Topics to Review

- SQL joins (INNER JOIN, LEFT JOIN)  
- Self joins  
- Handling NULL values in joins  
```
