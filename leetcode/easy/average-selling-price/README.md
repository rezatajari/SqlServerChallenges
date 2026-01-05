# Average Selling Price

**Difficulty:** Medium
**Topics:** SQL, Aggregation, Joins, Date Ranges, Weighted Average
**Source:** Inspired by LeetCode SQL

---

## Challenge Goal

Your task is to calculate the **average selling price** for each product based on historical prices and units sold.

* The `Prices` table contains product prices for specific date ranges.
* The `UnitsSold` table contains sales data (product, date, and quantity sold).

Compute the **average selling price** as the **weighted average**:

average_price = Total Price of Product ÷ Total Units Sold

* Round `average_price` to **2 decimal places**.
* If a product has **no sold units**, assume its average selling price is `0`.

Return the result table in any order.

---

## Table Schema

### Table: Prices

| Column Name | Type |
| ----------- | ---- |
| product_id  | int  |
| start_date  | date |
| end_date    | date |
| price       | int  |

* `(product_id, start_date, end_date)` is the **primary key**.
* Each row indicates the price of the product in the period from `start_date` to `end_date`.
* For a given product, date periods **do not overlap**.

### Table: UnitsSold

| Column Name   | Type |
| ------------- | ---- |
| product_id    | int  |
| purchase_date | date |
| units         | int  |

* Table **may contain duplicate rows**.
* Each row indicates the number of units sold for a product on a specific date.

---

## Task Description

Return a table with the following columns:

| Column Name   | Description                             |
| ------------- | --------------------------------------- |
| product_id    | Product ID                              |
| average_price | Weighted average selling price (2 d.p.) |

Requirements:

* Compute a **weighted average** of price × units sold for each product.
* If a product has no sales, set `average_price = 0`.
* Output may be returned in any order.

---

## Example Input and Output

### Input

**Prices table:**

| product_id | start_date | end_date   | price |
| ---------- | ---------- | ---------- | ----- |
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |

**UnitsSold table:**

| product_id | purchase_date | units |
| ---------- | ------------- | ----- |
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |

---

### Output

| product_id | average_price |
| ---------- | ------------- |
| 1          | 6.96          |
| 2          | 16.96         |

---

### Explanation

* **Product 1**:
  Total price = (100 × 5) + (15 × 20) = 500 + 300 = 800
  Total units = 100 + 15 = 115
  Average price = 800 ÷ 115 ≈ 6.96

* **Product 2**:
  Total price = (200 × 15) + (30 × 30) = 3000 + 900 = 3900
  Total units = 200 + 30 = 230
  Average price = 3900 ÷ 230 ≈ 16.96

* Weighted average ensures each sale is properly accounted for according to its quantity.

---

## Notes

* This problem tests **weighted aggregation**, **date range joins**, and **handling missing sales**.
* Ensure proper rounding to **2 decimal places**.
* Products with no sales must return **0** as their average price.

---

## میانگین قیمت فروش (Average Selling Price)

🔹 **سطح دشواری:** متوسط (Medium)  
🔹 **موضوعات:** SQL، تجمیع داده‌ها (Aggregation)، JOIN، بازه‌های زمانی، میانگین موزون (Weighted Average)  
🔹 **منبع:** الهام‌گرفته از LeetCode SQL  

---

## هدف چالش

🔹 هدف شما محاسبه **میانگین قیمت فروش** برای هر محصول بر اساس قیمت‌های تاریخی و تعداد واحدهای فروخته شده است.

🔹 جدول `Prices` شامل قیمت محصولات در بازه‌های زمانی مشخص است.  
🔹 جدول `UnitsSold` شامل داده‌های فروش (محصول، تاریخ، و تعداد واحد فروخته شده) است.

🔹 میانگین قیمت فروش به صورت **میانگین موزون** محاسبه می‌شود:
average_price = مجموع مبلغ کل محصول ÷ مجموع واحدهای فروخته شده


🔹 میانگین قیمت (`average_price`) به 2 رقم اعشار گرد می‌شود.  
🔹 اگر محصولی فروشی نداشته باشد، میانگین قیمت آن 0 در نظر گرفته می‌شود.  
🔹 خروجی می‌تواند به هر ترتیبی بازگردد.

---

## ساختار جدول‌ها

### جدول Prices

| نام ستون     | نوع داده | توضیح |
|-------------|---------|-------|
| product_id  | int     | شناسه محصول |
| start_date  | date    | تاریخ شروع بازه قیمت |
| end_date    | date    | تاریخ پایان بازه قیمت |
| price       | int     | قیمت محصول در بازه زمانی مشخص |

- ترکیب `(product_id, start_date, end_date)` کلید اصلی است.  
- برای یک محصول مشخص، بازه‌های تاریخی هم‌پوشانی ندارند.

### جدول UnitsSold

| نام ستون     | نوع داده | توضیح |
|-------------|---------|-------|
| product_id  | int     | شناسه محصول |
| purchase_date | date  | تاریخ خرید |
| units       | int     | تعداد واحد فروخته شده |

- جدول ممکن است شامل ردیف‌های تکراری باشد.  
- هر ردیف تعداد واحدهای فروخته شده محصول در یک تاریخ مشخص را نشان می‌دهد.

---

## شرح وظیفه

🔹 جدول خروجی باید شامل ستون‌های زیر باشد:

| نام ستون      | توضیح |
|---------------|-------|
| product_id    | شناسه محصول |
| average_price | میانگین موزون قیمت فروش (2 رقم اعشار) |

🔹 نکات مورد نیاز:

- میانگین موزون با ضرب `price × units_sold` برای هر محصول محاسبه شود.  
- اگر محصولی فروشی نداشته باشد، `average_price = 0`.  
- خروجی می‌تواند به هر ترتیبی بازگردد.

---

## مثال ورودی و خروجی

### ورودی

#### جدول Prices

| product_id | start_date | end_date   | price |
|------------|------------|------------|-------|
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |

#### جدول UnitsSold

| product_id | purchase_date | units |
|------------|---------------|-------|
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |

### خروجی

| product_id | average_price |
|------------|---------------|
| 1          | 6.96          |
| 2          | 16.96         |

---

## توضیح محاسبات

- **محصول 1:**  
  مجموع مبلغ کل = (100 × 5) + (15 × 20) = 500 + 300 = 800  
  مجموع واحدها = 100 + 15 = 115  
  میانگین قیمت = 800 ÷ 115 ≈ 6.96

- **محصول 2:**  
  مجموع مبلغ کل = (200 × 15) + (30 × 30) = 3000 + 900 = 3900  
  مجموع واحدها = 200 + 30 = 230  
  میانگین قیمت = 3900 ÷ 230 ≈ 16.96

🔹 میانگین موزون تضمین می‌کند هر فروش متناسب با تعداد آن لحاظ شود.

---

## نکات

- این تمرین مهارت شما را در **تجمیع موزون، JOIN بر اساس بازه‌های تاریخ، و مدیریت محصولات بدون فروش** آزمایش می‌کند.  
- میانگین قیمت باید به **دو رقم اعشار** گرد شود.  
- محصولات بدون فروش باید 0 در خروجی داشته باشند.

