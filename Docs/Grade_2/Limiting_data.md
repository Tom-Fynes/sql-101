# Limiting Data

### Introduction
When working with large datasets, it's often useful to limit the number of rows returned by a query. The `LIMIT` clause is used to specify the number of records to return. This is especially useful for paging through results or for performance optimization. This section will cover how to use the `LIMIT` clause effectively.

#### Using the LIMIT Clause
The `LIMIT` clause is used to constrain the number of rows returned by a query.

```sql
SELECT column1, column2, ...
FROM table_name
LIMIT number;
```

**Example**
Retrieve the first 5 employees:

```sql
SELECT first_name, last_name
FROM employees
LIMIT 5;
```

#### Using LIMIT with OFFSET
The `OFFSET` clause is used in conjunction with `LIMIT` to specify the starting point of the rows to return. This is useful for implementing pagination.

```sql
SELECT column1, column2, ...
FROM table_name
LIMIT number OFFSET offset;
```

**Example**
Retrieve the next 5 employees after skipping the first 10:

```sql
SELECT first_name, last_name
FROM employees
LIMIT 5 OFFSET 10;
```

#### Using LIMIT with ORDER BY
When using `LIMIT`, it is often combined with `ORDER BY` to ensure that the rows returned are in a specific order.

**Example**
Retrieve the top 5 highest-paid employees:

```sql
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;
```

#### Practice Exercises
* TODO


---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_2/sorting_data.md">Previous: Sorting Data</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_2/Basic_functions.md">Next: Basic Functions</a>
</p>
