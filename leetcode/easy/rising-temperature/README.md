# Rising Temperature

**Difficulty:** Easy  
**Topics:** SQL, Self Join, Date Comparison  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all the **dates’ IDs** where the temperature was **higher than the previous day**.  

- Compare each day’s temperature with the temperature of **the previous calendar date**.  
- Return the IDs of the days where the temperature increased.  
- The result order does not matter.

---

## Table Schema

### Table: Weather

| Column Name | Type |
|--------------|------|
| id           | int  |
| recordDate   | date |
| temperature  | int  |

- `id` is the primary key (unique for each record).  
- Each record represents the temperature on a specific date.  
- There are no duplicate `recordDate` values in the table.

---

## Task Description

Return a table with one column:

| Column Name | Description |
|--------------|--------------|
| id           | The ID of the day when the temperature was higher than the previous day |

---

## Example Input and Output

### Input

**Weather table:**

| id | recordDate  | temperature |
|----|-------------|-------------|
| 1  | 2015-01-01  | 10          |
| 2  | 2015-01-02  | 25          |
| 3  | 2015-01-03  | 20          |
| 4  | 2015-01-04  | 30          |

### Output

| id |
|----|
| 2  |
| 4  |

**Explanation:**  
- On **2015-01-02**, temperature increased from 10 → 25.  
- On **2015-01-04**, temperature increased from 20 → 30.  
- Therefore, IDs **2** and **4** are included in the result.

---

## Notes

- You can use a **self join** on the Weather table to compare each day with its previous day (`recordDate = previousDate + 1`).  
- Make sure to compare by **date values**, not IDs.  
- The result can be returned in any order.
