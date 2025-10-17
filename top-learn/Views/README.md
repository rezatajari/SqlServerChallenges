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
