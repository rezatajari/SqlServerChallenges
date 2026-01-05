# Filtering Monthly Sales Data

## Scenario
The finance department requires a report of all sales transactions that occurred in a specific month to calculate quarterly commissions. As a backend developer, you need to retrieve specific order details from the database for the month of **June 2021**.

## Technical Requirements
- **Source Table:** `Sales.Orders`
- **Output Columns:** `orderid`, `orderdate`, `custid`, `empid`
- **Target Period:** June 1, 2021, through June 30, 2021.

## Performance & Design Considerations
While there are multiple ways to filter dates in T-SQL, this exercise focuses on **SARGability** (Search Argumentability).

### 1. Logical Query Processing
In T-SQL, the database engine processes this request in a specific order that differs from the syntax order:
1. **FROM**: The engine identifies the `Sales.Orders` table.
2. **WHERE**: The engine filters the rows based on the date range.
3. **SELECT**: The engine picks the four requested columns for the final result set.



### 2. SARGability (Index Optimization)
To ensure high performance, we avoid wrapping the `orderdate` column in functions like `MONTH()` or `YEAR()`. 
- **Inefficient:** `WHERE MONTH(orderdate) = 6` (Forces an Index Scan).
- **Efficient:** `WHERE orderdate >= '20210601' AND orderdate < '20210701'` (Enables an Index Seek).



### 3. Language-Neutral Date Literals
The solution uses the `YYYYMMDD` format. This is the safest format in SQL Server as it is not affected by regional `SET DATEFORMAT` or `SET LANGUAGE` settings, ensuring the backend code is robust across different server environments.

---

# فیلتر کردن داده‌های فروش ماهانه

## سناریو

واحد مالی به گزارشی از تمام تراکنش‌های فروش که در **یک ماه مشخص** انجام شده‌اند نیاز دارد تا بتواند **کمیسیون‌های فصلی** را محاسبه کند.  
به‌عنوان یک توسعه‌دهنده Backend، وظیفه شما استخراج جزئیات سفارش‌ها از پایگاه داده برای **ماه ژوئن ۲۰۲۱** است.

---

## الزامات فنی

- **جدول منبع:** `Sales.Orders`
- **ستون‌های خروجی:**
  - `orderid`
  - `orderdate`
  - `custid`
  - `empid`
- **بازه زمانی هدف:**  
  از `2021-06-01` تا `2021-06-30`

---

## ملاحظات طراحی و عملکرد

اگرچه راه‌های مختلفی برای فیلتر کردن تاریخ در T-SQL وجود دارد، تمرکز این تمرین بر **SARGability (قابلیت استفاده از ایندکس)** است.

---

## 1. پردازش منطقی کوئری (Logical Query Processing)

در T-SQL، موتور پایگاه داده کوئری را دقیقاً به ترتیبی که نوشته شده اجرا نمی‌کند. ترتیب منطقی پردازش به شکل زیر است:

1. **FROM**  
   موتور، جدول `Sales.Orders` را شناسایی می‌کند.

2. **WHERE**  
   ردیف‌ها بر اساس بازه زمانی مشخص فیلتر می‌شوند.

3. **SELECT**  
   فقط ستون‌های مورد نیاز برای خروجی نهایی انتخاب می‌شوند.

درک این ترتیب برای نوشتن کوئری‌های صحیح و قابل بهینه‌سازی اهمیت زیادی دارد.

---

## 2. SARGability (بهینه‌سازی با ایندکس)

برای دستیابی به عملکرد بالا، باید اجازه دهیم موتور SQL Server بتواند از **Index Seek** استفاده کند.  
به همین دلیل، نباید ستون تاریخ را داخل توابع قرار دهیم.

###  روش ناکارآمد
```sql
WHERE MONTH(orderdate) = 6
```

منجر به Index Scan می‌شود

ایندکس‌ها عملاً بلااستفاده می‌شوند

### روش بهینه
```
WHERE orderdate >= '20210601'
AND orderdate <  '20210701'
```
امکان Index Seek را فراهم می‌کند

عملکرد بسیار بهتر روی داده‌های حجیم دارد

## 3. استفاده از تاریخ مستقل از زبان (Language-Neutral Date Literals)

در این راه‌حل از فرمت تاریخ YYYYMMDD استفاده شده است.

## مزایا:

- مستقل از تنظیمات:

    - SET DATEFORMAT

    - SET LANGUAGE

🔹 ایمن برای اجرا در محیط‌های مختلف سرور

🔹 مناسب برای کدهای Backend و محیط‌های Production

## جمع‌بندی

این تمرین نشان می‌دهد که:

🔹 صرفاً «درست کار کردن» یک کوئری کافی نیست

🔹 نحوه نوشتن شرط‌ها تأثیر مستقیم بر عملکرد دارد

🔹 درک SARGability یکی از مهارت‌های کلیدی برای توسعه‌دهندگان Backend حرفه‌ای است

هدف نهایی، نوشتن کوئری‌هایی است که:

خوانا، قابل اعتماد و بهینه باشند.
