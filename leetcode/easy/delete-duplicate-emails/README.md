# Delete Duplicate Emails

**Difficulty:** Medium  
**Topics:** SQL, DELETE, Subqueries, Data Cleaning  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to **delete all duplicate emails** in the Person table, keeping **only one unique email** with the **smallest `id`**.  

- After deletion, each email should appear only once.  
- The row that remains for each duplicate email should be the one with the **smallest `id`**.  
- The final order of the table does not matter.

---

## Table Schema

### Table: Person

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the primary key.  
- Each row contains a single email address.  
- Emails do **not** contain uppercase letters.

---

## Task Description

- For **SQL users**: Write a `DELETE` statement to remove duplicates.  
- For **Pandas users**: Modify the `Person` table in place to remove duplicates.  

After running your solution, the remaining rows should form the final state of the `Person` table with **unique emails only**.

---

## Example Input and Output

### Input

**Person table:**

| id | email            |
|----|-----------------|
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |

### Output

| id | email            |
|----|-----------------|
| 1  | john@example.com |
| 2  | bob@example.com  |

**Explanation:**  
- `john@example.com` appears twice.  
- The row with the smaller `id` (`id = 1`) is kept.  
- The duplicate with `id = 3` is removed.

---

## Notes

- Make sure only **one row per email** remains.  
- For SQL, use subqueries or ranking functions to identify duplicates before deletion.  
- For Pandas, methods like `.drop_duplicates()` with `keep='first'` can be used.  
- The final table’s order does not matter.

---
## حذف ایمیل‌های تکراری

**سطح دشواری:** متوسط  
**موضوعات:** SQL، دستور DELETE، زیرکوئری‌ها، پاک‌سازی داده  
**منبع:** الهام‌گرفته از مسائل SQL در LeetCode  

---

## هدف مسئله

هدف این است که **تمام ایمیل‌های تکراری را از جدول Person حذف کنید**، به‌طوری که:

- از هر ایمیل فقط **یک نسخه یکتا** باقی بماند.
- رکوردی که باید حفظ شود، **رکوردی است که کمترین مقدار id را دارد**.
- بعد از حذف، هر ایمیل فقط یک‌بار در جدول وجود داشته باشد.
- ترتیب نهایی رکوردها اهمیتی ندارد.

---

## ساختار جدول

### جدول Person

| نام ستون | نوع داده |
|--------|----------|
| id | int |
| email | varchar |

🔹 ستون `id` کلید اصلی جدول است.  
🔹 هر سطر شامل یک آدرس ایمیل است.  
🔹 ایمیل‌ها فقط شامل حروف کوچک هستند.

---

## شرح وظیفه

- اگر از **SQL** استفاده می‌کنید:  
  یک دستور `DELETE` بنویسید که ایمیل‌های تکراری را حذف کند.
- اگر از **Pandas** استفاده می‌کنید:  
  جدول Person را به‌صورت in-place طوری تغییر دهید که رکوردهای تکراری حذف شوند.

پس از اجرای راه‌حل، جدول Person باید فقط شامل **ایمیل‌های یکتا** باشد.

---

## مثال ورودی و خروجی

### ورودی

#### جدول Person

| id | email |
|----|------------------|
| 1 | john@example.com |
| 2 | bob@example.com  |
| 3 | john@example.com |

---

### خروجی

| id | email |
|----|------------------|
| 1 | john@example.com |
| 2 | bob@example.com  |

---

## توضیح

- ایمیل **john@example.com** دو بار در جدول وجود دارد.
- رکورد با `id = 1` کوچک‌تر است، پس نگه داشته می‌شود.
- رکورد تکراری با `id = 3` حذف می‌شود.
- ایمیل **bob@example.com** یکتا است و بدون تغییر باقی می‌ماند.

---

## نکات

🔹 باید مطمئن شوید که از هر ایمیل فقط **یک رکورد** باقی می‌ماند.  
🔹 در SQL می‌توانید از **زیرکوئری‌ها** یا **توابع رتبه‌بندی (مانند MIN یا ROW_NUMBER)** برای شناسایی رکوردهای تکراری قبل از حذف استفاده کنید.  
🔹 در Pandas، متدی مانند `drop_duplicates()` با گزینه `keep='first'` دقیقاً رفتار موردنیاز این مسئله را پیاده‌سازی می‌کند.  
🔹 این مسئله نمونه‌ای مهم از پاک‌سازی داده‌ها در سناریوهای واقعی پایگاه داده است.
