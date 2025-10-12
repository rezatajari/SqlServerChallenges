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
