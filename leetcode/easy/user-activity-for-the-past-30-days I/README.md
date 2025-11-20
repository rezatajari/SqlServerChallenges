# User Activity for the Past 30 Days I

**Difficulty:** Medium  
**Topics:** SQL, Date Filtering, Aggregation, User Activity  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to calculate the **daily active user count** for a 30-day period ending **2019-07-27** (inclusive).

A **user is considered active** on a date if they performed **at least one activity** on that day.  
Any of the following activity types count as valid activity:

- `open_session`  
- `end_session`  
- `scroll_down`  
- `send_message`

Only days where **at least one user was active** should appear in the final result.

---

## Table Schema

### Table: Activity

| Column Name   | Type |
|---------------|------|
| user_id       | int  |
| session_id    | int  |
| activity_date | date |
| activity_type | enum |

- This table **may contain duplicate rows**.  
- `activity_type` is an ENUM category with allowed values:  
  `('open_session', 'end_session', 'scroll_down', 'send_message')`  
- Each session belongs to exactly **one user**.

---

## Task Description

Return a table with the following columns:

| Column Name  | Description |
|--------------|-------------|
| day          | Activity date |
| active_users | Number of distinct users active on that date |

Requirements:

- Include only dates **between 2019-06-28 and 2019-07-27** (30 days).  
- Count each user **once per day**, regardless of how many activities they performed.  
- Exclude days where **no users were active**.

Order of results does not matter.

---

## Example Input and Output

### Input

**Activity table:**

| user_id | session_id | activity_date | activity_type  |
|---------|------------|----------------|-----------------|
| 1       | 1          | 2019-07-20     | open_session    |
| 1       | 1          | 2019-07-20     | scroll_down     |
| 1       | 1          | 2019-07-20     | end_session     |
| 2       | 4          | 2019-07-20     | open_session    |
| 2       | 4          | 2019-07-21     | send_message    |
| 2       | 4          | 2019-07-21     | end_session     |
| 3       | 2          | 2019-07-21     | open_session    |
| 3       | 2          | 2019-07-21     | send_message    |
| 3       | 2          | 2019-07-21     | end_session     |
| 4       | 3          | 2019-06-25     | open_session    |
| 4       | 3          | 2019-06-25     | end_session     |

### Output

| day        | active_users |
|------------|--------------|
| 2019-07-20 | 2            |
| 2019-07-21 | 2            |

### Explanation

- On **2019-07-20**, users **1** and **2** were active → 2 active users  
- On **2019-07-21**, users **2** and **3** were active → 2 active users  
- Activity on 2019-06-25 is **outside the 30-day window**, so it is ignored  
- Days with **zero** active users are not included in the result

---

## Notes

- Focus on filtering dates properly.  
- Remove duplicate activity rows.  
- Count **distinct users per day**.  
- Exclude days with zero activity completely.

---
