# Second Highest Salary

**Difficulty:** Easy  
**Topics:** SQL, Aggregation, Ranking, Subqueries  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find the **second highest distinct salary** from the Employee table.  

- If there is no second highest salary (for example, only one unique salary exists), return `NULL`.  
- You should only consider **distinct** salaries; repeated salaries should count as one.

---

## Table Schema

### Table: Employee

| Column Name | Type |
|-------------|------|
| id          | int  |
| salary      | int  |

- `id` is the primary key.  
- Each row contains information about the salary of an employee.

---

## Task Description

Write a solution that returns a table with a single column:

| Column Name           | Description |
|-----------------------|-------------|
| SecondHighestSalary   | The second highest unique salary from the Employee table. Return `NULL` if it does not exist. |

---

## Example Input and Output

### Example 1

**Employee table:**

| id | salary |
|----|--------|
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |

**Output:**

| SecondHighestSalary |
|--------------------|
| 200                |

**Explanation:**  
The distinct salaries are 300, 200, 100. The second highest is 200.

---

### Example 2

**Employee table:**

| id | salary |
|----|--------|
| 1  | 100    |

**Output:**

| SecondHighestSalary |
|--------------------|
| NULL               |

**Explanation:**  
There is only one distinct salary, so there is no second highest.

---

## Notes

- Only **distinct** salaries should be considered.  
- Make sure your query handles the case when the second highest salary does not exist.  
- Think about how to sort and rank values to find the second largest.  
- This challenge can be solved using subqueries, window functions, or other SQL ranking techniques.

---

## دومین حقوق بالاتر (Second Highest Salary)

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** SQL، توابع تجمیعی (Aggregation)، رتبه‌بندی (Ranking)، زیرکوئری‌ها  
🔹 **منبع:** الهام‌گرفته از چالش‌های SQL در LeetCode  

---

## هدف چالش

🔹 هدف این تمرین پیدا کردن **دومین حقوق متمایزِ بالاتر** از جدول `Employee` است.

🔹 اگر دومین حقوق وجود نداشته باشد (برای مثال زمانی که فقط یک حقوق یکتا در جدول وجود دارد)، باید مقدار **NULL** برگردانده شود.

🔹 تنها **حقوق‌های متمایز** باید در نظر گرفته شوند؛  
حقوق‌های تکراری فقط یک‌بار محاسبه می‌شوند.

---

## ساختار جدول

🔹 **نام جدول:** `Employee`

| نام ستون | نوع داده |
|--------|----------|
| id     | int      |
| salary | int      |

🔹 ستون `id` کلید اصلی (Primary Key) جدول است.  
🔹 هر سطر نشان‌دهنده‌ی اطلاعات حقوق یک کارمند می‌باشد.

---

## توضیح مسئله

🔹 باید کوئری‌ای بنویسید که یک جدول با **یک ستون** برگرداند:

| نام ستون | توضیح |
|--------|-------|
| SecondHighestSalary | دومین حقوق یکتای بالاتر در جدول `Employee` — در صورت عدم وجود، مقدار `NULL` |

---

## مثال ورودی و خروجی

### مثال ۱

🔹 جدول `Employee`:

| id | salary |
|----|--------|
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |

🔹 خروجی:

| SecondHighestSalary |
|---------------------|
| 200                 |

🔹 **توضیح:**  
حقوق‌های متمایز برابرند با: 300، 200، 100  
دومین حقوق بالاتر برابر با **200** است.

---

### مثال ۲

🔹 جدول `Employee`:

| id | salary |
|----|--------|
| 1  | 100    |

🔹 خروجی:

| SecondHighestSalary |
|---------------------|
| NULL                |

🔹 **توضیح:**  
فقط یک حقوق یکتا وجود دارد، بنابراین دومین حقوق بالاتر وجود ندارد.

---

## نکات مهم

🔹 فقط حقوق‌های **غیرتکراری** باید در نظر گرفته شوند.  
🔹 کوئری باید حالتی را که دومین حقوق وجود ندارد به‌درستی مدیریت کند.  
🔹 به نحوه‌ی **مرتب‌سازی** و **رتبه‌بندی** مقادیر فکر کنید.  
🔹 این مسئله می‌تواند با استفاده از:
- زیرکوئری‌ها  
- توابع پنجره‌ای (Window Functions)  
- یا سایر تکنیک‌های رتبه‌بندی در SQL  

حل شود.

