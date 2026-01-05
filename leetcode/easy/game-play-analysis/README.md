# Game Play Analyesis

**Difficulty:** Easy  
**Topics:** SQL, Aggregation, Grouping, Date Functions  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find the **first login date** for each player in the `Activity` table.  

- Each record represents a player’s login session on a specific date using a certain device.  
- A player may have multiple records corresponding to different login dates.  
- You need to return the earliest date (first login) for each player.

---

## Table Schema

### Table: Activity

| Column Name  | Type |
|--------------|------|
| player_id    | int  |
| device_id    | int  |
| event_date   | date |
| games_played | int  |

- `(player_id, event_date)` is the **primary key**.  
- Each row shows a player’s activity for a specific date.  
- `games_played` indicates how many games the player played on that date.  

---

## Task Description

Return a table with the following columns:

| Column Name | Description |
|--------------|--------------|
| player_id    | The unique ID of the player |
| first_login  | The earliest date the player logged in |

---

## Example Input and Output

### Input

**Activity table:**

| player_id | device_id | event_date | games_played |
|------------|------------|-------------|---------------|
| 1          | 2          | 2016-03-01  | 5             |
| 1          | 2          | 2016-05-02  | 6             |
| 2          | 3          | 2017-06-25  | 1             |
| 3          | 1          | 2016-03-02  | 0             |
| 3          | 4          | 2018-07-03  | 5             |

### Output

| player_id | first_login |
|------------|-------------|
| 1          | 2016-03-01  |
| 2          | 2017-06-25  |
| 3          | 2016-03-02  |

**Explanation:**  
- Player **1** first logged in on **2016-03-01**.  
- Player **2** first logged in on **2017-06-25**.  
- Player **3** first logged in on **2016-03-02**.

---

## Notes

- Use **aggregation (`MIN`)** to find the earliest date for each player.  
- The result should include **one row per player**.  
- The order of results does not matter.  
- This challenge reinforces the concept of **grouping by player** and finding **minimum date values**.

---

## تحلیل ورود بازیکنان

**سطح دشواری:** آسان  
**موضوعات:** SQL، تجمیع داده‌ها، GROUP BY، توابع تاریخ  
**منبع:** الهام‌گرفته از مسائل SQL در LeetCode  

---

## هدف مسئله

هدف شما این است که **اولین تاریخ ورود** هر بازیکن را از جدول Activity پیدا کنید.

- هر رکورد نشان‌دهندهٔ یک ورود (Login) بازیکن در یک تاریخ مشخص و با یک دستگاه خاص است.
- هر بازیکن ممکن است چندین رکورد داشته باشد که مربوط به تاریخ‌های مختلف ورود او هستند.
- شما باید **قدیمی‌ترین تاریخ ورود** (اولین لاگین) هر بازیکن را استخراج کنید.

---

## ساختار جدول

### جدول Activity

| نام ستون | نوع داده |
|--------|----------|
| player_id | int |
| device_id | int |
| event_date | date |
| games_played | int |

- کلید اصلی جدول ترکیبی از `(player_id, event_date)` است.
- هر سطر فعالیت یک بازیکن را در یک تاریخ مشخص نشان می‌دهد.
- ستون `games_played` تعداد بازی‌هایی را که بازیکن در آن تاریخ انجام داده مشخص می‌کند.

---

## شرح وظیفه

یک جدول خروجی با ستون‌های زیر برگردانید:

| نام ستون | توضیح |
|--------|-------|
| player_id | شناسه یکتای بازیکن |
| first_login | اولین تاریخی که بازیکن وارد سیستم شده است |

---

## مثال ورودی و خروجی

### ورودی

جدول Activity:

| player_id | device_id | event_date | games_played |
|----------|-----------|------------|--------------|
| 1 | 2 | 2016-03-01 | 5 |
| 1 | 2 | 2016-05-02 | 6 |
| 2 | 3 | 2017-06-25 | 1 |
| 3 | 1 | 2016-03-02 | 0 |
| 3 | 4 | 2018-07-03 | 5 |

---

### خروجی

| player_id | first_login |
|----------|-------------|
| 1 | 2016-03-01 |
| 2 | 2017-06-25 |
| 3 | 2016-03-02 |

---

## توضیح

- بازیکن 1 اولین بار در تاریخ `2016-03-01` وارد شده است.
- بازیکن 2 تنها یک ورود دارد، پس همان تاریخ اولین ورود اوست.
- بازیکن

