# Biggest Single Number

**Difficulty:** Easy  
**Topics:** SQL, Aggregation, Filtering, MAX Function  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find the **largest single number** in the `MyNumbers` table.

A **single number** is defined as a number that appears **only once** in the table.

If there are **no single numbers**, return `null`.

---

## Table Schema

### Table: MyNumbers

| Column Name | Type |
|--------------|------|
| num          | int  |

- This table **may contain duplicates**.  
- There is **no primary key**.  
- Each row contains one integer.

---

## Task Description

Return a table with one column:

| Column Name | Description |
|--------------|-------------|
| num          | The largest number that appears exactly once. Returns `null` if no single number exists. |

---

## Example Input and Output

### Example 1

**Input:**

| num |
|-----|
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

**Output:**

| num |
|-----|
| 6   |

**Explanation:**  
The single numbers are `1, 4, 5, 6`.  
Among them, the largest is `6`.

---

### Example 2

**Input:**

| num |
|-----|
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |

**Output:**

| num  |
|------|
| null |

**Explanation:**  
All numbers occur more than once, so there are **no single numbers**.  
In this case, the result should be `null`.

---

## Notes

- Use **GROUP BY** on the `num` column to count how many times each number appears.  
- Use **HAVING COUNT(num) = 1** to filter only single numbers.  
- Apply the **MAX()** function to find the largest of these single numbers.  
- If there are no single numbers, ensure the query returns `null`.

---

## بزرگ‌ترین عدد یکتا 

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** SQL، تجمیع داده‌ها (Aggregation)، فیلترینگ (Filtering)، تابع MAX  
🔹 **منبع:** الهام‌گرفته از چالش‌های SQL در LeetCode  

---

## هدف چالش

🔹 هدف این تمرین پیدا کردن **بزرگ‌ترین عدد یکتا** در جدول `MyNumbers` است.

🔹 عدد یکتا یعنی **عددی که فقط یک بار در جدول ظاهر می‌شود**.  
🔹 اگر هیچ عدد یکتایی وجود نداشت، نتیجه باید `null` باشد.

---

## ساختار جدول

### جدول MyNumbers

| نام ستون | نوع داده |
|----------|---------|
| num      | int     |

🔹 این جدول ممکن است شامل مقادیر تکراری باشد.  
🔹 هیچ کلید اصلی (Primary Key) ندارد.  
🔹 هر ردیف شامل یک عدد صحیح است.

---

## توضیح مسئله

🔹 کوئری باید یک جدول با یک ستون بازگرداند:

| نام ستون | توضیح |
|-----------|-------|
| num       | بزرگ‌ترین عددی که **دقیقاً یک بار** ظاهر شده است. اگر عدد یکتایی وجود نداشته باشد، `null` برگردانده شود. |

---

## مثال ورودی و خروجی

### مثال ۱

#### ورودی

| num |
|-----|
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

#### خروجی

| num |
|-----|
| 6   |

**توضیح:**  
اعداد یکتا: 1، 4، 5، 6 → بزرگ‌ترین عدد 6 است.

---

### مثال ۲

#### ورودی

| num |
|-----|
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |

#### خروجی

| num  |
|------|
| null |

**توضیح:**  
همه‌ی اعداد بیش از یک بار ظاهر شده‌اند، بنابراین هیچ عدد یکتایی وجود ندارد و نتیجه `null` است.

---

## نکات و پیشنهادها

🔹 از `GROUP BY` روی ستون `num` برای شمارش تعداد تکرار هر عدد استفاده کنید.  
🔹 از `HAVING COUNT(num) = 1` برای فیلتر کردن تنها اعداد یکتا استفاده کنید.  
🔹 از تابع `MAX()` برای پیدا کردن بزرگ‌ترین عدد یکتا استفاده کنید.  
🔹 اگر هیچ عدد یکتایی وجود ندارد، مطمئن شوید که کوئری `null` برمی‌گرداند.
