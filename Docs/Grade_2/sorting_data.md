# Sorting Data

## Introduction
Sorting data is an essential operation in SQL that helps you organize query results in a meaningful order. The `ORDER BY` clause is used to sort the result set by one or more columns, either in ascending or descending order. This section will cover how to use the `ORDER BY` clause effectively.

### Using the ORDER BY Clause
The `ORDER BY` clause is used to sort the result set by one or more columns. By default, it sorts the records in ascending order. You can specify descending order using the `DESC` keyword.

#### Syntax
```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;
```

#### Sorting in Ascending Order
Ascending order is the default sorting order. You can specify it explicitly using the ASC keyword, though it is optional.

**Example**
Retrieve all employees sorted by last name in ascending order:

```sql
SELECT first_name, last_name
FROM employees
ORDER BY last_name ASC;
```

#### Sorting in Descending Order
To sort the result set in descending order, you use the DESC keyword.

**Example**
Retrieve all employees sorted by salary in descending order:

```sql
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC;
```

#### Sorting by Multiple Columns
You can sort the result set by multiple columns. The result set is first sorted by the first column. If there are rows with the same value in the first column, they are then sorted by the second column, and so on.

**Example**
Retrieve all employees sorted by department ID in ascending order and then by salary in descending order:

```sql
SELECT first_name, last_name, department_id, salary
FROM employees
ORDER BY department_id ASC, salary DESC;
```

#### Sorting by Column Index
Instead of specifying column names, you can also use column indexes in the ORDER BY clause. The column index refers to the position of the column in the SELECT list.

**Example**
Retrieve all employees sorted by the second column (last name) in ascending order:

```sql
SELECT first_name, last_name
FROM employees
ORDER BY 2 ASC;
```

#### Practice Exercises
* TODO


---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_1/Filtering_data.md">Previous: Filtering Data</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_2/Limiting_data.md">Next: Limiting Results</a>
</p>
