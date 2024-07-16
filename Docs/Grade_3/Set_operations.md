# Set Operations

## Introduction
Set operations in SQL allow you to combine the results of two or more queries into a single result set. The main set operations are `UNION`, `UNION ALL`, `INTERSECT`, and `EXCEPT` (or `MINUS` in some SQL databases). This section will cover these operations and how to use them effectively.

### UNION
The `UNION` operator combines the results of two or more `SELECT` statements and removes duplicate rows.

```sql
SELECT column1, column2, ...
FROM table1
UNION
SELECT column1, column2, ...
FROM table2;
```

**Example**

Retrieve a list of all distinct department names from two tables:

```sql
SELECT departmentname
FROM departments1
UNION
SELECT departmentname
FROM departments2;
```

### UNION ALL
The `UNION ALL` operator combines the results of two or more `SELECT` statements but includes all duplicates.


```sql
SELECT column1, column2, ...
FROM table1
UNION ALL
SELECT column1, column2, ...
FROM table2;
```

**Example**

Retrieve a list of all department names, including duplicates:

```sql
SELECT departmentname
FROM departments1
UNION ALL
SELECT departmentname
FROM departments2;
```

### INTERSECT
The `INTERSECT` operator returns only the rows that are present in both `SELECT` statements.

```sql
SELECT column1, column2, ...
FROM table1
INTERSECT
SELECT column1, column2, ...
FROM table2;
```

**Example**

Retrieve a list of department names that are common to both tables:

```sql
SELECT departmentname
FROM departments1
INTERSECT
SELECT departmentname
FROM departments2;
```

### EXCEPT (or MINUS)
The `EXCEPT` operator (or `MINUS` in some SQL databases) returns the rows from the first `SELECT` statement that are not present in the second `SELECT` statement.

```sql
SELECT column1, column2, ...
FROM table1
EXCEPT
SELECT column1, column2, ...
FROM table2;
```

**Example**

Retrieve a list of department names that are in the first table but not in the second:

```sql
SELECT departmentname
FROM departments1
EXCEPT
SELECT departmentname
FROM departments2;
```

### Rules for Set Operations
* Column Number and Order: The number of columns and their order must be the same in all `SELECT` statements.
* Column Data Types: The data types of the columns must be compatible.

### Practice Exercises

* Get a list of `firstnames` from employees where the departmentid is `1` and `5`, the list most not have duplicates.
* get a list of names from employess where the departmentid = 2 and they are also in the full employee table.

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_3/subqueries.md">Previous: Subqueries</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_4/Inserting_data.md">Next: Inserting Data</a>
</p>
