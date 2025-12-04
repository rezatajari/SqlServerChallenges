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

This README clearly describes the **tables, the problem, expected output, and explanation** for understanding and implementing the query.
