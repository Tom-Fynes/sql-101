# Altering Tables

## Introduction
The `ALTER TABLE` statement in SQL is used to modify an existing table structure. This section will cover how to add, modify, and drop columns, as well as how to add and drop constraints.

### Adding Columns
To add a new column to an existing table, use the `ADD` clause with the `ALTER TABLE` statement.

```sql
ALTER TABLE table_name
ADD column_name datatype constraint;
```

**Example**

Add a new column email to the employees table:

```sql
ALTER TABLE employees
ADD email VARCHAR(100);
```

### Modifying Columns
To change the data type or constraints of an existing column, use the` MODIFY` or `ALTER COLUMN` clause.

```sql
ALTER TABLE table_name
MODIFY column_name new_datatype new_constraint;
```

**Example**

Modify the salary column in the employees table to ensure it cannot be NULL:

```sql
ALTER TABLE employees
MODIFY salary DECIMAL(10, 2) NOT NULL;
```

### Dropping Columns
To remove a column from an existing table, use the `DROP COLUMN` clause.

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

**Example**

Drop the email column from the employees table:

```sql
ALTER TABLE employees
DROP COLUMN email;
```

### Adding Constraints
To add a new constraint to an existing table, use the `ADD CONSTRAINT` clause.

```sql
ALTER TABLE table_name
ADD CONSTRAINT constraint_name constraint_type (column_name);
```

**Example**

Add a unique constraint to the email column in the employees table:

```sql
ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE (email);
```

### Dropping Constraints
To remove an existing constraint from a table, use the `DROP CONSTRAINT` clause.

```sql
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
```

**Example**

Drop the unique constraint from the email column in the employees table:

```sql
ALTER TABLE employees
DROP CONSTRAINT unique_email;
```

### Renaming Columns and Tables
To rename a column or a table, use the `RENAME` clause.

#### Rename Column

```sql
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;
```

**Example**

Rename the last_name column to surname in the employees table:

```sql
ALTER TABLE employees
RENAME COLUMN lastname TO surname;
```

#### Rename Table

```sql
ALTER TABLE old_table_name
RENAME TO new_table_name;
```

**Example**

Rename the employees table to staff:

```sql
ALTER TABLE employees
RENAME TO staff;
```

### Practice Exercises

* `Alther` the employee table and set the salary to be an `INT` column
* `Alter` the department table and add new column for `department code`. Once this has been done `update` the table to include a `department code` for every table, after completion alter the table again and make this new column a `not null` column.

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_5/Create_tables.md">Previous: Creating Tables</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_5/Droping_Tables.md">Next: Dropping Tables</a>
</p>
