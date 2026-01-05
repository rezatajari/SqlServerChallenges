# Sales Analysis III

**Difficulty:** Medium  
**Topics:** SQL, Date Filtering, Aggregation, Conditional Logic  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all **products that were sold exclusively in the first quarter (Q1) of 2019**.

Q1 2019 covers the date range:

- **Start:** 2019-01-01  
- **End:** 2019-03-31  

A product qualifies **only if**:
- It has **at least one sale** in Q1 2019, and  
- It has **no sales** outside Q1 2019.

---

## Table Schemas

### Table: Product

| Column Name  | Type    |
|---------------|---------|
| product_id    | int     |
| product_name  | varchar |
| unit_price    | int     |

- `product_id` is the **primary key**.

### Table: Sales

| Column Name | Type    |
|-------------|---------|
| seller_id   | int     |
| product_id  | int     |
| buyer_id    | int     |
| sale_date   | date    |
| quantity    | int     |
| price       | int     |

- `product_id` is a **foreign key** referencing `Product.product_id`.  
- This table **may contain duplicate rows**.  
- Each row represents one sale transaction.

---

## Task Description

Return a table with:

| Column Name | Description |
|-------------|-------------|
| product_id  | ID of the product |
| product_name | Name of the product |

Include only the products that were **sold exclusively during Q1 2019**.

---

## Example Input and Output

### Input

#### Product Table:

| product_id | product_name | unit_price |
|------------|---------------|------------|
| 1          | S8            | 1000       |
| 2          | G4            | 800        |
| 3          | iPhone        | 1400       |

#### Sales Table:

| seller_id | product_id | buyer_id | sale_date  | quantity | price |
|-----------|------------|----------|------------|----------|-------|
| 1         | 1          | 1        | 2019-01-21 | 2        | 2000  |
| 1         | 2          | 2        | 2019-02-17 | 1        | 800   |
| 2         | 2          | 3        | 2019-06-02 | 1        | 800   |
| 3         | 3          | 4        | 2019-05-13 | 2        | 2800  |

### Output

| product_id | product_name |
|------------|--------------|
| 1          | S8           |

### Explanation

- Product **1 (S8)** → Sold **only** in Q1 2019 → **Included**  
- Product **2 (G4)** → Sold in Q1 2019 **and also in June 2019** → **Excluded**  
- Product **3 (iPhone)** → Sold only **after** Q1 2019 → **Excluded**

---

## تحلیل فروش 

🔹 **سطح دشواری:** متوسط (Medium)  
🔹 **موضوعات:** SQL، فیلترینگ تاریخ، تجمیع، منطق شرطی  
🔹 **منبع:** الهام‌گرفته از LeetCode SQL  

---

## هدف چالش

🔹 هدف شما این است که **تمام محصولاتی که تنها در سه‌ماهه اول سال 2019 (Q1 2019) فروخته شده‌اند** را پیدا کنید.  

🔹 محدوده تاریخ سه‌ماهه اول 2019:  
- شروع: 2019-01-01  
- پایان: 2019-03-31  

🔹 یک محصول فقط زمانی واجد شرایط است که:  
1. حداقل یک فروش در Q1 2019 داشته باشد  
2. هیچ فروشی خارج از Q1 2019 نداشته باشد  

---

## ساختار جدول‌ها

### 1. جدول Product

| نام ستون      | نوع داده | توضیح                  |
|---------------|---------|------------------------|
| product_id    | int     | کلید اصلی (شناسه محصول)|
| product_name  | varchar | نام محصول             |
| unit_price    | int     | قیمت واحد محصول       |

---

### 2. جدول Sales

| نام ستون     | نوع داده | توضیح                                           |
|--------------|---------|------------------------------------------------|
| seller_id    | int     | شناسه فروشنده                                  |
| product_id   | int     | شناسه محصول (ارجاع به Product.product_id)     |
| buyer_id     | int     | شناسه خریدار                                   |
| sale_date    | date    | تاریخ فروش                                     |
| quantity     | int     | تعداد واحد فروخته شده                          |
| price        | int     | قیمت کل فروش                                   |

🔹 این جدول ممکن است شامل ردیف‌های تکراری باشد.  
🔹 هر ردیف نشان‌دهنده یک تراکنش فروش است.  

---

## شرح وظیفه

🔹 خروجی باید یک جدول با ستون‌های زیر باشد:

| نام ستون      | توضیح                             |
|---------------|----------------------------------|
| product_id    | شناسه محصول                      |
| product_name  | نام محصول                        |

🔹 فقط محصولاتی که **فقط در سه‌ماهه اول 2019** فروخته شده‌اند، در خروجی نمایش داده شوند.

---

## مثال ورودی و خروجی

### ورودی

#### Product

| product_id | product_name | unit_price |
|------------|--------------|------------|
| 1          | S8           | 1000       |
| 2          | G4           | 800        |
| 3          | iPhone       | 1400       |

#### Sales

| seller_id | product_id | buyer_id | sale_date   | quantity | price |
|-----------|------------|----------|------------|---------|-------|
| 1         | 1          | 1        | 2019-01-21 | 2       | 2000  |
| 1         | 2          | 2        | 2019-02-17 | 1       | 800   |
| 2         | 2          | 3        | 2019-06-02 | 1       | 800   |
| 3         | 3          | 4        | 2019-05-13 | 2       | 2800  |

---

### خروجی

| product_id | product_name |
|------------|--------------|
| 1          | S8           |

---

## توضیح

- **محصول 1 (S8):** تنها در Q1 2019 فروخته شده → شامل می‌شود  
- **محصول 2 (G4):** هم در Q1 2019 و هم در ژوئن 2019 فروخته شده → حذف می‌شود  
- **محصول 3 (iPhone):** فقط بعد از Q1 2019 فروخته شده → حذف می‌شود  
