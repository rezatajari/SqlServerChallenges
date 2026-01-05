# Swap Salary

**Difficulty:** Easy  
**Topics:** SQL UPDATE, Conditional Logic  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to **swap all 'f' and 'm' values** in the `sex` column using a **single SQL UPDATE statement** — no intermediate tables or SELECT queries are allowed.

---

## Table Schema

### Table: Salary

| Column Name | Type    | Description |
|--------------|---------|-------------|
| id           | int     | Unique employee ID (primary key) |
| name         | varchar | Employee name |
| sex          | ENUM('m', 'f') | Employee gender |
| salary       | int     | Employee salary |

---

## Task Description

Update the `Salary` table so that:

- Every `'m'` becomes `'f'`  
- Every `'f'` becomes `'m'`

You must do this with **a single `UPDATE` statement**, **no SELECTs**, and **no temporary tables**.

---

## Example Input and Output

### Example 1

**Input:**

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |

**Output:**

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |

**Explanation:**

- Records with `'m'` were changed to `'f'`.  
- Records with `'f'` were changed to `'m'`.  
- All other data remains unchanged.

---

## Notes

- You must use **conditional logic** inside the `UPDATE` statement, such as:
  - `CASE WHEN`  
  - `IF()` (for MySQL)
- **Do not use SELECT statements** or **temporary/intermediate tables**.
- The change should be performed **in place**, directly on the `Salary` table.

---

## جابجایی حقوق

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** SQL UPDATE، منطق شرطی  
🔹 **منبع:** الهام‌گرفته از LeetCode SQL  

---

## هدف چالش

🔹 هدف شما این است که **تمام مقادیر 'f' و 'm' در ستون sex را با یک دستور SQL UPDATE جابجا کنید** — هیچ جدول موقت یا دستور SELECT مجزا مجاز نیست.

---

## ساختار جدول

### جدول Salary

| نام ستون | نوع داده         | توضیح                      |
|----------|----------------|---------------------------|
| id       | int            | شناسه یکتا برای هر کارمند (کلید اصلی) |
| name     | varchar        | نام کارمند                 |
| sex      | ENUM('m','f')  | جنسیت کارمند               |
| salary   | int            | حقوق کارمند                |

---

## شرح وظیفه

🔹 جدول Salary را به گونه‌ای به‌روزرسانی کنید که:

- هر مقدار 'm' به 'f' تبدیل شود  
- هر مقدار 'f' به 'm' تبدیل شود  

🔹 این کار باید با **یک دستور UPDATE واحد** انجام شود، بدون SELECT یا جدول موقت.

---

## مثال ورودی و خروجی

### ورودی

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |

### خروجی

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |

---

## توضیح

- ردیف‌هایی که 'm' بودند به 'f' تبدیل شدند.  
- ردیف‌هایی که 'f' بودند به 'm' تبدیل شدند.  
- سایر داده‌ها بدون تغییر باقی ماندند.

---

## نکات

- باید از منطق شرطی داخل دستور UPDATE استفاده کنید، مانند:  
  - **CASE WHEN**  
  - **IF()** (برای MySQL)  
- از دستورات SELECT یا جدول موقت استفاده نکنید.  
- تغییر باید مستقیماً روی جدول Salary انجام شود.

