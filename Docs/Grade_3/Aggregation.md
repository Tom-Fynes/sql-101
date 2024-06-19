# Aggregate Functions

## Introduction
Aggregate functions in SQL are used to perform calculations on multiple rows of a table's column and return a single value. They are commonly used with the `GROUP BY` clause to group the results by one or more columns. This section will cover the most commonly used aggregate functions: `COUNT`, `SUM`, `AVG`, `MAX`, and `MIN`.

### COUNT
The `COUNT` function returns the number of rows that match a specified condition.

```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```

**Example**
Count the number of employees in the company:

```sql
SELECT COUNT(*)
FROM employees;
```

Count the number of employees in department 101:

```sql
SELECT COUNT(*)
FROM employees
WHERE department_id = 101;
```

### SUM
The `SUM` function returns the total sum of a numeric column.

```sql
SELECT SUM(column_name)
FROM table_name
WHERE condition;
```

**Example**
Calculate the total salary of all employees:

```sql
SELECT SUM(salary)
FROM employees;
```

Calculate the total salary of employees in department 101:

```sql
SELECT SUM(salary)
FROM employees
WHERE department_id = 101;
```

### AVG
The `AVG` function returns the average value of a numeric column.

```sql
SELECT AVG(column_name)
FROM table_name
WHERE condition;
```

**Example**
Calculate the average salary of all employees:

```sql
SELECT AVG(salary)
FROM employees;
```

Calculate the average salary of employees in department 101:

```sql
SELECT AVG(salary)
FROM employees
WHERE department_id = 101;
```

### MAX
The `MAX` function returns the highest value in a numeric column.


```sql
SELECT MAX(column_name)
FROM table_name
WHERE condition;
```

**Example**
Find the highest salary among all employees:

```sql
SELECT MAX(salary)
FROM employees;
```

Find the highest salary in department 101:

```sql
SELECT MAX(salary)
FROM employees
WHERE department_id = 101;
```

### MIN
The `MIN` function returns the lowest value in a numeric column.

```sql
SELECT MIN(column_name)
FROM table_name
WHERE condition;
```

**Example**
Find the lowest salary among all employees:

```sql
SELECT MIN(salary)
FROM employees;
```

Find the lowest salary in department 101:

```sql
SELECT MIN(salary)
FROM employees
WHERE department_id = 101;
```

### Using Aggregate Functions with GROUP BY
Aggregate functions are often used with the `GROUP BY` clause to group the results by one or more columns and apply the aggregate function to each group.


```sql
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name;
```

**Example**
Calculate the total salary for each department:

```sql
SELECT department_id, SUM(salary)
FROM employees
GROUP BY department_id;
```

Calculate the average salary for each department:

```sql
SELECT department_id, AVG(salary)
FROM employees
GROUP BY department_id;
```

### Practice Exercises
* TODO
  
