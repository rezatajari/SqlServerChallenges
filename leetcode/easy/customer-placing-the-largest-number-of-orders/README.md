# Customer Placing the Largest Number of Orders

**Difficulty:** Easy  
**Topics:** SQL, Aggregation, Grouping, Counting  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find the **customer_number** of the customer who has placed the **largest number of orders**.

- Each order in the table belongs to one customer.  
- You must return the customer who has made **more orders than any other**.  
- The problem guarantees that there will always be exactly one such customer.

---

## Table Schema

### Table: Orders

| Column Name     | Type |
|-----------------|------|
| order_number    | int  |
| customer_number | int  |

- `order_number` is the **primary key** (each order is unique).  
- `customer_number` represents the customer who placed that order.  

---

## Task Description

Return a table with the following column:

| Column Name     | Description |
|-----------------|--------------|
| customer_number | The ID of the customer with the most orders. |

---

## Example Input and Output

### Example

**Orders table:**

| order_number | customer_number |
|---------------|----------------|
| 1             | 1              |
| 2             | 2              |
| 3             | 3              |
| 4             | 3              |

**Output:**

| customer_number |
|-----------------|
| 3               |

**Explanation:**  
Customer **3** placed **2 orders**, while customers **1** and **2** each placed **only 1 order**.  
Therefore, the output is `3`.

---

## Notes

- Use **GROUP BY** to count orders per customer.  
- Use **ORDER BY** or a **subquery** to select the customer with the highest count.  
- You do **not** need to handle ties — there will always be one customer with the most orders.

---

## مشتری با بیشترین تعداد سفارش‌ها (Customer Placing the Largest Number of Orders)

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** SQL، تجمیع (Aggregation)، گروه‌بندی (Grouping)، شمارش (Counting)  
🔹 **منبع:** الهام‌گرفته از چالش‌های SQL در LeetCode  

---

## هدف چالش

🔹 هدف این تمرین شناسایی **`customer_number` مشتری‌ای است که بیشترین تعداد سفارش را ثبت کرده است**.

🔹 هر سفارش در جدول متعلق به یک مشتری است.  
🔹 شما باید مشتری‌ای را بازگردانید که **بیشتر از سایر مشتریان سفارش ثبت کرده باشد**.  
🔹 مسئله تضمین می‌کند که همیشه **دقیقاً یک مشتری با بیشترین سفارش وجود دارد**.

---

## ساختار جدول

### جدول Orders

| نام ستون | نوع داده |
|-----------|---------|
| order_number   | int |
| customer_number | int |

🔹 ستون `order_number` کلید اصلی جدول است و هر سفارش یکتا می‌باشد.  
🔹 ستون `customer_number` نشان‌دهنده مشتری ثبت‌کننده آن سفارش است.

---

## توضیح مسئله

🔹 باید جدولی با **یک ستون** برگردانده شود:

| نام ستون | توضیح |
|-----------|-------|
| customer_number | شناسه مشتری با بیشترین تعداد سفارش |

---

## مثال ورودی و خروجی

### ورودی

🔹 جدول `Orders`:

| order_number | customer_number |
|--------------|----------------|
| 1            | 1              |
| 2            | 2              |
| 3            | 3              |
| 4            | 3              |

---

### خروجی

| customer_number |
|----------------|
| 3              |

---

### توضیح

🔹 مشتری شماره 3، **دو سفارش** ثبت کرده است،  
🔹 مشتریان شماره 1 و 2 هرکدام **تنها یک سفارش** ثبت کرده‌اند،  
🔹 بنابراین خروجی `3` است.

---

## نکات مهم

🔹 از `GROUP BY` برای شمارش تعداد سفارش‌ها برای هر مشتری استفاده کنید.  
🔹 برای انتخاب مشتری با بیشترین تعداد سفارش، می‌توانید از `ORDER BY` یا زیرکوئری استفاده کنید.  
🔹 نیازی به مدیریت حالت تساوی نیست — همیشه **یک مشتری با بیشترین سفارش** وجود دارد.
