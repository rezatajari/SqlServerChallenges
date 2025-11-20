# Article Views I

**Difficulty:** Easy  
**Topics:** SQL, Filtering, Self-Join Logic, Deduplication  
**Source:** Inspired by LeetCode SQL  

---

## Challenge Goal

Your task is to identify all **authors who viewed at least one of their own articles**.

A user is considered to have viewed their own article if:

- The `author_id` is equal to the `viewer_id` **for the same row**.

Each row in the table represents a single view event, and there may be duplicate records.

Return the list of such authors, sorted in **ascending order** by their ID.

---

## Table Schema

### Table: Views

| Column Name | Type |
|-------------|------|
| article_id  | int  |
| author_id   | int  |
| viewer_id   | int  |
| view_date   | date |

- This table **does not have a primary key**.  
- Duplicate rows **may exist**.  
- Each row represents one view of an article by a viewer.  
- If `author_id = viewer_id`, the author viewed their own article.

---

## Task Description

Return a table with the following column:

| Column Name | Description |
|-------------|-------------|
| id          | The `author_id` of an author who viewed their own article |

Requirements:

- Each qualifying author should appear **only once**.  
- Results must be sorted by `id` in **ascending** order.  
- Ignore duplicate rows — authors should not be double-counted.

---

## Example Input and Output

### Input

**Views table:**

| article_id | author_id | viewer_id | view_date  |
|------------|-----------|-----------|-------------|
| 1          | 3         | 5         | 2019-08-01  |
| 1          | 3         | 6         | 2019-08-02  |
| 2          | 7         | 7         | 2019-08-01  |
| 2          | 7         | 6         | 2019-08-02  |
| 4          | 7         | 1         | 2019-07-22  |
| 3          | 4         | 4         | 2019-07-21  |
| 3          | 4         | 4         | 2019-07-21  |

### Output

| id |
|----|
| 4  |
| 7  |

### Explanation

- Author **7** viewed their own article (row where author_id = viewer_id = 7).  
- Author **4** also viewed their own article (viewer_id = author_id = 4).  
- Author **3** never viewed their own article.  
- Duplicates do not affect the result — each author is listed once.

---

## Notes

- Check equality between `author_id` and `viewer_id`.  
- Use `DISTINCT` logic to avoid duplicate authors.  
- Sort the final output by `id`.

---
