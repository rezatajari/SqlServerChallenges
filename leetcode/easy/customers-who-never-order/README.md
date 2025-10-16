# Customers Who Never Order

**Difficulty:** Easy  
**Topics:** SQL, Joins, Subqueries, Filtering  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all **customers who never placed any orders**.  

- Each customer may have zero or more orders.  
- Return the names of customers who **do not appear in the Orders table**.  
- The order of the results does not matter.

---

## Table Schemas

### Table: Customers

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key (unique for each customer).  
- Each row represents a single customer with a unique name and ID.

### Table: Orders

| Column Name | Type |
|-------------|------|
| id          | int  |
| customerId  | int  |

- `id` is the primary key for each order.  
- `customerId` is a foreign key referencing `Customers.id`.  
- Each row represents an order placed by a customer.

---

## Task Description

Return a table with one column:

| Column Name | Description |
|-------------|-------------|
| Customers   | The name of a customer who never placed any order |

---

## Example Input and Output

### Input

**Customers table:**

| id | name  |
|----|-------|
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |

**Orders table:**

| id | customerId |
|----|------------|
| 1  | 3          |
| 2  | 1          |

### Output

| Customers |
|-----------|
| Henry     |
| Max       |

**Explanation:**  
- Joe and Sam have orders, so they are excluded.  
- Henry and Max never placed any order, so their names are included in the result.

---

## Notes

- You may solve this using **LEFT JOIN** with a filter for `NULL` orders, or using a **subquery** with `NOT IN`.  
- Ensure all customers with **no matching order** are returned.  
- The order of the output does not matter.
