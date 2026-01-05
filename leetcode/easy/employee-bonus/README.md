# Employee Bonus

**Difficulty:** Easy  
**Topics:** SQL, Joins, Filtering, NULL Handling  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to report the **name** and **bonus amount** of each employee whose bonus is **less than 1000**.

- Include all employees, even those who do not have a bonus record.  
- If an employee does not have a corresponding bonus in the `Bonus` table, show their bonus as `NULL`.  
- The order of the results does not matter.

---

## Table Schemas

### Table: Employee

| Column Name | Type    |
|--------------|----------|
| empId        | int      |
| name         | varchar  |
| supervisor   | int      |
| salary       | int      |

- `empId` is the primary key.  
- Each record represents an employee, their manager (`supervisor`), and their salary.

### Table: Bonus

| Column Name | Type |
|--------------|------|
| empId        | int  |
| bonus        | int  |

- `empId` is the primary key.  
- `empId` is a foreign key referencing `Employee(empId)`.  
- Each record contains the bonus amount of an employee.

---

## Task Description

Return a table with the following columns:

| Column Name | Description |
|--------------|--------------|
| name         | The employee’s name |
| bonus        | The employee’s bonus amount (or NULL if no record exists) |

Only include employees whose bonus is **less than 1000** or **NULL**.

---

## Example Input and Output

### Input

**Employee table:**

| empId | name   | supervisor | salary |
|-------|--------|-------------|--------|
| 3     | Brad   | null        | 4000   |
| 1     | John   | 3           | 1000   |
| 2     | Dan    | 3           | 2000   |
| 4     | Thomas | 3           | 4000   |

**Bonus table:**

| empId | bonus |
|-------|-------|
| 2     | 500   |
| 4     | 2000  |

### Output

| name | bonus |
|------|-------|
| Brad | null  |
| John | null  |
| Dan  | 500   |

**Explanation:**  
- Brad and John do not have a bonus record, so their bonuses are `NULL`.  
- Dan has a bonus of 500, which is less than 1000, so he is included.  
- Thomas has a bonus of 2000, which is not less than 1000, so he is excluded.

---

## Notes

- Use a **LEFT JOIN** to include employees without a matching record in the `Bonus` table.  
- Use a filter condition to include rows where the bonus is **less than 1000** or **NULL**.  
- The result can be returned in any order.

---
## پاداش کارمندان

**سطح دشواری:** آسان  
**موضوعات:** SQL، JOIN، فیلتر کردن، مدیریت NULL  
**منبع:** الهام‌گرفته از مسائل SQL در LeetCode  

---

## هدف مسئله

هدف این است که **نام و مقدار پاداش کارمندانی** را گزارش کنیم که:

- مقدار پاداش آن‌ها **کمتر از 1000** است، یا  
- **هیچ رکورد پاداشی ندارند** (یعنی مقدار پاداش آن‌ها NULL است)

نکات مهم:

- باید **تمام کارمندان** در نظر گرفته شوند، حتی اگر در جدول Bonus رکوردی نداشته باشند.
- اگر کارمندی پاداش نداشته باشد، مقدار bonus در خروجی باید **NULL** نمایش داده شود.
- ترتیب خروجی اهمیتی ندارد.

---

## ساختار جداول

### جدول Employee

| نام ستون | نوع داده |
|--------|----------|
| empId | int |
| name | varchar |
| supervisor | int |
| salary | int |

- ستون `empId` کلید اصلی جدول است.
- هر رکورد نمایانگر یک کارمند، مدیر او و حقوقش است.

---

### جدول Bonus

| نام ستون | نوع داده |
|--------|----------|
| empId | int |
| bonus | int |

- ستون `empId` کلید اصلی جدول است.
- `empId` به جدول Employee اشاره می‌کند.
- هر رکورد مقدار پاداش یک کارمند را مشخص می‌کند.

---

## شرح وظیفه

جدولی با ستون‌های زیر برگردانید:

| نام ستون | توضیح |
|--------|-------|
| name | نام کارمند |
| bonus | مقدار پاداش کارمند (یا NULL اگر پاداشی ثبت نشده باشد) |

**شرط:**  
فقط کارمندانی را نمایش دهید که:

- مقدار bonus آن‌ها کمتر از 1000 است  
- یا مقدار bonus آن‌ها NULL است

---

## مثال ورودی و خروجی

### ورودی

#### جدول Employee

| empId | name | supervisor | salary |
|------|------|-----------|--------|
| 3 | Brad | NULL | 4000 |
| 1 | John | 3 | 1000 |
| 2 | Dan | 3 | 2000 |
| 4 | Thomas | 3 | 4000 |

#### جدول Bonus

| empId | bonus |
|------|-------|
| 2 | 500 |
| 4 | 2000 |

---

### خروجی

| name | bonus |
|------|-------|
| Brad | NULL |
| John | NULL |
| Dan | 500 |

---

## توضیح

- **Brad** و **John** رکوردی در جدول Bonus ندارند، بنابراین مقدار bonus آن‌ها NULL است → شامل خروجی می‌شوند.
- **Dan** دارای پاداش 500 است که کمتر از 1000 می‌باشد → شامل خروجی می‌شود.
- **Thomas** پاداش 2000 دارد که بیشتر از 1000 است → از خروجی حذف می‌شود.

---

## نکات

- برای این مسئله باید از **LEFT JOIN** استفاده کنید تا کارمندانی که پاداش ندارند حذف نشوند.
- شرط فیلتر باید شامل هر دو حالت باشد:
  - `bonus < 1000`
  - `bonus IS NULL`
- مدیریت صحیح NULL در شرط‌ها بسیار مهم است، چون مقایسه مستقیم با NULL نتیجه‌ای برنمی‌گرداند.
- ترتیب خروجی اهمیتی ندارد.

