# Find Customer Referee

**Difficulty:** Easy  
**Topics:** SQL, Filtering, NULL Handling  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

You need to find the **names of customers** who are **either**:

1. **Not referred by anyone** (`referee_id IS NULL`), **or**  
2. **Referred by a customer whose id is not 2** (`referee_id != 2`)

Return the result in any order.

---

## Table Schema

### Table: Customer

| Column Name | Type    |
|--------------|----------|
| id           | int      |
| name         | varchar  |
| referee_id   | int      |

- `id` is the **primary key** for this table.  
- Each row represents a customer, their name, and the `referee_id` (the id of the customer who referred them).  
- If a customer has no referrer, `referee_id` is `NULL`.

---

## Task Description

Return a table with the following column:

| Column Name | Description |
|--------------|-------------|
| name         | The name of customers who were **not referred by customer 2** or **have no referrer** |

---

## Example Input and Output

### Input

**Customer table:**

| id | name | referee_id |
|----|------|-------------|
| 1  | Will | null        |
| 2  | Jane | null        |
| 3  | Alex | 2           |
| 4  | Bill | null        |
| 5  | Zack | 1           |
| 6  | Mark | 2           |

### Output

| name |
|------|
| Will |
| Jane |
| Bill |
| Zack |

---

## Explanation

- **Will**, **Jane**, and **Bill** have no referrer (`referee_id IS NULL`), so they are included.  
- **Zack** was referred by customer `1`, which is not `2`, so he is also included.  
- **Alex** and **Mark** were referred by customer `2`, so they are excluded.

---

## Notes

- Use a **WHERE** clause with a condition like:  
  `referee_id IS NULL OR referee_id <> 2`
- Remember that in SQL, `NULL` values need to be checked explicitly with `IS NULL`.

---

## یافتن معرف مشتری

**سطح دشواری:** آسان  
**موضوعات:** SQL، فیلتر کردن داده‌ها، کار با NULL  
**منبع:** الهام‌گرفته از مسائل SQL در LeetCode  

---

## هدف مسئله

باید نام مشتریانی را پیدا کنید که یکی از شرایط زیر را دارند:

- **هیچ معرف‌ای ندارند** (مقدار `referee_id` برابر با NULL است)، یا
- توسط مشتری‌ای معرفی شده‌اند که شناسهٔ او **برابر با 2 نیست** (`referee_id != 2`)

نتیجه می‌تواند به هر ترتیبی بازگردانده شود.

---

## ساختار جدول

### جدول Customer

| نام ستون | نوع داده |
|--------|----------|
| id | int |
| name | varchar |
| referee_id | int |

- ستون `id` کلید اصلی جدول است.
- هر سطر نشان‌دهندهٔ یک مشتری، نام او و شناسهٔ معرف اوست.
- اگر مشتری هیچ معرف‌ای نداشته باشد، مقدار `referee_id` برابر **NULL** است.

---

## شرح وظیفه

یک جدول خروجی با ستون زیر برگردانید:

| نام ستون | توضیح |
|--------|-------|
| name | نام مشتریانی که یا معرف ندارند یا توسط مشتری با شناسهٔ 2 معرفی نشده‌اند |

---

## مثال ورودی و خروجی

### ورودی

جدول Customer:

| id | name | referee_id |
|----|------|------------|
| 1 | Will | NULL |
| 2 | Jane | NULL |
| 3 | Alex | 2 |
| 4 | Bill | NULL |
| 5 | Zack | 1 |
| 6 | Mark | 2 |

---

### خروجی

| name |
|------|
| Will |
| Jane |
| Bill |
| Zack |

---

## توضیح

- **Will، Jane و Bill** هیچ معرف‌ای ندارند، بنابراین د

