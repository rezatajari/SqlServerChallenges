# Triangle Judgement

**Difficulty:** Easy  
**Topics:** SQL, Conditional Logic, Geometry  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to determine whether three given line segments can form a valid triangle.

A **triangle is valid** if and only if the **sum of any two sides** is **greater than the third side**.  
Mathematically, for sides `x`, `y`, and `z`, the following conditions must all be true:

- `x + y > z`
- `x + z > y`
- `y + z > x`

If these conditions are satisfied, the result should be `"Yes"`, otherwise `"No"`.

---

## Table Schema

### Table: Triangle

| Column Name | Type |
|--------------|------|
| x            | int  |
| y            | int  |
| z            | int  |

- `(x, y, z)` is the **primary key**.  
- Each row represents the lengths of three line segments.

---

## Task Description

Return a table with the following columns:

| Column Name | Description |
|--------------|-------------|
| x            | Length of the first side |
| y            | Length of the second side |
| z            | Length of the third side |
| triangle     | `"Yes"` if the three sides can form a triangle, otherwise `"No"` |

---

## Example Input and Output

### Input

**Triangle table:**

| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 15 |

### Output

| x  | y  | z  | triangle |
|----|----|----|-----------|
| 13 | 15 | 30 | No        |
| 10 | 20 | 15 | Yes       |

**Explanation:**  
- For the first row (13, 15, 30): `13 + 15 = 28`, which is **not greater than** 30 → **No**  
- For the second row (10, 20, 15): all three conditions hold → **Yes**

---

## Notes

- Use a **CASE WHEN** statement to check the triangle conditions.  
- Remember: all three inequalities must hold true.  
- Return `"Yes"` or `"No"` based on whether the three sides can form a valid triangle.
---
## تشخیص مثلث

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** SQL، منطق شرطی، هندسه  
🔹 **منبع:** الهام‌گرفته از LeetCode SQL  

---

## هدف چالش

🔹 هدف شما تعیین این است که آیا **سه خط داده شده می‌توانند یک مثلث معتبر بسازند** یا خیر.  

🔹 یک مثلث معتبر است اگر و فقط اگر **مجموع طول هر دو ضلع بزرگ‌تر از ضلع سوم باشد**.  
🔹 به طور ریاضی، برای ضلع‌های x, y و z باید شرایط زیر برقرار باشد:

- x + y > z  
- x + z > y  
- y + z > x  

🔹 اگر این شرایط برقرار باشند، مقدار خروجی باید "Yes" باشد، در غیر این صورت "No".

---

## ساختار جدول

### جدول Triangle

| نام ستون | نوع داده | توضیح |
|----------|---------|-------|
| x        | int     | طول ضلع اول |
| y        | int     | طول ضلع دوم |
| z        | int     | طول ضلع سوم |

- ترکیب (x, y, z) به عنوان کلید اصلی جدول است.  
- هر ردیف نشان‌دهنده طول سه خط جداگانه است.

---

## شرح وظیفه

🔹 جدول خروجی باید شامل ستون‌های زیر باشد:

| نام ستون  | توضیح |
|-----------|-------|
| x         | طول ضلع اول |
| y         | طول ضلع دوم |
| z         | طول ضلع سوم |
| triangle  | "Yes" اگر سه ضلع بتوانند مثلث بسازند، در غیر این صورت "No" |

---

## مثال ورودی و خروجی

### ورودی

#### جدول Triangle

| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 15 |

### خروجی

| x  | y  | z  | triangle |
|----|----|----|----------|
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |

---

## توضیح

- برای ردیف اول (13, 15, 30): 13 + 15 = 28، که بزرگ‌تر از 30 نیست → خروجی No  
- برای ردیف دوم (10, 20, 15): همه سه شرط برقرار است → خروجی Yes

---

## نکات

- از دستور **CASE WHEN** برای بررسی شرایط مثلث استفاده کنید.  
- به یاد داشته باشید که **هر سه نابرابری باید برقرار باشند**.  
- خروجی باید بر اساس امکان تشکیل مثلث "Yes" یا "No" باشد.

