# Project Employees

**Difficulty:** Easy  
**Topics:** SQL Joins, Aggregation, Averages  
**Source:** Inspired by LeetCode SQL  

---

## Table Schemas

### Table: Project

| Column Name  | Type | Description |
|---------------|------|-------------|
| project_id    | int  | Unique identifier for each project |
| employee_id   | int  | References employee_id from the Employee table |

**Primary Key:** `(project_id, employee_id)`  
**Foreign Key:** `employee_id` → `Employee.employee_id`

Each row represents an employee working on a specific project.

---

### Table: Employee

| Column Name      | Type    | Description |
|------------------|---------|-------------|
| employee_id      | int     | Unique identifier for each employee |
| name             | varchar | Name of the employee |
| experience_years | int     | Total years of experience for the employee (not NULL) |

**Primary Key:** `employee_id`

---

## Task Description

Write an SQL query to **report the average experience (in years)** of all employees for each project.  
Round the result to **2 decimal places**.

Return the result table in **any order**.

---

## Example

### Input

#### Project Table

| project_id | employee_id |
|-------------|-------------|
| 1           | 1           |
| 1           | 2           |
| 1           | 3           |
| 2           | 1           |
| 2           | 4           |

#### Employee Table

| employee_id | name   | experience_years |
|--------------|--------|------------------|
| 1            | Khaled | 3                |
| 2            | Ali    | 2                |
| 3            | John   | 1                |
| 4            | Doe    | 2                |

---

### Output

| project_id | average_years |
|-------------|---------------|
| 1           | 2.00          |
| 2           | 2.50          |

---

## Explanation

- **Project 1:** Employees (1, 2, 3) → (3 + 2 + 1) / 3 = **2.00**  
- **Project 2:** Employees (1, 4) → (3 + 2) / 2 = **2.50**

---

## Notes

- You must **join** the `Project` and `Employee` tables using `employee_id`.  
- Use **AVG()** to calculate the mean and **ROUND(..., 2)** to format the result to two decimal places.
- Group the results by `project_id`.

---

## میانگین تجربه کارکنان پروژه

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** SQL، Joins، Aggregation، میانگین‌ها (Averages)  
🔹 **منبع:** الهام‌گرفته از LeetCode SQL  

---

## ساختار جداول

### جدول Project

| نام ستون     | نوع داده | توضیح |
|-------------|---------|-------|
| project_id  | int     | شناسه یکتا برای هر پروژه |
| employee_id | int     | ارجاع به employee_id در جدول Employee |

🔹 **کلید اصلی:** (project_id, employee_id)  
🔹 **کلید خارجی:** employee_id → Employee.employee_id  

هر ردیف نشان‌دهنده یک کارمند است که روی یک پروژه خاص کار می‌کند.

---

### جدول Employee

| نام ستون         | نوع داده | توضیح |
|-----------------|---------|-------|
| employee_id      | int     | شناسه یکتا برای هر کارمند |
| name             | varchar | نام کارمند |
| experience_years | int     | تعداد سال‌های تجربه کارمند (غیر NULL) |

🔹 **کلید اصلی:** employee_id  

---

## شرح وظیفه

🔹 شما باید یک کوئری SQL بنویسید که **میانگین تجربه (به سال)** همه کارکنان هر پروژه را محاسبه کند.  
🔹 نتیجه باید با **دو رقم اعشار** گرد شود.  
🔹 جدول خروجی می‌تواند بدون ترتیب خاص باشد.

---

## جدول خروجی

| نام ستون      | توضیح |
|---------------|-------|
| project_id    | شناسه پروژه |
| average_years | میانگین تجربه کارکنان پروژه (دو رقم اعشار) |

---

## مثال ورودی و خروجی

### ورودی

#### Project

| project_id | employee_id |
|-----------|-------------|
| 1         | 1           |
| 1         | 2           |
| 1         | 3           |
| 2         | 1           |
| 2         | 4           |

#### Employee

| employee_id | name  | experience_years |
|------------|-------|-----------------|
| 1          | Khaled | 3               |
| 2          | Ali    | 2               |
| 3          | John   | 1               |
| 4          | Doe    | 2               |

---

### خروجی

| project_id | average_years |
|-----------|----------------|
| 1         | 2.00           |
| 2         | 2.50           |

---

## توضیح

- پروژه 1: کارکنان (1, 2, 3) → (3 + 2 + 1) ÷ 3 = 2.00  
- پروژه 2: کارکنان (1, 4) → (3 + 2) ÷ 2 = 2.50  

---

## نکات

- باید جداول **Project** و **Employee** را با ستون employee_id به هم متصل کنید.  
- از **AVG()** برای محاسبه میانگین و **ROUND(..., 2)** برای گرد کردن به دو رقم اعشار استفاده کنید.  
- نتایج باید بر اساس project_id گروه‌بندی شوند.
