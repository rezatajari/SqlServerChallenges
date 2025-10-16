# Customer Placing the Largest Number of Orders

**Difficulty:** Easy  
**Topics:** SQL, Aggregation, Grouping, Counting  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find the **customer_number** of the customer who has placed the **largest number of orders**.

- Each order in the table belongs to one customer.  
- You must return the customer who has made **more orders than any other**.  
- The problem guarantees that there will always be exactly one such customer.

---

## Table Schema

### Table: Orders

| Column Name     | Type |
|-----------------|------|
| order_number    | int  |
| customer_number | int  |

- `order_number` is the **primary key** (each order is unique).  
- `customer_number` represents the customer who placed that order.  

---

## Task Description

Return a table with the following column:

| Column Name     | Description |
|-----------------|--------------|
| customer_number | The ID of the customer with the most orders. |

---

## Example Input and Output

### Example

**Orders table:**

| order_number | customer_number |
|---------------|----------------|
| 1             | 1              |
| 2             | 2              |
| 3             | 3              |
| 4             | 3              |

**Output:**

| customer_number |
|-----------------|
| 3               |

**Explanation:**  
Customer **3** placed **2 orders**, while customers **1** and **2** each placed **only 1 order**.  
Therefore, the output is `3`.

---

## Notes

- Use **GROUP BY** to count orders per customer.  
- Use **ORDER BY** or a **subquery** to select the customer with the highest count.  
- You do **not** need to handle ties — there will always be one customer with the most orders.
