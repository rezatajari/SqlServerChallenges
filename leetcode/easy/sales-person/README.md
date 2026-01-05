# Sales Person

**Difficulty:** Medium  
**Topics:** SQL, Joins, Filtering, Subqueries  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find the **names of all salespersons** who did **not** have any orders related to the company named **"RED"**.

- Each salesperson may have zero or more orders in the `Orders` table.  
- Only include salespersons who **have no orders linked to the company "RED"**.  
- The order of results does not matter.

---

## Table Schemas

### Table: SalesPerson

| Column Name     | Type    |
|-----------------|---------|
| sales_id        | int     |
| name            | varchar |
| salary          | int     |
| commission_rate | int     |
| hire_date       | date    |

- `sales_id` is the **primary key**.  
- Each row represents a salesperson and their details.

### Table: Company

| Column Name | Type    |
|-------------|---------|
| com_id      | int     |
| name        | varchar |
| city        | varchar |

- `com_id` is the **primary key**.  
- Each row represents a company and its city.

### Table: Orders

| Column Name | Type |
|-------------|------|
| order_id    | int  |
| order_date  | date |
| com_id      | int  |
| sales_id    | int  |
| amount      | int  |

- `order_id` is the primary key.  
- `com_id` references `Company(com_id)`.  
- `sales_id` references `SalesPerson(sales_id)`.  
- Each row represents an order placed by a salesperson for a company.

---

## Task Description

Return a table with one column:

| Column Name | Description |
|-------------|-------------|
| name        | The name of a salesperson with no orders linked to company "RED" |

---

## Example Input and Output

### Input

**SalesPerson table:**

| sales_id | name | salary | commission_rate | hire_date  |
|----------|------|--------|-----------------|------------|
| 1        | John | 100000 | 6               | 4/1/2006   |
| 2        | Amy  | 12000  | 5               | 5/1/2010   |
| 3        | Mark | 65000  | 12              | 12/25/2008 |
| 4        | Pam  | 25000  | 25              | 1/1/2005   |
| 5        | Alex | 5000   | 10              | 2/3/2007   |

**Company table:**

| com_id | name   | city     |
|--------|--------|----------|
| 1      | RED    | Boston   |
| 2      | ORANGE | New York |
| 3      | YELLOW | Boston   |
| 4      | GREEN  | Austin   |

**Orders table:**

| order_id | order_date | com_id | sales_id | amount |
|----------|------------|--------|----------|--------|
| 1        | 1/1/2014   | 3      | 4        | 10000  |
| 2        | 2/1/2014   | 4      | 5        | 5000   |
| 3        | 3/1/2014   | 1      | 1        | 50000  |
| 4        | 4/1/2014   | 1      | 4        | 25000  |

### Output

| name |
|------|
| Amy  |
| Mark |
| Alex |

**Explanation:**  
- John and Pam have orders associated with company "RED".  
- Amy, Mark, and Alex do not have any orders linked to "RED", so they are included.

---

## Notes

- You can solve this using a **LEFT JOIN** combined with a filter for `NULL` values.  
- Alternatively, a **subquery with NOT IN** or `NOT EXISTS` can identify salespersons without orders for "RED".  
- The result should include **all salespersons who never sold to RED**, regardless of their other orders.

---

## فروشنده

🔹 **سطح دشواری:** متوسط (Medium)  
🔹 **موضوعات:** SQL، JOINها، فیلترینگ، Subquery  
🔹 **منبع:** الهام‌گرفته از LeetCode SQL  

---

## هدف چالش

🔹 هدف شما این است که **نام تمام فروشندگانی که هیچ سفارش مرتبط با شرکت "RED" نداشتند** را پیدا کنید.  

🔹 هر فروشنده ممکن است صفر یا چند سفارش در جدول **Orders** داشته باشد.  
🔹 فقط فروشندگانی را شامل کنید که هیچ سفارش مرتبط با شرکت "RED" ندارند.  
🔹 ترتیب خروجی اهمیتی ندارد.

---

## ساختار جدول‌ها

### 1. جدول SalesPerson

| نام ستون         | نوع داده | توضیح                          |
|-----------------|---------|--------------------------------|
| sales_id        | int     | کلید اصلی (شناسه فروشنده)      |
| name            | varchar | نام فروشنده                    |
| salary          | int     | حقوق پایه                       |
| commission_rate | int     | درصد کمیسیون                  |
| hire_date       | date    | تاریخ استخدام                  |

---

### 2. جدول Company

| نام ستون | نوع داده | توضیح                  |
|----------|---------|-----------------------|
| com_id   | int     | کلید اصلی (شناسه شرکت) |
| name     | varchar | نام شرکت              |
| city     | varchar | شهر شرکت              |

---

### 3. جدول Orders

| نام ستون  | نوع داده | توضیح                                         |
|-----------|---------|----------------------------------------------|
| order_id  | int     | کلید اصلی (شناسه سفارش)                       |
| order_date| date    | تاریخ سفارش                                   |
| com_id    | int     | شناسه شرکت (ارجاع به Company.com_id)        |
| sales_id  | int     | شناسه فروشنده (ارجاع به SalesPerson.sales_id) |
| amount    | int     | مبلغ سفارش                                   |

---

## شرح وظیفه

🔹 خروجی باید یک جدول با یک ستون باشد:

| نام ستون | توضیح                                      |
|----------|-------------------------------------------|
| name     | نام فروشنده‌ای که هیچ سفارشی برای "RED" ندارد |

---

## مثال ورودی و خروجی

### ورودی

#### SalesPerson

| sales_id | name | salary | commission_rate | hire_date |
|----------|------|--------|----------------|-----------|
| 1        | John | 100000 | 6              | 4/1/2006  |
| 2        | Amy  | 12000  | 5              | 5/1/2010  |
| 3        | Mark | 65000  | 12             | 12/25/2008|
| 4        | Pam  | 25000  | 25             | 1/1/2005  |
| 5        | Alex | 5000   | 10             | 2/3/2007  |

#### Company

| com_id | name   | city      |
|--------|--------|-----------|
| 1      | RED    | Boston    |
| 2      | ORANGE | New York  |
| 3      | YELLOW | Boston    |
| 4      | GREEN  | Austin    |

#### Orders

| order_id | order_date | com_id | sales_id | amount |
|----------|------------|--------|----------|--------|
| 1        | 1/1/2014   | 3      | 4        | 10000  |
| 2        | 2/1/2014   | 4      | 5        | 5000   |
| 3        | 3/1/2014   | 1      | 1        | 50000  |
| 4        | 4/1/2014   | 1      | 4        | 25000  |

---

### خروجی

| name  |
|-------|
| Amy   |
| Mark  |
| Alex  |

---

## توضیح

- John و Pam سفارشاتی مرتبط با شرکت "RED" داشتند، بنابراین حذف می‌شوند.  
- Amy، Mark و Alex هیچ سفارشی برای "RED" نداشتند، بنابراین در خروجی قرار می‌گیرند.  

---

## نکات

🔹 می‌توان این مسئله را با **LEFT JOIN و فیلتر برای مقادیر NULL** حل کرد.  
🔹 روش دیگر استفاده از **Subquery با NOT IN یا NOT EXISTS** برای یافتن فروشندگانی است که هیچ سفارشی برای "RED" ندارند.  
🔹 خروجی باید شامل تمام فروشندگانی باشد که هیچ فروش به RED نداشته‌اند، صرف‌نظر از سایر سفارشاتشان.
