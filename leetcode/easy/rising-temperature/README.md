# Rising Temperature

**Difficulty:** Easy  
**Topics:** SQL, Self Join, Date Comparison  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all the **dates’ IDs** where the temperature was **higher than the previous day**.  

- Compare each day’s temperature with the temperature of **the previous calendar date**.  
- Return the IDs of the days where the temperature increased.  
- The result order does not matter.

---

## Table Schema

### Table: Weather

| Column Name | Type |
|--------------|------|
| id           | int  |
| recordDate   | date |
| temperature  | int  |

- `id` is the primary key (unique for each record).  
- Each record represents the temperature on a specific date.  
- There are no duplicate `recordDate` values in the table.

---

## Task Description

Return a table with one column:

| Column Name | Description |
|--------------|--------------|
| id           | The ID of the day when the temperature was higher than the previous day |

---

## Example Input and Output

### Input

**Weather table:**

| id | recordDate  | temperature |
|----|-------------|-------------|
| 1  | 2015-01-01  | 10          |
| 2  | 2015-01-02  | 25          |
| 3  | 2015-01-03  | 20          |
| 4  | 2015-01-04  | 30          |

### Output

| id |
|----|
| 2  |
| 4  |

**Explanation:**  
- On **2015-01-02**, temperature increased from 10 → 25.  
- On **2015-01-04**, temperature increased from 20 → 30.  
- Therefore, IDs **2** and **4** are included in the result.

---

## Notes

- You can use a **self join** on the Weather table to compare each day with its previous day (`recordDate = previousDate + 1`).  
- Make sure to compare by **date values**, not IDs.  
- The result can be returned in any order.

---

## افزایش دما 

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** SQL، Self Join، مقایسه تاریخ  
🔹 **منبع:** الهام‌گرفته از LeetCode SQL  

---

## هدف چالش

🔹 هدف شما این است که **تمام شناسه‌های روزهایی که دما نسبت به روز قبل افزایش یافته** را پیدا کنید.  

🔹 برای هر روز، دمای آن را با دمای روز قبلی مقایسه کنید.  
🔹 خروجی باید شامل شناسه روزهایی باشد که دما افزایش داشته است.  
🔹 ترتیب نتایج اهمیتی ندارد.

---

## ساختار جدول

### جدول Weather

| نام ستون      | نوع داده | توضیح                             |
|---------------|---------|---------------------------------|
| id            | int     | کلید اصلی (شناسه یکتا برای هر رکورد) |
| recordDate    | date    | تاریخ ثبت رکورد                   |
| temperature   | int     | دما در آن تاریخ                   |

🔹 هر رکورد نشان‌دهنده دما در یک روز خاص است.  
🔹 مقادیر recordDate در جدول تکراری نیستند.

---

## شرح وظیفه

🔹 خروجی باید یک جدول با ستون زیر باشد:

| نام ستون | توضیح                                            |
|----------|-------------------------------------------------|
| id       | شناسه روزهایی که دما نسبت به روز قبل افزایش یافته |

---

## مثال ورودی و خروجی

### ورودی

#### Weather

| id | recordDate | temperature |
|----|------------|-------------|
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |

---

### خروجی

| id |
|----|
| 2  |
| 4  |

---

## توضیح

- در 2015-01-02، دما از 10 → 25 افزایش یافت → شامل می‌شود  
- در 2015-01-04، دما از 20 → 30 افزایش یافت → شامل می‌شود  
- بنابراین شناسه‌های 2 و 4 در نتیجه آورده شده‌اند.

---

## نکات

- می‌توانید از **Self Join** روی جدول Weather استفاده کنید تا هر روز را با روز قبلی مقایسه کنید (recordDate = previousDate + 1).  
- مقایسه را بر اساس مقادیر تاریخ انجام دهید، نه بر اساس شناسه‌ها.  
- ترتیب نتایج اهمیتی ندارد.
