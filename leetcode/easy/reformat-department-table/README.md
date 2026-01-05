# Reformat Department Table

**Difficulty:** Medium  
**Topics:** SQL, Pivoting, Aggregation, Conditional Logic  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to **reformat the Department table** so that each department has a single row with revenue columns for each month.

The input table has **one row per department per month**, with the columns:

- `id` → department ID  
- `revenue` → revenue for that month  
- `month` → month name (`"Jan"` to `"Dec"`)

The output table should have:

- One row per department (`id`)  
- One column for each month’s revenue, named `<Month>_Revenue` (e.g., `Jan_Revenue`)  
- `NULL` for months with no revenue data

---

## Table Schema

### Table: Department

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| revenue     | int     |
| month       | varchar |

- `(id, month)` is the **primary key**.  
- Each row represents a department’s revenue in a specific month.  
- Month values are in: `["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]`.

---

## Task Description

Return a table with the following structure:

| Column Name | Description |
|-------------|-------------|
| id          | Department ID |
| Jan_Revenue | Revenue in January |
| Feb_Revenue | Revenue in February |
| Mar_Revenue | Revenue in March |
| ...         | ... |
| Dec_Revenue | Revenue in December |

Requirements:

- If there is no revenue for a particular month, the corresponding column should be `NULL`.  
- Include **all 12 months** in the output.  
- The order of rows does not matter.

---

## Example Input and Output

### Input

**Department table:**

| id | revenue | month |
|----|---------|-------|
| 1  | 8000    | Jan   |
| 2  | 9000    | Jan   |
| 3  | 10000   | Feb   |
| 1  | 7000    | Feb   |
| 1  | 6000    | Mar   |

### Output

| id | Jan_Revenue | Feb_Revenue | Mar_Revenue | Apr_Revenue | ... | Dec_Revenue |
|----|-------------|-------------|-------------|-------------|-----|-------------|
| 1  | 8000        | 7000        | 6000        | NULL        | ... | NULL        |
| 2  | 9000        | NULL        | NULL        | NULL        | ... | NULL        |
| 3  | NULL        | 10000       | NULL        | NULL        | ... | NULL        |

### Explanation

- Revenue from months without data (e.g., Apr–Dec) is `NULL`.  
- The result table has **13 columns**: 1 for the department ID + 12 for each month’s revenue.

---

## Notes

- This is essentially a **pivot operation** in SQL.  
- Ensure that each department has **exactly one row**.  
- The output does not require ordering of departments.  

---
## بازفرمت جدول دپارتمان

🔹 **سطح دشواری:** متوسط (Medium)  
🔹 **موضوعات:** SQL، Pivoting، Aggregation، منطق شرطی  
🔹 **منبع:** الهام‌گرفته از LeetCode SQL  

---

## هدف چالش

🔹 هدف شما این است که جدول **Department** را بازفرمت کنید به گونه‌ای که هر دپارتمان یک ردیف داشته باشد و ستون‌های درآمد برای هر ماه مشخص شوند.  

🔹 جدول ورودی دارای یک ردیف برای هر دپارتمان در هر ماه است، با ستون‌های زیر:

- id → شناسه دپارتمان  
- revenue → درآمد آن ماه  
- month → نام ماه ("Jan" تا "Dec")  

🔹 جدول خروجی باید شامل:

- یک ردیف برای هر دپارتمان (id)  
- یک ستون برای درآمد هر ماه، با نام <Month>_Revenue (مثلاً Jan_Revenue)  
- مقدار NULL برای ماه‌هایی که داده درآمدی ندارند  

---

## ساختار جدول

### جدول Department

| نام ستون | نوع داده | توضیح |
|----------|---------|-------|
| id       | int     | شناسه دپارتمان |
| revenue  | int     | درآمد آن ماه |
| month    | varchar | نام ماه ("Jan" تا "Dec") |

🔹 کلید اصلی ترکیبی: (id, month)  
🔹 هر ردیف نشان‌دهنده درآمد یک دپارتمان در یک ماه است.  
🔹 مقادیر month از ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"] هستند.

---

## شرح وظیفه

🔹 خروجی باید جدولی با ستون‌های زیر باشد:

| نام ستون       | توضیح                        |
|----------------|-----------------------------|
| id             | شناسه دپارتمان              |
| Jan_Revenue    | درآمد در ماه ژانویه         |
| Feb_Revenue    | درآمد در ماه فوریه          |
| Mar_Revenue    | درآمد در ماه مارس           |
| ...            | ...                          |
| Dec_Revenue    | درآمد در ماه دسامبر         |

---

## الزامات

- اگر داده درآمدی برای ماهی وجود ندارد، مقدار ستون مربوطه باید **NULL** باشد.  
- تمام ۱۲ ماه باید در خروجی وجود داشته باشند.  
- ترتیب ردیف‌ها اهمیتی ندارد.

---

## مثال ورودی و خروجی

### ورودی

#### Department

| id | revenue | month |
|----|---------|-------|
| 1  | 8000    | Jan   |
| 2  | 9000    | Jan   |
| 3  | 10000   | Feb   |
| 1  | 7000    | Feb   |
| 1  | 6000    | Mar   |

---

### خروجی

| id | Jan_Revenue | Feb_Revenue | Mar_Revenue | Apr_Revenue | ... | Dec_Revenue |
|----|-------------|-------------|-------------|-------------|-----|-------------|
| 1  | 8000        | 7000        | 6000        | NULL        | ... | NULL        |
| 2  | 9000        | NULL        | NULL        | NULL        | ... | NULL        |
| 3  | NULL        | 10000       | NULL        | NULL        | ... | NULL        |

---

## توضیح

- درآمد ماه‌هایی که داده‌ای ندارند (مثلاً Apr–Dec) برابر **NULL** است.  
- جدول خروجی شامل ۱۳ ستون است: یک ستون برای شناسه دپارتمان و ۱۲ ستون برای درآمد هر ماه.

---

## نکات

- این چالش در واقع یک **Pivot** در SQL است.  
- اطمینان حاصل کنید که هر دپارتمان دقیقاً یک ردیف داشته باشد.  
- خروجی نیازی به مرتب‌سازی دپارتمان‌ها ندارد.
