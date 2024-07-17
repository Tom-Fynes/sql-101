# Dropping Tables

## Introduction
The `DROP TABLE` statement in SQL is used to remove an entire table and its data from the database. This section will cover the basic syntax for dropping tables, considerations and precautions, and how to handle dependent objects.

### Basic DROP TABLE Statement
The basic `DROP TABLE` statement removes a table from the database.

```sql
DROP TABLE table_name;
table_name: The name of the table to be dropped.
```

**Example**

Drop the employees table:

```sql
DROP TABLE employees;
```

**Considerations and Precautions**
* Data Loss: Dropping a table deletes all data stored in the table. Ensure you have backups if needed.
* Cascading Effects: Dropping a table can affect other objects like views, indexes, and foreign key constraints that depend on the table.

### Dropping Multiple Tables
You can drop multiple tables in a single statement by separating the table names with commas.

**Example** 

Drop the employees and departments tables:

```sql
DROP TABLE employees, departments;
```

### Using IF EXISTS
The `IF EXISTS` clause prevents errors if the table does not exist.

```sql
DROP TABLE IF EXISTS table_name;
```

**Example** 

Drop the employees table only if it exists:

```sql
DROP TABLE IF EXISTS employees;
```

### Handling Dependent Objects
When dropping a table, be aware of dependent objects such as foreign key constraints, views, and indexes. These objects must be addressed to avoid errors.

**Example**

Drop the employees table and handle dependent objects:

```sql
-- First, drop dependent objects (e.g., foreign key constraints)
ALTER TABLE departments DROP CONSTRAINT fk_department_manager;

-- Then, drop the table
DROP TABLE employees;
```

### Practice Exercises

* The `customer` table needs to be redesigned, `drop` the existing table and create a new version of the customer table. When creating a new version make sure the `foreign key` referrances are also added. Once the new table is created insert `25` customers.
* `Update` any table that the customers interact with makeing sure the `joins` still work, it is okay for some customers to not have any `orders`.  
  

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_5/Altering_tables.md">Previous: Altering Tables</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_5/Constraints.md">Next: Constraints</a>
</p>
