#  Actors and Directors Who Cooperated At Least Three Times

**Difficulty:** Easy  
**Topics:** SQL Aggregation, GROUP BY, HAVING  
**Source:** Inspired by LeetCode SQL  

---

## Table Schema

### Table: ActorDirector

| Column Name | Type | Description |
|--------------|------|-------------|
| actor_id     | int  | ID of the actor |
| director_id  | int  | ID of the director |
| timestamp    | int  | Unique timestamp for each collaboration (primary key) |

---

## Task Description

Write an SQL query to **find all pairs of `(actor_id, director_id)`** where the actor has collaborated with the same director **at least three times**.

Return the result table in any order.

---

## Example

### Input

| actor_id | director_id | timestamp |
|-----------|--------------|-----------|
| 1         | 1            | 0         |
| 1         | 1            | 1         |
| 1         | 1            | 2         |
| 1         | 2            | 3         |
| 1         | 2            | 4         |
| 2         | 1            | 5         |
| 2         | 1            | 6         |

### Output

| actor_id | director_id |
|-----------|--------------|
| 1         | 1            |

---

## Explanation

- The pair `(1, 1)` worked together **3 times** — qualifies ✅  
- The pair `(1, 2)` worked together **2 times** — not enough ❌  
- The pair `(2, 1)` worked together **2 times** — not enough ❌  

Hence, only `(1, 1)` is included in the output.

---

## Notes

- You’ll need to use:
  - `GROUP BY actor_id, director_id`
  - `HAVING COUNT(*) >= 3`
- The order of the results does not matter.

---

## بازیگران و کارگردانانی که حداقل سه بار با هم همکاری کرده‌اند

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** SQL، تجمیع داده‌ها (Aggregation)، GROUP BY، HAVING  
🔹 **منبع:** الهام‌گرفته از چالش‌های SQL در LeetCode  

---

## ساختار جدول

### جدول ActorDirector

| نام ستون    | نوع داده | توضیح                           |
|------------|---------|---------------------------------|
| actor_id   | int     | شناسه بازیگر                   |
| director_id| int     | شناسه کارگردان                 |
| timestamp  | int     | شناسه یکتا برای هر همکاری (کلید اصلی) |

---

## توضیح مسئله

🔹 کوئری SQL باید **تمام جفت‌های (actor_id, director_id)** را پیدا کند که یک بازیگر حداقل سه بار با همان کارگردان همکاری کرده است.

🔹 خروجی جدول می‌تواند به هر ترتیبی بازگردد.

---

## مثال ورودی و خروجی

### ورودی

| actor_id | director_id | timestamp |
|----------|------------|-----------|
| 1        | 1          | 0         |
| 1        | 1          | 1         |
| 1        | 1          | 2         |
| 1        | 2          | 3         |
| 1        | 2          | 4         |
| 2        | 1          | 5         |
| 2        | 1          | 6         |

### خروجی

| actor_id | director_id |
|----------|------------|
| 1        | 1          |

**توضیح:**  
- جفت (1, 1) سه بار با هم کار کرده‌اند — ✅ واجد شرایط  
- جفت (1, 2) دو بار همکاری کرده‌اند — ❌ کافی نیست  
- جفت (2, 1) دو بار همکاری کرده‌اند — ❌ کافی نیست  

بنابراین تنها (1, 1) در خروجی قرار می‌گیرد.

---

## نکات

🔹 برای حل این تمرین باید از ترکیب `GROUP BY actor_id, director_id` و شرط `HAVING COUNT(*) >= 3` استفاده کنید.  
🔹 ترتیب خروجی اهمیتی ندارد.
