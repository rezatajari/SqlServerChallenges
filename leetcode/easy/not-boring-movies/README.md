# Not Boring Movies

**Difficulty:** Easy  
**Topics:** SQL Filtering, Sorting, WHERE Clauses  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all **movies** that meet the following conditions:

1. The movie’s `id` is **odd-numbered**.  
2. The movie’s `description` is **not "boring"**.  

Return the result table **ordered by `rating` in descending order**.

---

## Table Schema

### Table: Cinema

| Column Name | Type    | Description |
|--------------|---------|-------------|
| id           | int     | Unique movie identifier (primary key) |
| movie        | varchar | Name of the movie |
| description  | varchar | Short description or genre |
| rating       | float   | Rating from 0 to 10 (2 decimal places) |

---

## Task Description

Return all columns (`id`, `movie`, `description`, `rating`) for movies that satisfy:

- `id` is **odd** (e.g., 1, 3, 5, …).  
- `description` is **not equal to "boring"** (case-sensitive comparison).  

Sort the results by **`rating` in descending order** (highest-rated first).

---

## Example Input and Output

### Example 1

**Input:**

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | irish      | boring      | 6.2    |
| 4  | Ice song   | Fantacy     | 8.6    |
| 5  | House card | Interesting | 9.1    |

**Output:**

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |

**Explanation:**  
- Movies with **odd IDs** are `1`, `3`, and `5`.  
- Movie `3` has a description `"boring"`, so it’s excluded.  
- The remaining movies (`1` and `5`) are sorted by rating from **highest to lowest**.

---

## Notes

- Use the **modulus operator (`%`)** to check for odd IDs (`id % 2 = 1`).  
- Use a **WHERE clause** to filter out `"boring"` descriptions.  
- Apply **ORDER BY rating DESC** to sort results.  
- Case sensitivity may depend on your SQL collation settings — ensure `"boring"` matches exactly.
```
```
## فیلم‌های غیرکسل‌کننده

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** فیلتر کردن در SQL، مرتب‌سازی، WHERE Clause  
🔹 **منبع:** الهام‌گرفته از LeetCode SQL  

---

## هدف مسئله (Challenge Goal)

هدف شما این است که تمام فیلم‌هایی را پیدا کنید که **هم‌زمان** شرایط زیر را داشته باشند:

- شناسهٔ فیلم (**id**) عدد **فرد** باشد.
- مقدار ستون **description** برابر با `"boring"` نباشد.
- نتیجه نهایی بر اساس **rating** به‌صورت **نزولی** مرتب شود (بالاترین امتیاز در ابتدا).

---

## ساختار جدول

### جدول Cinema

| نام ستون | نوع داده | توضیح |
|---------|----------|-------|
| id | int | شناسه یکتای فیلم (کلید اصلی) |
| movie | varchar | نام فیلم |
| description | varchar | توضیح کوتاه یا ژانر فیلم |
| rating | float | امتیاز فیلم از 0 تا 10 (با دو رقم اعشار) |

---

## شرح وظیفه (Task Description)

تمام ستون‌ها (**id، movie، description، rating**) را برای فیلم‌هایی بازگردانید که:

- مقدار **id** آن‌ها فرد باشد (مانند 1، 3، 5، …).
- مقدار **description** آن‌ها دقیقاً `"boring"` نباشد.
- خروجی بر اساس **rating** به‌صورت نزولی مرتب شده باشد.

---

## مثال ورودی و خروجی

### مثال ۱

#### ورودی

| id | movie | description | rating |
|----|-------|-------------|--------|
| 1 | War | great 3D | 8.9 |
| 2 | Science | fiction | 8.5 |
| 3 | irish | boring | 6.2 |
| 4 | Ice song | Fantacy | 8.6 |
| 5 | House card | Interesting | 9.1 |

---

### خروجی

| id | movie | description | rating |
|----|-------|-------------|--------|
| 5 | House card | Interesting | 9.1 |
| 1 | War | great 3D | 8.9 |

---

## توضیح (Explanation)

- فیلم‌هایی با **id فرد** عبارت‌اند از: 1، 3 و 5  
- فیلم با id = 3 دارای description برابر با `"boring"` است، بنابراین حذف می‌شود  
- فیلم‌های باقی‌مانده (1 و 5) بر اساس **rating** از بیشترین به کمترین مرتب می‌شوند  

---

## نکات (Notes)

- برای تشخیص فرد بودن شناسه، از عملگر **باقی‌مانده (%)** استفاده کنید:
  
id % 2 = 1

- برای حذف فیلم‌های کسل‌کننده، از **WHERE clause** استفاده کنید.
- برای مرتب‌سازی خروجی، از دستور زیر بهره ببرید:

ORDER BY rating DESC

- حساسیت به حروف کوچک و بزرگ در مقایسهٔ `"boring"` ممکن است به تنظیمات **collation** پایگاه داده بستگی داشته باشد؛ مطمئن شوید مقایسه دقیق انجام می‌شود.
