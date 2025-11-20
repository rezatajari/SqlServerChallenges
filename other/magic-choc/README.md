MagicChoc Database Foundation
Hands-On Exercise: Building the Foundation
This repository demonstrates how to design and implement a reliable database foundation for the MagicChoc company. The exercise focuses on creating two related tables — Departments and Employees — while applying best practices in data types, constraint naming, and referential integrity.

Objectives
Create a new database and schema for HR data.
Define tables with optimized data types to save storage and improve performance.
Apply naming conventions for constraints (PK_, FK_).
Enforce referential integrity using primary and foreign keys.

Step-by-Step Guide
Step 1: Create the Database Structure (DDL)
Define the logical container and set the context.

Step 2: Define Structural Integrity and Naming Standards
Use meaningful names and enforce uniqueness with primary keys.

Step 3: Implement Data Type Optimization and Keys
Choose restrictive data types for efficiency:

SMALLINT for IDs (< 32,767).
BIT for flags (contractor vs. staff).

Step 4: Enforce Referential Integrity (FOREIGN KEY)
Ensure relationships remain valid across tables.

-- Employees linked to Departments

-- Employees linked to their Manager (self-reference)

Outcome
By completing this exercise, you will:

Establish a solid database structure using DDL.
Apply best practices in naming and data type selection.
Guarantee data integrity with PK and FK constraints.
Build a foundation that remains consistent regardless of application logic.

Repository Structure
README.md → Documentation (this file).
scripts/ → SQL scripts for database creation and constraints.

References
Microsoft SQL Server Documentation
Best Practices in Database Design (naming conventions, data type optimization, referential integrity)



