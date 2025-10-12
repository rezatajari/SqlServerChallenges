# Combine Two Tables

**Difficulty:** Easy  
**Topics:** SQL Joins, Data Combination  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to combine two tables — `Person` and `Address` — and display a list of **first name, last name, city, and state** for every person.

If a person does not have an address in the `Address` table, their city and state should appear as `NULL`.

---

## Table Schemas

### Table: Person

| Column Name | Type    |
|--------------|---------|
| personId     | int     |
| lastName     | varchar |
| firstName    | varchar |

- `personId` is the primary key (unique for each person).  
- Contains basic information about each individual.

---

### Table: Address

| Column Name | Type    |
|--------------|---------|
| addressId    | int     |
| personId     | int     |
| city         | varchar |
| state        | varchar |

- `addressId` is the primary key.  
- `personId` references the person from the `Person` table.  
- Contains city and state information.

---

## Task Description

Write an SQL query that returns:

| Column Name | Description |
|--------------|-------------|
| firstName | Person’s first name |
| lastName | Person’s last name |
| city | City name from the Address table (NULL if no address) |
| state | State name from the Address table (NULL if no address) |

The result can be returned in any order.

---

## Example Input and Output

### Input

**Person**

| personId | lastName | firstName |
|-----------|-----------|-----------|
| 1 | Wang | Allen |
| 2 | Alice | Bob |

**Address**

| addressId | personId | city | state |
|------------|-----------|----------------|-------------|
| 1 | 2 | New York City | New York |
| 2 | 3 | Leetcode | California |

---

### Output

| firstName | lastName | city | state |
|------------|-----------|----------------|-------------|
| Allen | Wang | Null | Null |
| Bob | Alice | New York City | New York |

---

### Explanation

- The person **Allen Wang** (`personId = 1`) has no matching address, so `city` and `state` are `NULL`.  
- The person **Bob Alice** (`personId = 2`) has an address in New York City.

---

## Hints

- Consider which type of SQL join includes all rows from one table even if there is no match in the other.
- The join that causes unmatched rows to show as `NULL` is the one you should use.

---

## Suggested Topics to Review

- SQL joins (INNER, LEFT, RIGHT, FULL)  
- Handling `NULL` values in joins  
- Primary and foreign key relationships  
