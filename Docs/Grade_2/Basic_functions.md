# Basic Functions

## Introduction
SQL provides a variety of built-in functions to perform calculations on data, modify individual data items, and manipulate outputs. These functions are categorized into aggregate functions and scalar functions. This section will cover the most commonly used basic functions.

### Aggregate Functions
Aggregate functions perform a calculation on a set of values and return a single value. Common aggregate functions include `COUNT`, `SUM`, `AVG`, `MAX`, and `MIN`.

#### COUNT
The `COUNT` function returns the number of rows that match a specified condition.

```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```

**Example**
Count the number of employees in department 101:

```sql
SELECT COUNT(*)
FROM employees
WHERE departmentid = 101;
```

#### SUM
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

#### AVG
The `AVG` function returns the average value of a numeric column.

```sql
SELECT AVG(columnname)
FROM table_name
WHERE condition;
```

**Example**
Calculate the average salary of employees in department 101:

```sql
SELECT AVG(salary)
FROM employees
WHERE departmentid = 101;
```

#### MAX
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

#### MIN
The `MIN` function returns the lowest value in a numeric column.

sql
```
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

### Scalar Functions
Scalar functions return a single value based on the input value. Common scalar functions include `UPPER`, `LOWER`, `LENGTH`, `ROUND`, and `NOW`.

#### UPPER
The `UPPER` function converts a string to uppercase.

```sql
SELECT UPPER(column_name)
FROM table_name;
```

**Example**
Convert employee first names to uppercase:

```sql
SELECT UPPER(firstname)
FROM employees;
```

#### LOWER
The `LOWER` function converts a string to lowercase.

```sql
SELECT LOWER(column_name)
FROM table_name;
```

**Example**
Convert employee last names to lowercase:

```sql
SELECT LOWER(lastname)
FROM employees;
```

#### LENGTH
The `LENGTH` function returns the length of a string.

```sql
SELECT LENGTH(column_name)
FROM table_name;
```

**Example**
Find the length of employee first names:

```sql
SELECT LENGTH(firstname)
FROM employees;
```

#### ROUND
The `ROUND` function rounds a numeric value to the specified number of decimal places.

```sql
SELECT ROUND(column_name, decimals)
FROM table_name;
```

**Example**
Round employee salaries to the nearest thousand:

```sql
SELECT ROUND(salary, -3)
FROM employees;
```

#### NOW
The `NOW` function returns the current date and time.

```sql
SELECT NOW();
```

**Example**
Get the current date and time:

```sql
SELECT NOW();
```

#### Practice Exercises
* `Select` a `count` of all employees
* Find the `sum` of all product prices
* Get the average 'UnitPrice' or orders
* Find the `maximum` `length` of all empolyees `firstname` where the `surname` starts with `s`
  


---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_2/limiting_data.md">Previous: Limiting Results</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_2/Alias.md">Next: Aliasing</a>
</p>
