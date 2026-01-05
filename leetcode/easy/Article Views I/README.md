# Article Views I

**Difficulty:** Easy  
**Topics:** SQL, Filtering, Self-Join Logic, Deduplication  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to identify all **authors who viewed at least one of their own articles**.

A user is considered to have viewed their own article if:

- The `author_id` is equal to the `viewer_id` **for the same row**.

Each row in the table represents a single view event, and there may be duplicate records.

Return the list of such authors, sorted in **ascending order** by their ID.

---

## Table Schema

### Table: Views

| Column Name | Type |
|-------------|------|
| article_id  | int  |
| author_id   | int  |
| viewer_id   | int  |
| view_date   | date |

- This table **does not have a primary key**.  
- Duplicate rows **may exist**.  
- Each row represents one view of an article by a viewer.  
- If `author_id = viewer_id`, the author viewed their own article.

---

## Task Description

Return a table with the following column:

| Column Name | Description |
|-------------|-------------|
| id          | The `author_id` of an author who viewed their own article |

Requirements:

- Each qualifying author should appear **only once**.  
- Results must be sorted by `id` in **ascending** order.  
- Ignore duplicate rows — authors should not be double-counted.

---

## Example Input and Output

### Input

**Views table:**

| article_id | author_id | viewer_id | view_date  |
|------------|-----------|-----------|-------------|
| 1          | 3         | 5         | 2019-08-01  |
| 1          | 3         | 6         | 2019-08-02  |
| 2          | 7         | 7         | 2019-08-01  |
| 2          | 7         | 6         | 2019-08-02  |
| 4          | 7         | 1         | 2019-07-22  |
| 3          | 4         | 4         | 2019-07-21  |
| 3          | 4         | 4         | 2019-07-21  |

### Output

| id |
|----|
| 4  |
| 7  |

### Explanation

- Author **7** viewed their own article (row where author_id = viewer_id = 7).  
- Author **4** also viewed their own article (viewer_id = author_id = 4).  
- Author **3** never viewed their own article.  
- Duplicates do not affect the result — each author is listed once.

---

## Notes

- Check equality between `author_id` and `viewer_id`.  
- Use `DISTINCT` logic to avoid duplicate authors.  
- Sort the final output by `id`.

---

## نویسندگانی که مقاله خود را دیده‌اند

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** SQL، فیلتر کردن داده‌ها (Filtering)، منطق Self-Join، حذف رکوردهای تکراری (Deduplication)  
🔹 **منبع:** الهام‌گرفته از چالش‌های SQL در LeetCode  

---

## هدف چالش

🔹 هدف این تمرین شناسایی **تمام نویسندگانی است که حداقل یک بار مقاله خود را مشاهده کرده‌اند**.

🔹 یک کاربر زمانی مقاله خود را دیده محسوب می‌شود که:

- مقدار `author_id` برابر با `viewer_id` در همان ردیف باشد.  
- هر ردیف در جدول نشان‌دهنده یک رخداد مشاهده است و ممکن است رکوردهای تکراری وجود داشته باشد.

🔹 خروجی باید **لیست نویسندگان** باشد که بر اساس `id` به صورت صعودی مرتب شده‌اند.

---

## ساختار جدول

### جدول Views

| نام ستون    | نوع داده |
|------------|---------|
| article_id | int     |
| author_id  | int     |
| viewer_id  | int     |
| view_date  | date    |

🔹 این جدول کلید اصلی ندارد.  
🔹 ممکن است ردیف‌های تکراری وجود داشته باشد.  
🔹 هر ردیف نشان‌دهنده یک مشاهده مقاله توسط یک کاربر است.  
🔹 اگر `author_id = viewer_id` باشد، نویسنده مقاله خود را مشاهده کرده است.

---

## توضیح مسئله

🔹 کوئری باید یک جدول با ستون زیر برگرداند:

| نام ستون | توضیح |
|-----------|-------|
| id        | `author_id` نویسنده‌ای که مقاله خود را مشاهده کرده است |

### الزامات:

- هر نویسنده واجد شرایط فقط یک بار در خروجی ظاهر شود.  
- نتایج باید بر اساس `id` به ترتیب صعودی مرتب شوند.  
- رکوردهای تکراری نادیده گرفته شوند — نویسندگان نباید دوبار شمرده شوند.

---

## مثال ورودی و خروجی

### ورودی

| article_id | author_id | viewer_id | view_date   |
|------------|-----------|-----------|------------|
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |

### خروجی

| id |
|----|
| 4  |
| 7  |

**توضیح:**  
- نویسنده ۷ مقاله خود را مشاهده کرده است (ردیفی که `author_id = viewer_id = 7`).  
- نویسنده ۴ نیز مقاله خود را مشاهده کرده است (`viewer_id = author_id = 4`).  
- نویسنده ۳ هیچ‌گاه مقاله خود را مشاهده نکرده است.  
- رکوردهای تکراری تأثیری در نتیجه ندارند — هر نویسنده فقط یک بار ذکر شده است.

---

## نکات و پیشنهادها

🔹 مقادیر `author_id` و `viewer_id` را با هم مقایسه کنید.  
🔹 از منطق `DISTINCT` برای حذف نویسندگان تکراری استفاده کنید.  
🔹 خروجی نهایی را بر اساس `id` مرتب کنید.

