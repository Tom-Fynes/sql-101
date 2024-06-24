# Joins

## Introduction
Joins are used in SQL to combine rows from two or more tables based on a related column between them. Understanding joins is crucial for working with relational databases, as they allow you to retrieve data spread across multiple tables. This section will cover the most common types of joins: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL OUTER JOIN`.

### INNER JOIN
An `INNER JOIN` returns only the rows that have matching values in both tables.

```sql
SELECT columns
FROM table1
INNER JOIN table2 ON table1.common_column = table2.common_column;
```

**Example**
Retrieve employee names and their department names:

```sql
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;
```

### LEFT JOIN (or LEFT OUTER JOIN)
A `LEFT JOIN` returns all rows from the left table and the matched rows from the right table. If no match is found, `NULL` values are returned for columns from the right table.

```sql
SELECT columns
FROM table1
LEFT JOIN table2 ON table1.common_column = table2.common_column;
```

**Example**
Retrieve all employees and their department names, including those without a department:

```sql
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id;
```

### RIGHT JOIN (or RIGHT OUTER JOIN)
A `RIGHT JOIN` returns all rows from the right table and the matched rows from the left table. If no match is found, `NULL` values are returned for columns from the left table.

```sql
SELECT columns
FROM table1
RIGHT JOIN table2 ON table1.common_column = table2.common_column;
```

**Example**
Retrieve all departments and their employees, including departments with no employees:

```sql
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.department_id;
```

### FULL OUTER JOIN
A `FULL OUTER JOIN` returns all rows when there is a match in either table. If there is no match, `NULL` values are returned for the columns from the table without a match.

```sql
SELECT columns
FROM table1
FULL OUTER JOIN table2 ON table1.common_column = table2.common_column;
```

**Example**
Retrieve all employees and departments, including those without matches:

```sql
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
FULL OUTER JOIN departments ON employees.department_id = departments.department_id;
```

### Practice Exercises
* TODO


---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_2/Alias.md">Previous: Aliasing</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_3/Aggregation.md">Next: Aggregate Functions</a>
</p>
