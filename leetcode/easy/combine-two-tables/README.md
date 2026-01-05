# Combine Two Tables

**Difficulty:** Easy  
**Topics:** SQL Joins, Data Combination  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to combine two tables — `Person` and `Address` — and display a list of **first name, last name, city, and state** for every person.

If a person does not have an address in the `Address` table, their city and state should appear as `NULL`.

---

## Table Schemas

### Table: Person

| Column Name | Type    |
|--------------|---------|
| personId     | int     |
| lastName     | varchar |
| firstName    | varchar |

- `personId` is the primary key (unique for each person).  
- Contains basic information about each individual.

---

### Table: Address

| Column Name | Type    |
|--------------|---------|
| addressId    | int     |
| personId     | int     |
| city         | varchar |
| state        | varchar |

- `addressId` is the primary key.  
- `personId` references the person from the `Person` table.  
- Contains city and state information.

---

## Task Description

Write an SQL query that returns:

| Column Name | Description |
|--------------|-------------|
| firstName | Person’s first name |
| lastName | Person’s last name |
| city | City name from the Address table (NULL if no address) |
| state | State name from the Address table (NULL if no address) |

The result can be returned in any order.

---

## Example Input and Output

### Input

**Person**

| personId | lastName | firstName |
|-----------|-----------|-----------|
| 1 | Wang | Allen |
| 2 | Alice | Bob |

**Address**

| addressId | personId | city | state |
|------------|-----------|----------------|-------------|
| 1 | 2 | New York City | New York |
| 2 | 3 | Leetcode | California |

---

### Output

| firstName | lastName | city | state |
|------------|-----------|----------------|-------------|
| Allen | Wang | Null | Null |
| Bob | Alice | New York City | New York |

---

### Explanation

- The person **Allen Wang** (`personId = 1`) has no matching address, so `city` and `state` are `NULL`.  
- The person **Bob Alice** (`personId = 2`) has an address in New York City.

---

## Hints

- Consider which type of SQL join includes all rows from one table even if there is no match in the other.
- The join that causes unmatched rows to show as `NULL` is the one you should use.

---

## Suggested Topics to Review

- SQL joins (INNER, LEFT, RIGHT, FULL)  
- Handling `NULL` values in joins  
- Primary and foreign key relationships

---

## ترکیب دو جدول

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** SQL Joins، ترکیب داده‌ها (Data Combination)  
🔹 **منبع:** الهام‌گرفته از چالش‌های SQL در LeetCode  

---

## هدف چالش

🔹 هدف این تمرین **ترکیب دو جدول Person و Address و نمایش فهرستی از نام، نام خانوادگی، شهر و ایالت هر شخص** است.

🔹 اگر شخصی در جدول Address **آدرس ثبت نکرده باشد**، ستون‌های `city` و `state` باید مقدار NULL داشته باشند.

---

## ساختار جدول‌ها

### جدول Person

| نام ستون | نوع داده |
|----------|---------|
| personId | int |
| lastName | varchar |
| firstName | varchar |

🔹 `personId` کلید اصلی جدول است و برای هر شخص یکتا می‌باشد.  
🔹 حاوی اطلاعات پایه هر فرد است.

---

### جدول Address

| نام ستون | نوع داده |
|----------|---------|
| addressId | int |
| personId  | int |
| city      | varchar |
| state     | varchar |

🔹 `addressId` کلید اصلی جدول است.  
🔹 `personId` به `Person.personId` ارجاع دارد.  
🔹 حاوی اطلاعات شهر و ایالت است.

---

## توضیح مسئله

🔹 باید یک **کوئری SQL** بنویسید که بازگرداند:

| نام ستون | توضیح |
|-----------|-------|
| firstName | نام کوچک شخص |
| lastName  | نام خانوادگی شخص |
| city      | نام شهر از جدول Address (NULL اگر آدرس وجود ندارد) |
| state     | نام ایالت از جدول Address (NULL اگر آدرس وجود ندارد) |

🔹 ترتیب نتایج **اهمیت ندارد**.

---

## مثال ورودی و خروجی

### ورودی

#### جدول Person

| personId | lastName | firstName |
|----------|----------|-----------|
| 1        | Wang     | Allen     |
| 2        | Alice    | Bob       |

#### جدول Address

| addressId | personId | city          | state      |
|-----------|----------|---------------|------------|
| 1         | 2        | New York City | New York   |
| 2         | 3        | Leetcode      | California |

---

### خروجی

| firstName | lastName | city          | state    |
|-----------|----------|---------------|---------|
| Allen     | Wang     | NULL          | NULL    |
| Bob       | Alice    | New York City | New York|

---

### توضیح

🔹 شخص Allen Wang (`personId = 1`) **آدرس ثبت نکرده است**، بنابراین `city` و `state` مقدار NULL دارند.  
🔹 شخص Bob Alice (`personId = 2`) **آدرس در New York City** دارد.

---

## نکات و پیشنهادها

🔹 بررسی کنید **کدام نوع JOIN در SQL** همه ردیف‌های یک جدول را حتی در صورت نبود ردیف مرتبط در جدول دیگر شامل می‌شود.  
🔹 JOIN‌ای که باعث نمایش NULL برای ردیف‌های بدون هم‌تراز می‌شود، نوع JOIN مناسب شما است.  

---

### موضوعات پیشنهادی برای مرور

🔹 JOIN‌ها در SQL (INNER, LEFT, RIGHT, FULL)  
🔹 مدیریت مقادیر NULL در JOIN‌ها  
🔹 روابط کلید اصلی و خارجی (Primary and Foreign Key Relationships)

