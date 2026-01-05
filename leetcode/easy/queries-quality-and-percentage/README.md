# Queries Quality and Percentage

**Difficulty:** Medium
**Topics:** SQL, Aggregation, Grouping, Ratios, Conditional Logic
**Source:** Inspired by LeetCode SQL

---

## Challenge Goal

Your task is to calculate two analytical metrics for each query:

1. **Query Quality**
   The average of `(rating / position)` for a given `query_name`.

2. **Poor Query Percentage**
   The percentage of queries where `rating < 3`.

You must return both metrics **rounded to 2 decimal places**, grouped by `query_name`.

---

## Table Schema

### Table: Queries

| Column Name | Type    |
| ----------- | ------- |
| query_name  | varchar |
| result      | varchar |
| position    | int     |
| rating      | int     |

Additional details:

* Table **may contain duplicate rows**.
* `position` ranges from **1 to 500**.
* `rating` ranges from **1 to 5**.
* A query is considered **poor** if `rating < 3`.

---

## Task Description

For each unique `query_name`, calculate:

| Column Name           | Description                                                  |
| --------------------- | ------------------------------------------------------------ |
| query_name            | Name of the query                                            |
| quality               | Average of (rating / position), rounded to 2 decimals        |
| poor_query_percentage | Percentage of queries with rating < 3, rounded to 2 decimals |

### Requirements

* Use **grouping** by `query_name`.
* Apply **CASE expressions** to count poor queries.
* Compute the **ratio** (rating ÷ position) and average it.
* Consider all rows (even duplicates).
* Output may be returned in any order.

---

## Example Input and Output

### Input

**Queries table:**

| query_name | result           | position | rating |
| ---------- | ---------------- | -------- | ------ |
| Dog        | Golden Retriever | 1        | 5      |
| Dog        | German Shepherd  | 2        | 5      |
| Dog        | Mule             | 200      | 1      |
| Cat        | Shirazi          | 5        | 2      |
| Cat        | Siamese          | 3        | 3      |
| Cat        | Sphynx           | 7        | 4      |

---

### Output

| query_name | quality | poor_query_percentage |
| ---------- | ------- | --------------------- |
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |

---

### Explanation

#### **Dog**

* Quality =
  [
  \frac{(5/1) + (5/2) + (1/200)}{3} = 2.50
  ]
* Poor queries = 1 out of 3
  [
  \frac{1}{3} \times 100 = 33.33
  ]

#### **Cat**

* Quality =
  [
  \frac{(2/5) + (3/3) + (4/7)}{3} = 0.66
  ]
* Poor queries = 1 out of 3
  [
  33.33
  ]

---

## Notes

* This problem tests **analytical SQL**, not simple filtering.
* It requires calculating ratios, averages, and conditional percentages.
* Be careful with rounding — both metrics require **2 decimal places**.

---

## کیفیت کوئری‌ها و درصد کوئری‌های ضعیف

🔹 **سطح دشواری:** متوسط (Medium)  
🔹 **موضوعات:** SQL، Aggregation، Grouping، نسبت‌ها (Ratios)، منطق شرطی  
🔹 **منبع:** الهام‌گرفته از LeetCode SQL  

---

## هدف چالش

🔹 هدف شما محاسبه دو شاخص تحلیلی برای هر کوئری است:

1. **کیفیت کوئری (Query Quality)**  
   میانگین مقدار (rating ÷ position) برای هر query_name مشخص.

2. **درصد کوئری ضعیف (Poor Query Percentage)**  
   درصد کوئری‌هایی که rating < 3 دارند.

🔹 هر دو شاخص باید با **دو رقم اعشار** گرد شوند و بر اساس query_name گروه‌بندی شوند.

---

## ساختار جدول

### جدول Queries

| نام ستون   | نوع داده | توضیح |
|------------|---------|-------|
| query_name | varchar | نام کوئری |
| result     | varchar | نتیجه کوئری |
| position   | int     | موقعیت نتیجه در لیست |
| rating     | int     | امتیاز کوئری |

🔹 جزئیات تکمیلی:  
- جدول ممکن است ردیف‌های تکراری داشته باشد.  
- position بین 1 تا 500 است.  
- rating بین 1 تا 5 است.  
- یک کوئری ضعیف است اگر rating < 3 باشد.

---

## شرح وظیفه

🔹 برای هر query_name یکتا، محاسبه کنید:

| نام ستون                 | توضیح |
|---------------------------|-------|
| query_name               | نام کوئری |
| quality                  | میانگین (rating ÷ position)، گرد شده به 2 رقم اعشار |
| poor_query_percentage    | درصد کوئری‌های ضعیف (rating < 3)، گرد شده به 2 رقم اعشار |

---

## الزامات

- از **GROUP BY query_name** استفاده کنید.  
- از **CASE** برای شمارش کوئری‌های ضعیف استفاده کنید.  
- نسبت **(rating ÷ position)** را محاسبه و میانگین بگیرید.  
- تمام ردیف‌ها (حتی تکراری‌ها) باید لحاظ شوند.  
- ترتیب خروجی اهمیتی ندارد.

---

## مثال ورودی و خروجی

### ورودی

#### Queries

| query_name | result          | position | rating |
|------------|----------------|----------|--------|
| Dog        | Golden Retriever | 1      | 5      |
| Dog        | German Shepherd  | 2      | 5      |
| Dog        | Mule             | 200    | 1      |
| Cat        | Shirazi          | 5      | 2      |
| Cat        | Siamese          | 3      | 3      |
| Cat        | Sphynx           | 7      | 4      |

---

### خروجی

| query_name | quality | poor_query_percentage |
|------------|--------|----------------------|
| Dog        | 2.50   | 33.33                |
| Cat        | 0.66   | 33.33                |

---

## توضیح

**Dog:**  
- کیفیت = [(5/1) + (5/2) + (1/200)] ÷ 3 ≈ 2.50  
- کوئری‌های ضعیف = 1 از 3 → (1 ÷ 3) × 100 ≈ 33.33  

**Cat:**  
- کیفیت = [(2/5) + (3/3) + (4/7)] ÷ 3 ≈ 0.66  
- کوئری‌های ضعیف = 1 از 3 → 33.33  

---

## نکات

- این چالش مهارت‌های SQL تحلیلی را می‌سنجد، نه فیلتر ساده.  
- نیازمند محاسبه نسبت‌ها، میانگین‌ها و درصدهای شرطی است.  
- دقت کنید که **گرد کردن به 2 رقم اعشار** برای هر دو شاخص ضروری است.

