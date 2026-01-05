# Joins

This folder contains SQL Server exercises focused on **joining tables** to retrieve related data.  
You will practice **INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN** to understand how tables can be combined based on matching columns.

The goal is to **reinforce practical understanding of table relationships** and how to query data across multiple tables.

---

## Included Exercises

- **inner-join.sql** – Learn how to retrieve only the rows that have matching values in both tables.  
  - Example: Combine `Employee` and `People` tables based on `nationalcode` to show common records.  
  - Key concept: Only rows with matching keys in both tables are returned.

- **left-right-full-join.sql** – Learn how to retrieve all rows from one or both tables, with matching data where available.  
  - **LEFT JOIN:** All rows from the left table (`Employee`) and matching rows from the right table (`People`).  
  - **RIGHT JOIN:** All rows from the right table (`People`) and matching rows from the left table (`Employee`).  
  - **FULL JOIN:** All rows from both tables, with matches where available.  

---

## How to Use

1. Open SQL Server Management Studio (SSMS) or another SQL client.  
2. Navigate to this folder and open a `.sql` file.  
3. Execute the `INSERT` statements first to populate the tables with sample data.  
4. Run the JOIN queries to observe the output and how rows are matched.  
5. Experiment by:  
   - Adding more rows to the tables,  
   - Joining on different columns,  
   - Using different types of JOINs to see how the results change.

---

## Tips for Learning

- Always inspect the tables (`SELECT *`) before joining to understand the data.  
- Use **INNER JOIN** when you want only common rows.  
- Use **LEFT JOIN** or **RIGHT JOIN** to keep all rows from one table, even if there’s no match.  
- Use **FULL JOIN** to see all possible rows from both tables.  
- Experiment with multiple columns in the `ON` condition for complex relationships.

---

## Joins

این پوشه شامل تمرین‌های SQL Server است که روی **ترکیب جدول‌ها (JOIN)** تمرکز دارند تا داده‌های مرتبط بازیابی شوند.  
شما با INNER JOIN، LEFT JOIN، RIGHT JOIN و FULL JOIN تمرین می‌کنید تا بفهمید چگونه جدول‌ها بر اساس ستون‌های مشترک با هم ترکیب می‌شوند.

هدف این بخش، تقویت درک عملی از **روابط جدول‌ها** و نحوه پرس‌وجو از چند جدول است.

---

### تمرین‌های موجود

- `inner-join.sql` – بازیابی فقط ردیف‌هایی که در هر دو جدول مقدار مشترک دارند  
  **مثال:** ترکیب جدول‌های Employee و People بر اساس `nationalcode` برای نمایش ردیف‌های مشترک  
  **مفهوم کلیدی:** فقط ردیف‌هایی که کلیدهایشان در هر دو جدول مطابقت دارد بازگردانده می‌شوند

- `left-right-full-join.sql` – بازیابی تمام ردیف‌ها از یک یا هر دو جدول، با داده‌های مطابقت یافته در صورت وجود  

  - **LEFT JOIN:** تمام ردیف‌های جدول چپ (Employee) و ردیف‌های مطابقت یافته از جدول راست (People)  
  - **RIGHT JOIN:** تمام ردیف‌های جدول راست (People) و ردیف‌های مطابقت یافته از جدول چپ (Employee)  
  - **FULL JOIN:** تمام ردیف‌های هر دو جدول، با مطابقت‌ها در صورت وجود

---

### نحوه استفاده

1. SQL Server Management Studio (SSMS) یا هر کلاینت SQL دیگر را باز کنید  
2. به این پوشه بروید و فایل `.sql` را باز کنید  
3. ابتدا دستورهای `INSERT` را اجرا کنید تا جداول با داده نمونه پر شوند  
4. دستورات JOIN را اجرا کنید تا خروجی و نحوه مطابقت ردیف‌ها را مشاهده کنید

---

### پیشنهادات برای یادگیری

- همیشه قبل از JOIN جدول‌ها را با `SELECT *` بررسی کنید تا داده‌ها را بفهمید  
- از **INNER JOIN** زمانی استفاده کنید که فقط ردیف‌های مشترک لازم است  
- از **LEFT JOIN** یا **RIGHT JOIN** برای نگه داشتن همه ردیف‌ها از یک جدول حتی بدون مطابقت استفاده کنید  
- از **FULL JOIN** برای مشاهده تمام ردیف‌های ممکن از هر دو جدول استفاده کنید  
- برای روابط پیچیده، چند ستون را در شرط `ON` امتحان کنید تا نتیجه متفاوت را ببینید
