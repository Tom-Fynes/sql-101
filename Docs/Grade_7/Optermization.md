# Query Optermization

## Introduction
Query optermization involves improving the performance of SQL queries to ensure they run efficiently. This section will cover various techniques and best practices for optimizing SQL queries, including indexing strategies, query rewriting, and analyzing execution plans.

## Importance of Query Optermization
Optimizing queries can significantly reduce execution time and resource consumption, leading to faster performance and better scalability of your database applications.

## Analyzing Execution Plans
The execution plan shows how the SQL database engine executes a query. Understanding and analyzing execution plans can help identify bottlenecks and inefficient operations.

### Viewing Execution Plans
- In DuckDB: Use the `EXPLAIN` statement.
- In MySQL: Use the `EXPLAIN` statement.
- In PostgreSQL: Use the `EXPLAIN` statement.
- In SQL Server: Use the `Display Estimated Execution Plan` option.

**Example**

```sql
EXPLAIN SELECT * FROM employees WHERE departmentid = 1;
```

## Indexing Strategies
Effective use of indexes can greatly improve query performance.

### Create Indexes on Columns Used in WHERE Clauses

```sql
CREATE INDEX idx_department_id ON employees (departmentid);
```

### Create Composite Indexes on Multiple Columns

```sql
CREATE INDEX idx_department_name ON employees (departmentid, lastname);
```

### Avoid Over-Indexing
Having too many indexes can slow down write operations and increase maintenance overhead.

## Query Rewriting Techniques

### Use SELECT Statements Efficiently
Avoid using `SELECT *`; specify only the columns you need.

```sql
-- Inefficient
SELECT
  *
FROM employees;

-- Efficient
SELECT
  firstname,
  lastname,
  departmentid
FROM employees;
```

### Use Joins Instead of Subqueries
Subqueries can be less efficient than joins.

```sql
-- Subquery
SELECT
  firstname,
  lastname
FROM employees
WHERE department_id = (SELECT departmentid FROM departments WHERE departmentname = 'Sales');

-- Join
SELECT
  e.firstname,
  e.lastname
FROM employees e
  JOIN departments d
    ON e.departmentid = d.departmentid
WHERE d.departmentname = 'Sales';
```

### Use WHERE Clauses to Filter Data Early
Filter data as early as possible to reduce the number of rows processed.

```sql
-- Inefficient
SELECT
  *
FROM employees
ORDER BY lastname
WHERE departmentid = 1;

-- Efficient
SELECT
  *
FROM employees
WHERE departmentid = 1
ORDER BY lastname;
```

## Optimizing Joins
Joins can be resource-intensive. Use the following strategies to optimize joins:

### Use Inner Joins Instead of Outer Joins When Possible
Inner joins are generally faster than outer joins.

```sql
-- Outer Join
SELECT
  e.firstname,
  d.departmentname
FROM employees e
  LEFT JOIN departments d
    ON e.departmentid = d.departmentid;

-- Inner Join
SELECT
  e.firstname,
  d.departmentname
FROM employees e
  INNER JOIN departments d
    ON e.departmentid = d.departmentid;
```

### Ensure Columns Used in Joins Are Indexed

```sql
CREATE INDEX idx_department_id ON employees (departmentid);
CREATE INDEX idx_department_id ON departments (departmentid);
```

## Avoiding Common Pitfalls

### Avoid Using Functions on Indexed Columns in WHERE Clauses
Using functions on indexed columns can prevent the use of indexes.

```sql
-- Inefficient
SELECT
  *
FROM employees
WHERE UPPER(lastname) = 'SMITH';

-- Efficient
SELECT
  *
FROM employees
WHERE lastname = 'Smith';
```

## Avoid Wildcards at the Beginning of LIKE Patterns
Wildcards at the beginning of `LIKE` patterns can prevent index use.

```sql
-- Inefficient
SELECT
  *
FROM employees
WHERE lastname LIKE '%mith';

-- Efficient
SELECT
  *
FROM employees
WHERE lastname LIKE 'Smi%';
```

## Practice Exercises

* Go back over the `queries` you have created as part off this course and update these to make them more `efficient`. Use the `execution plans` and `save` the updated query along side you `old version`.

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_7/Indexes.md">Previous: Indexes</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_7/Execution_plans.md">Next: Execution Plans</a>
</p>

