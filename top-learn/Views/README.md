# Views

This folder contains SQL Server exercises related to **Views** — virtual tables that allow you to display and manage data in a customized way.  
You will learn to create, alter, encrypt, and bind views, as well as experiment with sparse columns in tables.

The purpose of these exercises is to **practice advanced table abstraction techniques** and understand how SQL Server views interact with table structures.

---

## Exercises

### view.sql
- **Goal:** Create a simple view to display selected columns from a table.  
- **Topics covered:** 
  - `CREATE VIEW`  
- **Example:** Create `Vw_Personal_query` showing `lastname` and `mobile` from `Personal`.

---

### alter-view.sql
- **Goal:** Modify an existing view or create it if it does not exist.  
- **Topics covered:** 
  - `CREATE OR ALTER VIEW`  
- **Example:** `Vw_Personal_query` showing `firstName`, `country`, and `mobile` from `Personal`.

---

### schemabinding.sql
- **Goal:** Bind a view to the underlying table structure to prevent table modifications from breaking the view.  
- **Topics covered:** 
  - `WITH SCHEMABINDING`  
  - Understanding dependencies between tables and views.  
- **Example:** `Vw_Employees` view cannot be broken if a bound column is deleted from the table.

---

### encryption-view.sql
- **Goal:** Create encrypted views so that the definition is hidden from users.  
- **Topics covered:** 
  - `WITH ENCRYPTION`  
  - `WITH CHECK OPTION`  
- **Example:** `Vw_Employee_With_Option` ensures users cannot view the underlying query definition.

---

### sparse.sql
- **Goal:** Use **sparse columns** to optimize storage for null values.  
- **Topics covered:** 
  - `ALTER TABLE … ALTER COLUMN … SPARSE`  
  - Checking column properties using `sys.all_columns`.  
- **Example:** Make `Country` column sparse in `Personal` table for better null performance.

---

## How to Use

1. Open SQL Server Management Studio (SSMS) or another SQL client.  
2. Navigate to this folder.  
3. Open a `.sql` file and execute the commands.  
4. Use `SELECT * FROM view_name` after creating the view to verify results.  
5. Experiment by altering columns, adding encryption, or testing `WITH CHECK OPTION` rules.  

---

## Tips for Learning

- Always check the view’s result with `SELECT * FROM view_name` to see changes.  
- Use `CREATE OR ALTER VIEW` to avoid errors if the view already exists.  
- Practice binding views with `SCHEMABINDING` to understand dependency constraints.  
- Explore sparse columns to see performance benefits with null-heavy tables.

---

## Views

این پوشه شامل تمرین‌های SQL Server مرتبط با **Views** است — جدول‌های مجازی که اجازه می‌دهند داده‌ها را به شکل سفارشی نمایش و مدیریت کنید.  
شما یاد خواهید گرفت که چگونه ویو ایجاد، تغییر، رمزگذاری و به ساختار جدول متصل کنید، و همچنین با ستون‌های sparse در جداول آزمایش کنید.

هدف تمرین‌ها: تمرین تکنیک‌های پیشرفته انتزاع جدول و درک تعامل ویوها با ساختار جداول در SQL Server.

---

### تمرین‌های موجود

- `view.sql`  
  هدف: ایجاد یک ویو ساده برای نمایش ستون‌های انتخاب شده از جدول  
  مفاهیم: `CREATE VIEW`  
  مثال: ایجاد `Vw_Personal_query` برای نمایش `lastname` و `mobile` از جدول `Personal`

- `alter-view.sql`  
  هدف: تغییر یک ویو موجود یا ایجاد آن در صورت عدم وجود  
  مفاهیم: `CREATE OR ALTER VIEW`  
  مثال: `Vw_Personal_query` برای نمایش `firstName`, `country` و `mobile`

- `schemabinding.sql`  
  هدف: اتصال ویو به ساختار جدول زیرین برای جلوگیری از تغییراتی که ویو را خراب می‌کند  
  مفاهیم: `WITH SCHEMABINDING`  
  مثال: ویو `Vw_Employees` نمی‌تواند خراب شود اگر ستونی که به آن وابسته است حذف شود

- `encryption-view.sql`  
  هدف: ایجاد ویوهای رمزگذاری شده تا تعریف آن‌ها از کاربران مخفی بماند  
  مفاهیم: `WITH ENCRYPTION`, `WITH CHECK OPTION`  
  مثال: `Vw_Employee_With_Option` تضمین می‌کند کاربران نمی‌توانند تعریف کوئری اصلی را ببینند

- `sparse.sql`  
  هدف: استفاده از ستون‌های sparse برای بهینه‌سازی ذخیره‌سازی مقادیر NULL  
  مفاهیم: `ALTER TABLE … ALTER COLUMN … SPARSE`, بررسی خصوصیات ستون‌ها با `sys.all_columns`  
  مثال: ستون `Country` در جدول `Personal` به صورت sparse برای بهبود عملکرد مقادیر NULL

---

### نحوه استفاده

1. SQL Server Management Studio (SSMS) یا کلاینت SQL دیگر را باز کنید  
2. به این پوشه بروید  
3. یک فایل `.sql` را باز کرده و دستورات را اجرا کنید  
4. بعد از ایجاد ویو از `SELECT * FROM view_name` برای بررسی نتایج استفاده کنید  
5. تغییرات زیر را امتحان کنید:  
   - تغییر ستون‌ها  
   - اضافه کردن رمزگذاری  
   - آزمایش قوانین `WITH CHECK OPTION`  

---

### نکات یادگیری

- همیشه نتایج ویو را با `SELECT * FROM view_name` بررسی کنید  
- از `CREATE OR ALTER VIEW` استفاده کنید تا خطا در صورت وجود ویو قبلی پیش نیاید  
- تمرین کنید که ویوها را با `SCHEMABINDING` متصل کنید تا وابستگی‌ها را درک کنید  
- ستون‌های sparse را بررسی کنید تا مزایای عملکردی جداول با مقادیر NULL زیاد را ببینید
