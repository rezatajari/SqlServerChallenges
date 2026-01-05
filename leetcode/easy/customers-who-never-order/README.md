# Customers Who Never Order

**Difficulty:** Easy  
**Topics:** SQL, Joins, Subqueries, Filtering  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all **customers who never placed any orders**.  

- Each customer may have zero or more orders.  
- Return the names of customers who **do not appear in the Orders table**.  
- The order of the results does not matter.

---

## Table Schemas

### Table: Customers

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

- `id` is the primary key (unique for each customer).  
- Each row represents a single customer with a unique name and ID.

### Table: Orders

| Column Name | Type |
|-------------|------|
| id          | int  |
| customerId  | int  |

- `id` is the primary key for each order.  
- `customerId` is a foreign key referencing `Customers.id`.  
- Each row represents an order placed by a customer.

---

## Task Description

Return a table with one column:

| Column Name | Description |
|-------------|-------------|
| Customers   | The name of a customer who never placed any order |

---

## Example Input and Output

### Input

**Customers table:**

| id | name  |
|----|-------|
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |

**Orders table:**

| id | customerId |
|----|------------|
| 1  | 3          |
| 2  | 1          |

### Output

| Customers |
|-----------|
| Henry     |
| Max       |

**Explanation:**  
- Joe and Sam have orders, so they are excluded.  
- Henry and Max never placed any order, so their names are included in the result.

---

## Notes

- You may solve this using **LEFT JOIN** with a filter for `NULL` orders, or using a **subquery** with `NOT IN`.  
- Ensure all customers with **no matching order** are returned.  
- The order of the output does not matter.

---

## مشتریانی که هیچ سفارشی ثبت نکرده‌اند 

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** SQL، Joinها، زیرکوئری‌ها، فیلتر کردن داده‌ها  
🔹 **منبع:** الهام‌گرفته از چالش‌های SQL در LeetCode  

---

## هدف چالش

🔹 هدف این تمرین شناسایی **تمام مشتریانی است که هیچ سفارشی ثبت نکرده‌اند**.

🔹 هر مشتری ممکن است:
- هیچ سفارشی نداشته باشد
- یک یا چند سفارش ثبت کرده باشد

🔹 باید **نام مشتریانی** را برگردانید که **در جدول Orders حضور ندارند**.

🔹 ترتیب نمایش نتایج اهمیتی ندارد.

---

## ساختار جداول

### جدول Customers

🔹 **نام جدول:** `Customers`

| نام ستون | نوع داده |
|--------|----------|
| id     | int      |
| name   | varchar  |

🔹 ستون `id` کلید اصلی جدول است و برای هر مشتری یکتا می‌باشد.  
🔹 هر سطر نمایانگر یک مشتری با شناسه و نام منحصر‌به‌فرد است.

---

### جدول Orders

🔹 **نام جدول:** `Orders`

| نام ستون | نوع داده |
|--------|----------|
| id         | int |
| customerId | int |

🔹 ستون `id` کلید اصلی هر سفارش است.  
🔹 ستون `customerId` یک کلید خارجی است که به `Customers.id` اشاره می‌کند.  
🔹 هر سطر نمایانگر یک سفارش ثبت‌شده توسط یک مشتری است.

---

## توضیح مسئله

🔹 باید جدولی با **یک ستون** برگردانده شود:

| نام ستون | توضیح |
|--------|-------|
| Customers | نام مشتریانی که هیچ سفارشی ثبت نکرده‌اند |

---

## مثال ورودی و خروجی

### ورودی

🔹 جدول `Customers`:

| id | name  |
|----|-------|
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |

🔹 جدول `Orders`:

| id | customerId |
|----|------------|
| 1  | 3          |
| 2  | 1          |

---

### خروجی

| Customers |
|-----------|
| Henry     |
| Max       |

---

### توضیح

🔹 مشتریان **Joe** و **Sam** سفارش ثبت کرده‌اند، بنابراین حذف می‌شوند.  
🔹 مشتریان **Henry** و **Max** هیچ سفارشی ثبت نکرده‌اند، پس در خروجی نمایش داده می‌شوند.

---

## نکات مهم

🔹 می‌توانید این مسئله را با یکی از روش‌های زیر حل کنید:
- استفاده از `LEFT JOIN` و فیلتر کردن مقادیر `NULL`
- استفاده از زیرکوئری همراه با `NOT IN`

🔹 مطمئن شوید تمام مشتریانی که **هیچ سفارش متناظری ندارند** در خروجی بازگردانده می‌شوند.

🔹 ترتیب سطرهای خروجی اهمیتی ندارد.
