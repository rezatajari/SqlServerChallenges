# Game Play Analyesis

**Difficulty:** Easy  
**Topics:** SQL, Aggregation, Grouping, Date Functions  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to find the **first login date** for each player in the `Activity` table.  

- Each record represents a player’s login session on a specific date using a certain device.  
- A player may have multiple records corresponding to different login dates.  
- You need to return the earliest date (first login) for each player.

---

## Table Schema

### Table: Activity

| Column Name  | Type |
|--------------|------|
| player_id    | int  |
| device_id    | int  |
| event_date   | date |
| games_played | int  |

- `(player_id, event_date)` is the **primary key**.  
- Each row shows a player’s activity for a specific date.  
- `games_played` indicates how many games the player played on that date.  

---

## Task Description

Return a table with the following columns:

| Column Name | Description |
|--------------|--------------|
| player_id    | The unique ID of the player |
| first_login  | The earliest date the player logged in |

---

## Example Input and Output

### Input

**Activity table:**

| player_id | device_id | event_date | games_played |
|------------|------------|-------------|---------------|
| 1          | 2          | 2016-03-01  | 5             |
| 1          | 2          | 2016-05-02  | 6             |
| 2          | 3          | 2017-06-25  | 1             |
| 3          | 1          | 2016-03-02  | 0             |
| 3          | 4          | 2018-07-03  | 5             |

### Output

| player_id | first_login |
|------------|-------------|
| 1          | 2016-03-01  |
| 2          | 2017-06-25  |
| 3          | 2016-03-02  |

**Explanation:**  
- Player **1** first logged in on **2016-03-01**.  
- Player **2** first logged in on **2017-06-25**.  
- Player **3** first logged in on **2016-03-02**.

---

## Notes

- Use **aggregation (`MIN`)** to find the earliest date for each player.  
- The result should include **one row per player**.  
- The order of results does not matter.  
- This challenge reinforces the concept of **grouping by player** and finding **minimum date values**.
