#  Actors and Directors Who Cooperated At Least Three Times

**Difficulty:** Easy  
**Topics:** SQL Aggregation, GROUP BY, HAVING  
**Source:** Inspired by LeetCode SQL  

---

## Table Schema

### Table: ActorDirector

| Column Name | Type | Description |
|--------------|------|-------------|
| actor_id     | int  | ID of the actor |
| director_id  | int  | ID of the director |
| timestamp    | int  | Unique timestamp for each collaboration (primary key) |

---

## Task Description

Write an SQL query to **find all pairs of `(actor_id, director_id)`** where the actor has collaborated with the same director **at least three times**.

Return the result table in any order.

---

## Example

### Input

| actor_id | director_id | timestamp |
|-----------|--------------|-----------|
| 1         | 1            | 0         |
| 1         | 1            | 1         |
| 1         | 1            | 2         |
| 1         | 2            | 3         |
| 1         | 2            | 4         |
| 2         | 1            | 5         |
| 2         | 1            | 6         |

### Output

| actor_id | director_id |
|-----------|--------------|
| 1         | 1            |

---

## Explanation

- The pair `(1, 1)` worked together **3 times** — qualifies ✅  
- The pair `(1, 2)` worked together **2 times** — not enough ❌  
- The pair `(2, 1)` worked together **2 times** — not enough ❌  

Hence, only `(1, 1)` is included in the output.

---

## Notes

- You’ll need to use:
  - `GROUP BY actor_id, director_id`
  - `HAVING COUNT(*) >= 3`
- The order of the results does not matter.
