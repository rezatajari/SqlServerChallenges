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
```
## کارمندانی که حقوقشان بیشتر از مدیرشان است

**سطح دشواری:** آسان  
**موضوعات:** SQL، JOIN، Self Join  
**منبع:** الهام‌گرفته از مسائل SQL در LeetCode  

---

## هدف مسئله

باید نام تمام کارمندانی را پیدا کنید که **حقوقشان از حقوق مدیرشان بیشتر است**.

- هر کارمند دارای حقوق است.
- هر کارمند ممکن است یک مدیر داشته باشد که او نیز در **همان جدول** قرار دارد.
- لازم است حقوق هر کارمند با حقوق مدیرش مقایسه شود.
- فقط کارمندانی که حقوقشان بیشتر از مدیرشان است در خروجی نمایش داده شوند.

---

## ساختار جدول

### جدول Employee

| نام ستون | نوع داده |
|--------|----------|
| id | int |
| name | varchar |
| salary | int |
| managerId | int |

- ستون `id` کلید اصلی جدول است.
- ستون `managerId` به `id` یک کارمند دیگر در همین جدول اشاره می‌کند.
- اگر کارمند مدیری نداشته باشد، مقدار `managerId` برابر **NULL** است.

---

## شرح وظیفه

یک کوئری SQL بنویسید که جدول زیر را برگرداند:

| نام ستون | توضیح |
|--------|-------|
| Employee | نام کارمندی که حقوقش بیشتر از حقوق مدیرش است |

ترتیب خروجی اهمیتی ندارد.

---

## مثال ورودی و خروجی

### ورودی

جدول Employee:

| id | name | salary | managerId |
|----|------|--------|-----------|
| 1 | Joe | 70000 | 3 |
| 2 | Henry | 80000 | 4 |
| 3 | Sam | 60000 | NULL |
| 4 | Max | 90000 | NULL |

---

### خروجی

| Employee |
|----------|
| Joe |

---

## توضیح

- مدیر **Joe**، شخص **Sam** است با حقوق 60000  
  → حقوق Joe برابر 70000 است، پس در خروجی قرار می‌گیرد.
- مدیر **Henry**، شخص **Max** است با حقوق 90000  
  → حقوق Henry کمتر است، پس در خروجی قرار نمی‌گیرد.
- **Sam** و **Max** مدیر ندارند، بنابراین بررسی نمی‌شوند.

---

## نکات

- چون مقایسه بین رکوردهای یک جدول انجام می‌شود، باید از **Self Join** استفاده کنید.
- جدول را به خودش JOIN کنید به‌طوری که:
  - `employee.managerId = manager.id`
- سپس شرط بگذارید که:
  - حقوق کارمند بیشتر از حقوق مدیر باشد.
- به مقادیر **NULL** در `managerId` توجه داشته باشید.

---

## مباحث پیشنهادی برای مرور

- انواع JOIN در SQL (به‌خصوص INNER JOIN)
- Self Join
- مدیریت مقادیر NULL در JOIN‌ها
