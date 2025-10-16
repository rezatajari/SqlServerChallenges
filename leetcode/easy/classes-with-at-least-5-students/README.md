# Classes with At Least 5 Students

**Difficulty:** Easy  
**Topics:** SQL, Aggregation, Grouping, Filtering  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all **classes** that have **at least five students** enrolled.

- Each student is enrolled in exactly one class per row.  
- Count the number of students per class.  
- Return only the classes that meet or exceed the threshold of five students.  
- The order of results does not matter.

---

## Table Schema

### Table: Courses

| Column Name | Type    |
|-------------|---------|
| student     | varchar |
| class       | varchar |

- `(student, class)` is the primary key.  
- Each row indicates that a student is enrolled in a specific class.

---

## Task Description

Return a table with one column:

| Column Name | Description |
|-------------|-------------|
| class       | The name of the class with at least five students |

---

## Example Input and Output

### Input

**Courses table:**

| student | class    |
|---------|----------|
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
| G       | Math     |
| H       | Math     |
| I       | Math     |

### Output

| class |
|-------|
| Math  |

**Explanation:**  
- Math has **6 students**, so it is included.  
- English, Biology, and Computer have fewer than 5 students, so they are excluded.

---

## Notes

- Use **GROUP BY** on the `class` column to count the number of students.  
- Use a **HAVING** clause to filter classes with **count >= 5**.  
- Only return the class names, not the student names.  
- The order of the results does not matter.
