# Inserting Data

### Introduction
The `INSERT` statement in SQL is used to add new rows to a table. This section will cover the basic syntax for inserting data, how to insert multiple rows, and how to insert data using a SELECT statement.

### Basic INSERT Statement
The basic `INSERT` statement allows you to add a single new row to a table.

```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```
`table_name` is the name of the table where the data will be inserted, `column1, column2, column3, ...:` are columns in the table where the values will be inserted and `value1, value2, value3, ...:` are values to be inserted into the columns.


**Example**

Insert a new employee into the employees table:

```sql
INSERT INTO employees (first_name, last_name, department_id, salary)
VALUES ('John', 'Doe', 101, 50000);
```

### Inserting Multiple Rows
You can also insert multiple rows into a table with a single `INSERT` statement by separating each set of values with a comma.


```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1a, value2a, value3a, ...),
       (value1b, value2b, value3b, ...),
       ...;
```

**Example**

Insert multiple new employees into the employees table:

```sql
INSERT INTO employees (first_name, last_name, department_id, salary)
VALUES ('Alice', 'Smith', 102, 55000),
       ('Bob', 'Brown', 103, 60000),
       ('Charlie', 'Johnson', 101, 52000);
```

### Inserting Data from Another Table
You can insert data into a table using a `SELECT` statement to copy data from another table.

```sql
INSERT INTO table_name (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM another_table
WHERE condition;
```

**Example**

Copy all employees from the old_employees table to the employees table:

```sql
INSERT INTO employees (first_name, last_name, department_id, salary)
SELECT first_name, last_name, department_id, salary
FROM old_employees;
```

### Practice Exercises

* TODO

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_3/Set_operations.md">Previous: Set Operations</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_4/Updateing_data.md">Next: Updating Data</a>
</p>
