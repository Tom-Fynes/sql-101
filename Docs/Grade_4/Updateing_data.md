# Updating Data

## Introduction
The `UPDATE` statement in SQL is used to modify existing records in a table. This section will cover the basic syntax for updating data, how to update multiple columns, and how to use the `WHERE` clause to target specific rows.

### Basic UPDATE Statement
The basic `UPDATE` statement allows you to modify one or more columns for all rows in a table.

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

`table_name` is the name of the table where the data will be updated and `column1, column2` are the columns to be updated, with `value1, value2` being the new values for the columns. It is also worth noting that Without a 'WHERE' clause, all rows will be updated.

 
**Example**

Update the salary of all employees in department 101:

```sql
UPDATE employees
SET salary = salary * 1.1
WHERE department_id = 101;
```

### Updating Multiple Columns
You can update multiple columns in a single `UPDATE` statement.

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

**Example**

Update the department and salary of a specific employee:

```sql
UPDATE employees
SET department_id = 102, salary = 60000
WHERE first_name = 'John' AND last_name = 'Doe';
```

### Using the WHERE Clause
The `WHERE` clause is crucial in an `UPDATE` statement to specify which rows should be updated. Without a `WHERE` clause, all rows in the table will be updated.

**Example**

Update the location of a specific department:

```sql
UPDATE departments
SET location = 'New York'
WHERE department_name = 'Sales';
```

### Conditional Updates
You can use conditions in the `WHERE` clause to perform more complex updates.

**Example**

Increase the salary of employees who earn less than $50,000 by 5%:

```sql
UPDATE employees
SET salary = salary * 1.05
WHERE salary < 50000;
```

### Practice Exercises

* TODO
  
---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_4/Inserting_data.md">Previous: Inserting Data</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_4/Deleting_data.md">Next: Deleting Data</a>
</p>
