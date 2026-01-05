# T-SQL Fundamentals Study

This folder contains a structured exploration of T-SQL principles based on the book **"T-SQL Fundamentals" by Itzik Ben-Gan**.

## Project Purpose
The objective of this study is to master the core principles of T-SQL to become a more effective .NET Backend Developer. Modern ORMs like Entity Framework Core abstract much of the database layer, but a deep understanding of T-SQL is essential for:
- Optimizing database performance.
- Troubleshooting inefficient LINQ-to-SQL translations.
- Understanding Logical Query Processing vs. Physical Execution.
- Writing SARGable queries that utilize indexes effectively.

## Learning Methodology
Each exercise is organized into its own directory containing:
1. **Scenario-Based README**: A description of the business problem and the technical "why" behind the solution.
2. **SQL Implementation**: Pure T-SQL code following industry best practices.
3. **Performance Analysis**: Notes on index usage, SARGability, and logical processing.

## Data Source and Environment
The exercises are executed against the **TSQLV6** sample database. 

- **Schema & Sample Data**: The scripts to build the tables and populate the data can be downloaded here: [Microsoft Press Store - T-SQL Fundamentals Code](http://microsoftpressstore.com/TSQLFund4e/downloads)

---

# مطالعه مبانی T-SQL

این پوشه شامل یک مطالعه و تمرین ساختارمند روی اصول **T-SQL** است که بر اساس کتاب  
**T-SQL Fundamentals** نوشته‌ی *Itzik Ben-Gan* انجام شده است.

---

## هدف پروژه

هدف از این مطالعه، تسلط عمیق بر مفاهیم پایه‌ای T-SQL برای تبدیل‌شدن به یک **توسعه‌دهنده Backend دات‌نت مؤثرتر** است.

اگرچه ORMهای مدرن مانند **Entity Framework Core** بخش زیادی از لایه پایگاه داده را انتزاع می‌کنند، اما درک عمیق T-SQL همچنان ضروری است، به‌ویژه برای:

- بهینه‌سازی عملکرد پایگاه داده  
- عیب‌یابی کوئری‌های ناکارآمدی که از LINQ به SQL ترجمه شده‌اند  
- درک تفاوت بین **پردازش منطقی کوئری** و **اجرای فیزیکی آن**  
- نوشتن کوئری‌های **SARGable** که بتوانند از ایندکس‌ها به‌درستی استفاده کنند  
- تصمیم‌گیری آگاهانه در زمان طراحی و تحلیل کوئری‌ها  

---

## روش یادگیری

هر تمرین در یک پوشه‌ی جداگانه سازمان‌دهی شده و شامل بخش‌های زیر است:

- **README مبتنی بر سناریو**  
  توضیح مسئله‌ی واقعی (Business Problem) و چرایی راه‌حل از دید فنی

- **پیاده‌سازی SQL**  
  کدهای خالص T-SQL مطابق با استانداردها و Best Practiceهای صنعتی

- **تحلیل عملکرد**  
  بررسی استفاده از ایندکس‌ها، SARGability و ترتیب پردازش منطقی کوئری‌ها

---

## منبع داده و محیط اجرا

تمام تمرین‌ها روی پایگاه داده نمونه **TSQLV6** اجرا شده‌اند.

- **اسکیما و داده‌های نمونه**  
  اسکریپت‌های ایجاد جداول و پر کردن داده‌ها از طریق لینک زیر قابل دریافت هستند:  
  *[Microsoft Press Store - T-SQL Fundamentals Code](http://microsoftpressstore.com/TSQLFund4e/downloads)

---

### جمع‌بندی

این پوشه صرفاً مجموعه‌ای از کوئری‌ها نیست؛  
بلکه تلاشی هدفمند برای **فهم عمیق رفتار SQL Server**،  
نحوه فکر کردن موتور پایگاه داده  
و نوشتن کوئری‌هایی است که هم **درست** باشند و هم **کارا**.
