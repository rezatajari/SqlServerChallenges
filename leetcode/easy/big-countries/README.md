# Big Countries

**Difficulty:** Easy  
**Topics:** SQL, Filtering, Conditional Selection  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all **big countries** from the `World` table.  

A country is considered **big** if **either** of the following conditions is true:

1. Its **area** is at least 3,000,000 km², **or**  
2. Its **population** is at least 25,000,000.

Return the **name**, **population**, and **area** of all big countries.  
The order of results does not matter.

---

## Table Schema

### Table: World

| Column Name | Type   |
|-------------|--------|
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |

- `name` is the **primary key** (unique for each country).  
- Each row contains information about a country's continent, area, population, and GDP.

---

## Task Description

Return a table with the following columns:

| Column Name | Description |
|-------------|-------------|
| name        | The name of the country |
| population  | The population of the country |
| area        | The area of the country |

Include only countries that satisfy **either** the area or population criteria for being "big".

---

## Example Input and Output

### Input

**World table:**

| name        | continent | area    | population | gdp          |
|-------------|-----------|---------|------------|--------------|
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |

### Output

| name        | population | area    |
|-------------|------------|---------|
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |

**Explanation:**  
- Afghanistan is big because its population exceeds 25,000,000.  
- Algeria is big because its population exceeds 25,000,000.  
- Other countries do not meet either criterion.

---

## Notes

- Use a **WHERE** clause with conditions combining **population** and **area** using `OR`.  
- Only select the **name**, **population**, and **area** columns.  
- The order of output rows does not matter.
