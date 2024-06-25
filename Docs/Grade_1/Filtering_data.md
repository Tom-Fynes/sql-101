# Filtering Data with WHERE and AND

### Introduction
The `WHERE` clause is used to filter records based on specified conditions. This is essential for narrowing down the results to only those that meet specific criteria. This section will cover how to use the `WHERE` clause, the `AND` logical operator, and various comparison operators.

### Using the WHERE Clause
The `WHERE` clause is used to filter records from a table based on a condition. Only the rows that meet the condition are returned in the result set.

#### Syntax
```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

**Example**
Retrieve employees who work in department 101:
```sql
SELECT firstname, lastname
FROM employees
WHERE departmentid = 101;
```

#### Using Comparison Operators
Comparison operators are used in the `WHERE` clause to specify the condition. They compare the value of one expression to another.


* `=` : Equal to
* `<>` or != : Not equal to
* `<` : Less than
* `<=` : Less than or equal to
* `>` : Greater than
* `>=` : Greater than or equal to

**Examples**
Retrieve employees with a salary equal to 50000:

```sql
SELECT firstname, lastname
FROM employees
WHERE salary = 50000;
```
Retrieve employees with a salary not equal to 50000:

```sql
SELECT firstname, lastname
FROM employees
WHERE salary <> 50000;
```
Retrieve employees with a salary less than 50000:

```sql
SELECT firstname, lastname
FROM employees
WHERE salary < 50000;
```
Retrieve employees with a salary less than or equal to 50000:

```sql
SELECT firstname, lastname
FROM employees
WHERE salary <= 50000;
```
Retrieve employees with a salary greater than 50000:

```sql
SELECT firstname, lastname
FROM employees
WHERE salary > 50000;
```
Retrieve employees with a salary greater than or equal to 50000:

```sql
SELECT firstname, lastname
FROM employees
WHERE salary >= 50000;
```

#### Using Logical Operators
Logical operators are used to combine multiple conditions in the `WHERE` clause.

* `AND` : All conditions must be true
* `OR` : At least one condition must be true
* `NOT` : Negates a condition

#### Using AND
The `AND` operator is used to combine multiple conditions, and all conditions must be true for a row to be included in the result set.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2;
```
**Example**
Retrieve employees who work in department 101 and have a salary greater than 50000:

```sql
SELECT firstname, lastname
FROM employees
WHERE departmentid = 101 AND salary > 50000;
```

Combining Multiple Conditions
You can combine multiple AND conditions to further filter the data.

**Example**
Retrieve employees who work in department 101, have a salary greater than 50000, and have more than 5 years of experience:

```sql
SELECT firstname, lastname
FROM employees
WHERE departmentid = 101 AND salary > 50000 AND yearsofexperience > 5;
```

#### Practice Exercises
* TODO


---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_1/Simple_queries.md">Previous: Simple Queries</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_2/sorting_data.md">Next: Sorting Data</a>
</p>
