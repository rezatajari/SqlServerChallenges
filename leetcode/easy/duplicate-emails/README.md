# Duplicate Emails

**Difficulty:** Easy  
**Topics:** SQL, Aggregation, Filtering, Data Cleaning  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all **duplicate emails** in the Person table.

- Each email in the table may appear one or more times.  
- You must return only the email addresses that appear **more than once**.  
- The result should not include duplicates in the output itself.  
- The order of the results does not matter.

---

## Table Schema

### Table: Person

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the primary key (unique for each row).  
- `email` contains lowercase letters only and is never `NULL`.  
- Each row represents a single person’s email address.

---

## Task Description

Return a table with one column:

| Column Name | Description |
|--------------|--------------|
| Email        | The email address that appears more than once in the Person table. |

---

## Example Input and Output

### Example

**Person table:**

| id | email   |
|----|----------|
| 1  | a@b.com  |
| 2  | c@d.com  |
| 3  | a@b.com  |

**Output:**

| Email   |
|----------|
| a@b.com  |

**Explanation:**  
The email `a@b.com` appears twice, so it should be included in the output.

---

## Notes

- The result should include each duplicated email **only once**, even if it appears multiple times.  
- Consider using grouping or aggregation to count occurrences.  
- Filtering for records with count greater than one (`> 1`) will help identify duplicates.
---
## ایمیل‌های تکراری

**سطح دشواری:** آسان  
**موضوعات:** SQL، تجمیع (Aggregation)، فیلتر کردن، پاک‌سازی داده  
**منبع:** الهام‌گرفته از مسائل SQL در LeetCode  

---

## هدف مسئله

هدف این است که **تمام آدرس‌های ایمیلی که بیش از یک‌بار در جدول Person تکرار شده‌اند** را شناسایی کنیم.

نکات مهم:

- هر ایمیل ممکن است یک‌بار یا چندبار در جدول ظاهر شود.
- فقط ایمیل‌هایی را برگردانید که **بیش از یک‌بار** وجود دارند.
- هر ایمیل تکراری باید **فقط یک‌بار** در خروجی نمایش داده شود.
- ترتیب خروجی اهمیتی ندارد.

---

## ساختار جدول

### جدول Person

| نام ستون | نوع داده |
|--------|----------|
| id | int |
| email | varchar |

🔹 ستون `id` کلید اصلی جدول است.  
🔹 ستون `email` فقط شامل حروف کوچک است و مقدار NULL ندارد.  
🔹 هر رکورد نمایانگر ایمیل یک شخص است.

---

## شرح وظیفه

یک جدول با **یک ستون** برگردانید:

| نام ستون | توضیح |
|--------|-------|
| Email | آدرس ایمیلی که بیش از یک‌بار در جدول Person تکرار شده است |

---

## مثال ورودی و خروجی

### ورودی

#### جدول Person

| id | email |
|----|-------|
| 1 | a@b.com |
| 2 | c@d.com |
| 3 | a@b.com |

---

### خروجی

| Email |
|-------|
| a@b.com |

---

## توضیح

- ایمیل **a@b.com** دو بار در جدول ظاهر شده است، بنابراین باید در خروجی نمایش داده شود.
- ایمیل **c@d.com** فقط یک‌بار وجود دارد، پس در خروجی قرار نمی‌گیرد.

---

## نکات

🔹 هر ایمیل تکراری فقط **یک‌بار** در خروجی نمایش داده می‌شود، حتی اگر چندین بار تکرار شده باشد.  
🔹 استفاده از **GROUP BY** برای گروه‌بندی بر اساس ایمیل بسیار مناسب است.  
🔹 با شمارش تعداد رکوردها و فیلتر کردن مقادیری که تعدادشان **بیشتر از ۱** است، می‌توان ایمیل‌های تکراری را شناسایی کرد.  
🔹 این مسئله نمونه‌ای ساده و کاربردی برای تشخیص داده‌های تکراری در پایگاه داده است.
