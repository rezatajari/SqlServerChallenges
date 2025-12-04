# Queries Quality and Percentage

**Difficulty:** Medium
**Topics:** SQL, Aggregation, Grouping, Ratios, Conditional Logic
**Source:** Inspired by LeetCode SQL

---

## Challenge Goal

Your task is to calculate two analytical metrics for each query:

1. **Query Quality**
   The average of `(rating / position)` for a given `query_name`.

2. **Poor Query Percentage**
   The percentage of queries where `rating < 3`.

You must return both metrics **rounded to 2 decimal places**, grouped by `query_name`.

---

## Table Schema

### Table: Queries

| Column Name | Type    |
| ----------- | ------- |
| query_name  | varchar |
| result      | varchar |
| position    | int     |
| rating      | int     |

Additional details:

* Table **may contain duplicate rows**.
* `position` ranges from **1 to 500**.
* `rating` ranges from **1 to 5**.
* A query is considered **poor** if `rating < 3`.

---

## Task Description

For each unique `query_name`, calculate:

| Column Name           | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| query_name            | Name of the query                                            |
| quality               | Average of (rating / position), rounded to 2 decimals        |
| poor_query_percentage | Percentage of queries with rating < 3, rounded to 2 decimals |

### Requirements

* Use **grouping** by `query_name`.
* Apply **CASE expressions** to count poor queries.
* Compute the **ratio** (rating ÷ position) and average it.
* Consider all rows (even duplicates).
* Output may be returned in any order.

---

## Example Input and Output

### Input

**Queries table:**

| query_name | result           | position | rating |
| ---------- | ---------------- | -------- | ------ |
| Dog        | Golden Retriever | 1        | 5      |
| Dog        | German Shepherd  | 2        | 5      |
| Dog        | Mule             | 200      | 1      |
| Cat        | Shirazi          | 5        | 2      |
| Cat        | Siamese          | 3        | 3      |
| Cat        | Sphynx           | 7        | 4      |

---

### Output

| query_name | quality | poor_query_percentage |
| ---------- | ------- | --------------------- |
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |

---

### Explanation

#### **Dog**

* Quality =
  [
  \frac{(5/1) + (5/2) + (1/200)}{3} = 2.50
  ]
* Poor queries = 1 out of 3
  [
  \frac{1}{3} \times 100 = 33.33
  ]

#### **Cat**

* Quality =
  [
  \frac{(2/5) + (3/3) + (4/7)}{3} = 0.66
  ]
* Poor queries = 1 out of 3
  [
  33.33
  ]

---

## Notes

* This problem tests **analytical SQL**, not simple filtering.
* It requires calculating ratios, averages, and conditional percentages.
* Be careful with rounding — both metrics require **2 decimal places**.
