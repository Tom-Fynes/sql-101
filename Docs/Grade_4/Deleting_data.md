# Deleting Data

### Introduction
The `DELETE` statement in SQL is used to remove existing records from a table. This section will cover the basic syntax for deleting data, how to use the `WHERE` clause to target specific rows, and considerations for using the `TRUNCATE` statement.

### Basic DELETE Statement
The basic `DELETE` statement allows you to remove one or more rows from a table.

```sql
DELETE FROM table_name
WHERE condition;
```

**Example**

Delete all employees in department 101:

```sql
DELETE FROM employees
WHERE department_id = 101;
```

### Using the WHERE Clause
The `WHERE` clause is crucial in a `DELETE` statement to specify which rows should be deleted. Without a `WHERE` clause, all rows in the table will be deleted.

**Example**

Delete a specific employee by name:

```sql
DELETE FROM employees
WHERE first_name = 'John' AND last_name = 'Doe';
```

### Deleting All Rows
To delete all rows in a table without removing the table itself, omit the `WHERE` clause.

**Example**

Delete all rows from the employees table:

```sql
DELETE FROM employees;
```

### TRUNCATE Statement
The `TRUNCATE` statement removes all rows from a table but is faster than `DELETE` without a `WHERE` clause because it deallocates the data pages used by the table.


```sql
TRUNCATE TABLE table_name;
```

**Example** 

Remove all rows from the employees table:

```sql
TRUNCATE TABLE employees;
```

### Considerations

* Data Integrity: Ensure that deleting rows does not violate any referential integrity constraints. Foreign key relationships can be affected by `DELETE` operations.
* Backup: Always back up your data before performing delete operations, especially if they involve large amounts of data or critical tables.

### Practice Exercises
* TODO
