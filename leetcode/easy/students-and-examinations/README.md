# Students and Examinations

## **Problem Description**

You are given three tables: `Students`, `Subjects`, and `Examinations`.
Your task is to find **the number of times each student attended each exam**.
The result should include **all students and all subjects**, even if a student never attended an exam.

---

## **Tables**

### **1. Students**

| Column Name  | Type    |
| ------------ | ------- |
| student_id   | int     |
| student_name | varchar |

* `student_id` is the primary key.
* Each row contains the ID and name of a student.

---

### **2. Subjects**

| Column Name  | Type    |
| ------------ | ------- |
| subject_name | varchar |

* `subject_name` is the primary key.
* Each row contains the name of a subject.

---

### **3. Examinations**

| Column Name  | Type    |
| ------------ | ------- |
| student_id   | int     |
| subject_name | varchar |

* There is **no primary key**; the table may contain duplicates.
* Each row indicates that a student attended the exam of the given subject.

---

## **Requirements**

1. Count the number of times each student attended each subject.
2. Include **all students × all subjects** (even if zero attendance).
3. Return the result **ordered by `student_id` and `subject_name`**.
4. Columns in the output:

| Column Name    | Description                          |
| -------------- | ------------------------------------ |
| student_id     | ID of the student                    |
| student_name   | Name of the student                  |
| subject_name   | Name of the subject                  |
| attended_exams | Number of times the student attended |

---

## **Example**

### Input

**Students**

| student_id | student_name |
| ---------- | ------------ |
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

**Subjects**

| subject_name |
| ------------ |
| Math         |
| Physics      |
| Programming  |

**Examinations**

| student_id | subject_name |
| ---------- | ------------ |
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

---

### Output

| student_id | student_name | subject_name | attended_exams |
| ---------- | ------------ | ------------ | -------------- |
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

---

### **Explanation**

* Each row shows a student × subject combination.
* `attended_exams` counts how many times the student attended that subject’s exam.
* Students who never attended an exam for a subject have `attended_exams = 0`.
* The result includes **all possible student × subject pairs**.

---
## دانش‌آموزان و امتحانات (Students and Examinations)

🔹 **سطح دشواری:** متوسط (Medium)  
🔹 **موضوعات:** SQL، JOINها، Aggregation، شمارش  
🔹 **منبع:** الهام‌گرفته از LeetCode SQL  

---

## شرح مسئله

🔹 سه جدول در اختیار دارید: **Students، Subjects و Examinations**.  
🔹 هدف شما این است که **تعداد دفعات حضور هر دانش‌آموز در هر امتحان را محاسبه کنید**.  
🔹 نتیجه باید شامل **تمام دانش‌آموزان × تمام موضوعات** باشد، حتی اگر دانش‌آموزی در هیچ امتحانی حضور نداشته باشد.

---

## ساختار جدول‌ها

### 1. جدول Students

| نام ستون      | نوع داده | توضیح                  |
|---------------|---------|-----------------------|
| student_id    | int     | کلید اصلی (شناسه دانش‌آموز) |
| student_name  | varchar | نام دانش‌آموز         |

---

### 2. جدول Subjects

| نام ستون      | نوع داده | توضیح                   |
|---------------|---------|------------------------|
| subject_name  | varchar | کلید اصلی (نام موضوع)  |

---

### 3. جدول Examinations

| نام ستون      | نوع داده | توضیح                               |
|---------------|---------|------------------------------------|
| student_id    | int     | شناسه دانش‌آموز                     |
| subject_name  | varchar | نام موضوع                           |

🔹 این جدول ممکن است تکراری باشد و کلید اصلی ندارد.  
🔹 هر ردیف نشان‌دهنده حضور یک دانش‌آموز در امتحان یک موضوع است.

---

## شرح وظیفه

🔹 تعداد دفعات حضور هر دانش‌آموز در هر موضوع را محاسبه کنید.  
🔹 **تمام ترکیب‌های دانش‌آموز × موضوع** را در خروجی داشته باشید، حتی اگر تعداد حضور صفر باشد.  
🔹 خروجی باید مرتب شده باشد بر اساس **student_id و subject_name**.

### ستون‌های خروجی

| نام ستون          | توضیح                                             |
|------------------|--------------------------------------------------|
| student_id        | شناسه دانش‌آموز                                   |
| student_name      | نام دانش‌آموز                                     |
| subject_name      | نام موضوع                                        |
| attended_exams    | تعداد دفعات حضور دانش‌آموز در آن موضوع           |

---

## مثال ورودی و خروجی

### ورودی

#### Students

| student_id | student_name |
|------------|--------------|
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

#### Subjects

| subject_name |
|--------------|
| Math         |
| Physics      |
| Programming  |

#### Examinations

| student_id | subject_name |
|------------|--------------|
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

---

### خروجی

| student_id | student_name | subject_name | attended_exams |
|------------|--------------|--------------|----------------|
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

---

## توضیح

- هر ردیف نشان‌دهنده ترکیب **دانش‌آموز × موضوع** است.  
- ستون `attended_exams` تعداد دفعات حضور دانش‌آموز در امتحان آن موضوع را می‌شمارد.  
- اگر دانش‌آموزی هیچ‌گاه در یک موضوع حضور نداشته باشد، مقدار `attended_exams` برابر صفر خواهد بود.  
- خروجی شامل **تمام ترکیب‌های ممکن دانش‌آموز × موضوع** است.

