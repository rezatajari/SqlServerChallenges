# Constraints

This folder contains SQL Server exercises focused on **constraints and rules** that enforce data integrity in tables and views.  
You will practice creating and modifying **default values, check constraints, and view check options**, as well as dropping constraints when needed.

The goal is to **understand how to enforce business rules in the database** and maintain consistent, valid data.

---

## Included Exercises

- **constraint.sql** – Learn how to add constraints to a table.  
  - Example: Add a default value to a column using a **DEFAULT constraint** (`DF_City`).  
  - Key concept: Ensures a column has a default value if no data is provided.

- **check-option.sql** – Learn how to enforce rules in views with **WITH CHECK OPTION**.  
  - Example: `Vw_Employee_With_Option` only allows rows with `ID >= 2`.  
  - Key concept: Ensures that any insert or update through the view respects the view’s filter condition.

- **constraint-add-drop.sql** – Learn how to add and remove **CHECK constraints** to enforce specific conditions.  
  - Example: Restrict `Mobile` length to 8–12 characters, drop the constraint if necessary, and update existing data to comply.  
  - Key concept: Maintain data integrity by controlling what values are allowed in a column.

---

## How to Use

1. Open SQL Server Management Studio (SSMS) or another SQL client.  
2. Navigate to this folder and open a `.sql` file.  
3. Execute the `ALTER TABLE` or `CREATE OR ALTER VIEW` statements to apply constraints.  
4. Test constraints by inserting or updating data to see what is allowed or rejected.  
5. Experiment by:  
   - Modifying constraint conditions,  
   - Dropping constraints and re-adding them,  
   - Updating rows to comply with new rules.

---

## Tips for Learning

- Constraints enforce **business rules and data integrity** — always consider how they affect inserts and updates.  
- Use `WITH CHECK OPTION` in views to prevent invalid data from being inserted or updated through the view.  
- Check the table contents after adding constraints to see which rows comply and which may need updates.  
- Practice adding, modifying, and dropping constraints to understand how rules evolve in real databases.
---

## قوانین و شرایط

این پوشه شامل تمرین‌های SQL Server است که روی **قیود و قوانین** تمرکز دارند تا صحت داده‌ها در جدول‌ها و VIEWها تضمین شود.  
شما تمرین می‌کنید که چگونه مقادیر پیش‌فرض، **CHECK constraints** و گزینه‌های بررسی VIEWها را ایجاد و تغییر دهید، و همچنین قیود را در صورت نیاز حذف کنید.

هدف این بخش، درک نحوه اعمال **قوانین کسب‌وکار در دیتابیس** و حفظ داده‌های معتبر و سازگار است.

---

### تمرین‌های موجود

- `constraint.sql` – اضافه کردن قیود به جدول  
  **مثال:** افزودن مقدار پیش‌فرض به ستون با استفاده از DEFAULT constraint (`DF_City`)  
  **مفهوم کلیدی:** تضمین می‌کند اگر داده‌ای وارد نشود، ستون دارای مقدار پیش‌فرض باشد

- `check-option.sql` – اعمال قوانین در VIEWها با `WITH CHECK OPTION`  
  **مثال:** `Vw_Employee_With_Option` فقط ردیف‌هایی با `ID >= 2` را می‌پذیرد  
  **مفهوم کلیدی:** هر درج یا به‌روزرسانی از طریق VIEW باید با شرایط فیلتر VIEW مطابقت داشته باشد

- `constraint-add-drop.sql` – اضافه یا حذف CHECK constraint برای اعمال شرایط خاص  
  **مثال:** محدود کردن طول شماره موبایل به ۸–۱۲ کاراکتر، حذف قید در صورت نیاز، و به‌روزرسانی داده‌های موجود برای مطابقت  
  **مفهوم کلیدی:** با کنترل مقادیر مجاز یک ستون، صحت داده‌ها حفظ می‌شود

---

### نحوه استفاده

1. SQL Server Management Studio (SSMS) یا هر کلاینت SQL دیگر را باز کنید  
2. به این پوشه بروید و فایل `.sql` را باز کنید  
3. دستورات `ALTER TABLE` یا `CREATE OR ALTER VIEW` را اجرا کنید تا قیود اعمال شود  
4. با درج یا به‌روزرسانی داده‌ها، عملکرد قیود را بررسی کنید

---

### پیشنهادات برای یادگیری

- قیود قوانین کسب‌وکار و صحت داده‌ها را اعمال می‌کنند — همیشه بررسی کنید که چگونه روی درج و به‌روزرسانی تأثیر می‌گذارند  
- از `WITH CHECK OPTION` در VIEWها استفاده کنید تا داده‌های نامعتبر نتوانند از طریق VIEW درج یا به‌روزرسانی شوند  
- پس از افزودن قیود، محتویات جدول را بررسی کنید تا ببینید کدام ردیف‌ها با قوانین مطابقت دارند و کدام نیاز به اصلاح دارند  
- تمرین اضافه کردن، تغییر و حذف قیود، به درک چگونگی تغییر قوانین در دیتابیس‌های واقعی کمک می‌کند

