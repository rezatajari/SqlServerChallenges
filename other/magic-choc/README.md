# MagicChoc Database Foundation

Welcome to the MagicChoc Database Foundation Challenge.
Your goal is to design and implement a reliable, efficient, and standards-driven database foundation for MagicChoc’s HR data. You will create structured tables, enforce relationships, and apply professional naming and integrity rules using SQL DDL.

This challenge is designed to strengthen your database-engineering discipline through clear, incremental tasks.

---

## Challenge Objectives

Your mission includes:

1. Creating a new database and HR schema to store personnel data.
2. Designing the core `Departments` and `Employees` tables with clear, meaningful structure.
3. Optimizing data types to minimize storage and maximize performance.
4. Applying consistent naming conventions for constraints (`PK_`, `FK_`).
5. Enforcing referential integrity between departments, employees, and managers.

By completing these objectives, you will produce a clean and trustworthy foundation for HR operations.

---

## Step-by-Step Challenge Instructions

### Step 1 — Create the Database Structure (DDL)

Start by creating the database and schema.
This establishes the environment in which all HR objects will exist.

---

### Step 2 — Apply Structural Integrity and Naming Standards

Define primary keys with intentional constraint names.
Ensure every structural element supports clarity and long-term maintainability.

---

### Step 3 — Implement Data Type Optimization and Keys

Use the most efficient data types appropriate for the expected data ranges.

Examples:

* `SMALLINT` for IDs when values stay below 32,767.
* `BIT` for boolean or flag fields such as contractor status.

Add primary keys using the `PK_` naming convention.

---

### Step 4 — Enforce Referential Integrity (FOREIGN KEY)

Secure the relationships that bind the HR data model:

* Every employee must reference a valid department.
* Employees may reference another employee as their manager (self-referencing key).

These foreign keys ensure the data remains valid and consistent over time.

---

## Challenge Outcome

When you complete this exercise, you will have:

* Constructed a solid database foundation using disciplined DDL.
* Applied best practices in naming conventions and data type selection.
* Enforced primary key and foreign key integrity across all core relationships.
* Built a structure that maintains correctness regardless of application-level behavior.

---

## References

* Microsoft SQL Server Documentation
* Database Design Best Practices: Naming Conventions, Data Type Optimization, Referential Integrity

---

## مبانی پایگاه داده MagicChoc

به چالش **MagicChoc Database Foundation** خوش آمدید.  
هدف شما طراحی و پیاده‌سازی یک پایه‌ی پایگاه داده **قابل اعتماد، بهینه و مبتنی بر استاندارد**  
برای داده‌های منابع انسانی (HR) شرکت MagicChoc است.

در این تمرین، شما با استفاده از دستورات **SQL DDL**:
- جدول‌های ساخت‌یافته ایجاد می‌کنید،
- ارتباط‌ها را اعمال می‌کنید،
- و قوانین حرفه‌ای نام‌گذاری و یکپارچگی داده را پیاده‌سازی می‌کنید.

این چالش برای تقویت **انضباط مهندسی پایگاه داده** طراحی شده و از طریق مراحل شفاف و گام‌به‌گام پیش می‌رود.

---

## اهداف چالش

ماموریت شما شامل موارد زیر است:

- ایجاد یک پایگاه داده جدید و یک schema مخصوص HR برای ذخیره داده‌های پرسنلی  
- طراحی جدول‌های اصلی **Departments** و **Employees** با ساختاری شفاف و معنادار  
- بهینه‌سازی نوع داده‌ها برای کاهش مصرف فضا و افزایش کارایی  
- اعمال قواعد یکسان نام‌گذاری برای قیود (مانند `PK_` و `FK_`)  
- اعمال یکپارچگی ارجاعی بین دپارتمان‌ها، کارمندان و مدیران  

با تکمیل این اهداف، یک پایه‌ی تمیز، قابل اعتماد و حرفه‌ای برای عملیات HR ایجاد خواهید کرد.

---

## دستورالعمل‌های گام‌به‌گام چالش

### گام ۱ — ایجاد ساختار پایگاه داده (DDL)

ابتدا پایگاه داده و schema را ایجاد کنید.  
این مرحله محیطی را فراهم می‌کند که تمام اشیای مربوط به HR در آن قرار خواهند گرفت.

---

### گام ۲ — اعمال یکپارچگی ساختاری و استانداردهای نام‌گذاری

کلیدهای اصلی را با نام‌گذاری هدفمند تعریف کنید.  
اطمینان حاصل کنید که تمام اجزای ساختاری، خوانایی و نگهداری بلندمدت سیستم را پشتیبانی می‌کنند.

---

### گام ۳ — بهینه‌سازی نوع داده‌ها و تعریف کلیدها

از بهینه‌ترین نوع داده متناسب با محدوده‌ی مورد انتظار استفاده کنید.

مثال‌ها:

- استفاده از `SMALLINT` برای شناسه‌ها در صورتی که مقادیر کمتر از 32767 باقی بمانند  
- استفاده از `BIT` برای مقادیر بولی یا فیلدهای پرچم‌دار مانند وضعیت پیمانکاری  
- تعریف کلیدهای اصلی با الگوی نام‌گذاری `PK_`

---

### گام ۴ — اعمال یکپارچگی ارجاعی (FOREIGN KEY)

ارتباط‌هایی که مدل داده HR را به هم متصل می‌کنند ایمن کنید:

- هر کارمند باید به یک دپارتمان معتبر اشاره کند  
- هر کارمند می‌تواند به کارمند دیگری به عنوان مدیر اشاره کند (کلید خودارجاع)  

این کلیدهای خارجی تضمین می‌کنند که داده‌ها در طول زمان معتبر و سازگار باقی بمانند.

---

## خروجی نهایی چالش

پس از تکمیل این تمرین، شما:

- یک پایه‌ی محکم برای پایگاه داده با استفاده از DDL اصولی ساخته‌اید  
- بهترین رویه‌ها در نام‌گذاری و انتخاب نوع داده را به‌کار گرفته‌اید  
- یکپارچگی کلیدهای اصلی و خارجی را در تمام ارتباط‌های اصلی اعمال کرده‌اید  
- ساختاری ایجاد کرده‌اید که مستقل از رفتار لایه‌ی برنامه، صحت داده را حفظ می‌کند  

---

## منابع

- مستندات Microsoft SQL Server  
- بهترین رویه‌های طراحی پایگاه داده:  
  نام‌گذاری، بهینه‌سازی نوع داده، و یکپارچگی ارجاعی

