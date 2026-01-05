# Tables

This folder contains SQL Server exercises focused on **table management and data manipulation**.  
You will practice creating tables, modifying them, inserting data, updating rows, deleting data, and dropping tables.

The purpose of these exercises is to **reinforce SQL fundamentals by hands-on practice**.

---

## Exercises

### table.sql
- **Goal:** Learn how to create a table, modify columns, and update column definitions.
- **Topics covered:** 
  - `CREATE TABLE`
  - `ALTER TABLE ADD/DROP/ALTER COLUMN`
- **Notes:** Pay attention to `GO` statements, which indicate the end of a batch.

---

### insert.sql
- **Goal:** Add data into an existing table.
- **Topics covered:** 
  - `INSERT INTO`
  - Inserting multiple rows in one statement
- **Example:** Adds sample rows to the `information` table.

---

### delete.sql
- **Goal:** Delete rows from a table based on conditions.
- **Topics covered:** 
  - `DELETE FROM … WHERE …`
- **Example:** Delete a row by ID or by first name.

---

### drop.sql
- **Goal:** Delete an entire table or clear all data from a table.
- **Topics covered:** 
  - `DROP TABLE` – removes the table completely.
  - `DELETE FROM` – removes all rows but keeps the table structure.
- **Example:** 
  - Drop `dbo.information`.
  - Recreate `dbo.Personal1` and insert sample data.
  - Demonstrate deleting all data without dropping the table.

---

### update.sql
- **Goal:** Update existing rows in a table.
- **Topics covered:** 
  - `UPDATE … SET … WHERE …`
  - Updating multiple columns at once
- **Example:** Update a single column for a specific row or multiple columns for a row.

---

### computed-column.sql

* **Goal:** Learn how to create columns that automatically calculate their values based on other columns.
* **Topics covered:** Computed columns, automatic calculations without storing extra data.

---

### declare-variable-as-table.sql

* **Goal:** Use table variables to store temporary data within a session.
* **Topics covered:** Declaring table variables, inserting and selecting rows temporarily.

---

### defination-identity.sql

* **Goal:** Define primary key columns with auto-incrementing identity values.
* **Topics covered:** Identity columns, setting seed and increment, primary key constraints.

---

### identity-insert-manually.sql

* **Goal:** Insert rows manually into an identity column when needed.
* **Topics covered:** Temporarily overriding identity insertion, switching automatic identity back on.

---

### temp-table-local-global.sql

* **Goal:** Learn the difference between local and global temporary tables.
* **Topics covered:** Local temp tables for current session, global temp tables accessible across sessions.

---

## How to Use

1. Open SQL Server Management Studio (SSMS) or another SQL client.  
2. Navigate to this folder.  
3. Open a `.sql` file (e.g., `01_table.sql`) and execute the commands.  
4. Read the comments in the file to understand each step.  
5. Try modifying the commands:  
   - Add extra rows,  
   - Update multiple rows,  
   - Experiment with conditions in `DELETE` and `UPDATE`.  

---

## Tips for Learning

- Always **backup your test tables** before running `DROP TABLE` commands.  
- Use `SELECT * FROM table_name` after `INSERT`, `UPDATE`, or `DELETE` to verify results.  
- Experiment by adding new columns, changing data types, or updating multiple rows at once.  
- Practice **batch execution** using `GO` to understand how SQL Server processes batches.  

---

## Tables

این پوشه شامل تمرین‌های SQL Server است که روی **مدیریت جداول و دستکاری داده‌ها** تمرکز دارند.  
شما تمرین خواهید کرد روی ایجاد جدول، تغییر آن، درج داده، به‌روزرسانی ردیف‌ها، حذف داده و حذف جدول.

هدف این تمرین‌ها تقویت مفاهیم پایه SQL از طریق **تمرین عملی** است.

---

### تمرین‌های موجود

- `table.sql`  
  هدف: ایجاد جدول، تغییر ستون‌ها و به‌روزرسانی تعاریف ستون  
  مفاهیم: `CREATE TABLE`، `ALTER TABLE ADD/DROP/ALTER COLUMN`  
  نکته: به دستورات `GO` دقت کنید که پایان یک دسته (batch) را مشخص می‌کند

- `insert.sql`  
  هدف: اضافه کردن داده به جدول موجود  
  مفاهیم: `INSERT INTO`، درج چند ردیف در یک دستور  

- `delete.sql`  
  هدف: حذف ردیف‌ها با شرایط خاص  
  مفاهیم: `DELETE FROM ... WHERE ...`  

- `drop.sql`  
  هدف: حذف کامل جدول یا پاک کردن همه داده‌ها  
  مفاهیم:  
  - `DROP TABLE` → حذف کامل جدول  
  - `DELETE FROM` → پاک کردن همه داده‌ها اما حفظ ساختار جدول  

- `update.sql`  
  هدف: به‌روزرسانی ردیف‌های موجود  
  مفاهیم: `UPDATE ... SET ... WHERE ...`  
  مثال: به‌روزرسانی یک یا چند ستون برای یک ردیف  

- `computed-column.sql`  
  هدف: ایجاد ستون‌های محاسبه شده که خودکار مقادیرشان را بر اساس ستون‌های دیگر حساب می‌کنند  

- `declare-variable-as-table.sql`  
  هدف: استفاده از متغیر جدول برای ذخیره داده موقت در طول جلسه  

- `defination-identity.sql`  
  هدف: تعریف ستون کلید اصلی با مقادیر اتوماتیک افزایش‌یابنده (IDENTITY)  

- `identity-insert-manually.sql`  
  هدف: درج دستی در ستون IDENTITY در صورت نیاز  

- `temp-table-local-global.sql`  
  هدف: یادگیری تفاوت بین جدول موقت محلی و سراسری  

---

### نحوه استفاده

1. SQL Server Management Studio (SSMS) یا هر کلاینت SQL دیگر را باز کنید  
2. به این پوشه بروید  
3. یک فایل `.sql` را باز کرده و دستورات را اجرا کنید  
4. توضیحات داخل فایل را بخوانید تا هر مرحله را بفهمید  
5. تغییرات زیر را امتحان کنید:  
   - اضافه کردن ردیف‌های اضافی  
   - به‌روزرسانی چند ردیف  
   - آزمایش شرط‌های مختلف در `DELETE` و `UPDATE`  

---

### نکات یادگیری

- قبل از اجرای `DROP TABLE` همیشه از جداول آزمایشی نسخه پشتیبان بگیرید  
- بعد از `INSERT`، `UPDATE` یا `DELETE` از `SELECT * FROM table_name` برای بررسی نتایج استفاده کنید  
- با اضافه کردن ستون‌های جدید، تغییر نوع داده‌ها یا به‌روزرسانی چند ردیف آزمایش کنید  
- اجرای دسته‌ای با `GO` را تمرین کنید تا بفهمید SQL Server چگونه دسته‌ها را پردازش می‌کند
