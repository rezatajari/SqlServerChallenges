# Classes with At Least 5 Students

**Difficulty:** Easy  
**Topics:** SQL, Aggregation, Grouping, Filtering  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find all **classes** that have **at least five students** enrolled.

- Each student is enrolled in exactly one class per row.  
- Count the number of students per class.  
- Return only the classes that meet or exceed the threshold of five students.  
- The order of results does not matter.

---

## Table Schema

### Table: Courses

| Column Name | Type    |
|-------------|---------|
| student     | varchar |
| class       | varchar |

- `(student, class)` is the primary key.  
- Each row indicates that a student is enrolled in a specific class.

---

## Task Description

Return a table with one column:

| Column Name | Description |
|-------------|-------------|
| class       | The name of the class with at least five students |

---

## Example Input and Output

### Input

**Courses table:**

| student | class    |
|---------|----------|
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
| G       | Math     |
| H       | Math     |
| I       | Math     |

### Output

| class |
|-------|
| Math  |

**Explanation:**  
- Math has **6 students**, so it is included.  
- English, Biology, and Computer have fewer than 5 students, so they are excluded.

---

## Notes

- Use **GROUP BY** on the `class` column to count the number of students.  
- Use a **HAVING** clause to filter classes with **count >= 5**.  
- Only return the class names, not the student names.  
- The order of the results does not matter.

---

## کلاس‌هایی با حداقل ۵ دانش‌آموز

🔹 **سطح دشواری:** آسان (Easy)  
🔹 **موضوعات:** SQL، تجمیع داده‌ها (Aggregation)، گروه‌بندی (Grouping)، فیلترینگ (Filtering)  
🔹 **منبع:** الهام‌گرفته از چالش‌های SQL در LeetCode  

---

## هدف چالش

🔹 هدف این تمرین این است که **تمام کلاس‌هایی که حداقل پنج دانش‌آموز دارند را پیدا کنید**.

🔹 هر دانش‌آموز دقیقاً در یک کلاس ثبت‌نام شده است.  
🔹 تعداد دانش‌آموزان هر کلاس را محاسبه کنید.  
🔹 تنها کلاس‌هایی را برگردانید که تعداد دانش‌آموزان آن‌ها **برابر یا بیشتر از پنج نفر** باشد.  
🔹 ترتیب نتایج اهمیت ندارد.

---

## ساختار جدول

### جدول Courses

| نام ستون | نوع داده |
|----------|---------|
| student  | varchar |
| class    | varchar |

🔹 کلید اصلی جدول `(student, class)` است.  
🔹 هر ردیف نشان‌دهنده ثبت‌نام یک دانش‌آموز در یک کلاس خاص است.

---

## توضیح مسئله

🔹 باید یک **کوئری SQL** بنویسید که بازگرداند:

| نام ستون | توضیح |
|-----------|-------|
| class     | نام کلاسی که حداقل پنج دانش‌آموز دارد |

---

## مثال ورودی و خروجی

### ورودی

#### جدول Courses

| student | class     |
|---------|-----------|
| A       | Math      |
| B       | English   |
| C       | Math      |
| D       | Biology   |
| E       | Math      |
| F       | Computer  |
| G       | Math      |
| H       | Math      |
| I       | Math      |

---

### خروجی

| class |
|-------|
| Math  |

---

### توضیح

🔹 کلاس Math **۶ دانش‌آموز** دارد، بنابراین در نتیجه گنجانده می‌شود.  
🔹 کلاس‌های English، Biology و Computer کمتر از ۵ دانش‌آموز دارند و حذف می‌شوند.

---

## نکات و پیشنهادها

🔹 از `GROUP BY` روی ستون `class` برای شمارش تعداد دانش‌آموزان استفاده کنید.  
🔹 از `HAVING` برای فیلتر کردن کلاس‌هایی که تعداد دانش‌آموزان >= ۵ است استفاده کنید.  
🔹 تنها نام کلاس‌ها را برگردانید، نام دانش‌آموزان نیاز نیست.  
🔹 ترتیب نتایج اهمیتی ندارد.
