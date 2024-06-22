# Query Optimization

## Introduction
Query optimization involves improving the performance of SQL queries to ensure they run efficiently. This section will cover various techniques and best practices for optimizing SQL queries, including indexing strategies, query rewriting, and analyzing execution plans.

## Importance of Query Optimization
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
EXPLAIN SELECT * FROM employees WHERE department_id = 1;
```

## Indexing Strategies
Effective use of indexes can greatly improve query performance.

### Create Indexes on Columns Used in WHERE Clauses

```sql
CREATE INDEX idx_department_id ON employees (department_id);
```

### Create Composite Indexes on Multiple Columns

```sql
CREATE INDEX idx_department_name ON employees (department_id, last_name);
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
  first_name,
  last_name,
  department_id
FROM employees;
```

### Use Joins Instead of Subqueries
Subqueries can be less efficient than joins.

```sql
-- Subquery
SELECT
  first_name,
  last_name
FROM employees
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Sales');

-- Join
SELECT
  e.first_name,
  e.last_name
FROM employees e
  JOIN departments d
    ON e.department_id = d.department_id
WHERE d.department_name = 'Sales';
```

### Use WHERE Clauses to Filter Data Early
Filter data as early as possible to reduce the number of rows processed.

```sql
-- Inefficient
SELECT
  *
FROM employees
ORDER BY last_name
WHERE department_id = 1;

-- Efficient
SELECT
  *
FROM employees
WHERE department_id = 1
ORDER BY last_name;
```

## Optimizing Joins
Joins can be resource-intensive. Use the following strategies to optimize joins:

### Use Inner Joins Instead of Outer Joins When Possible
Inner joins are generally faster than outer joins.

```sql
-- Outer Join
SELECT
  e.first_name,
  d.department_name
FROM employees e
  LEFT JOIN departments d
    ON e.department_id = d.department_id;

-- Inner Join
SELECT
  e.first_name,
  d.department_name
FROM employees e
  INNER JOIN departments d
    ON e.department_id = d.department_id;
```

### Ensure Columns Used in Joins Are Indexed

```sql
CREATE INDEX idx_department_id ON employees (department_id);
CREATE INDEX idx_department_id ON departments (department_id);
```

## Avoiding Common Pitfalls

### Avoid Using Functions on Indexed Columns in WHERE Clauses
Using functions on indexed columns can prevent the use of indexes.

```sql
-- Inefficient
SELECT
  *
FROM employees
WHERE UPPER(last_name) = 'SMITH';

-- Efficient
SELECT
  *
FROM employees
WHERE last_name = 'Smith';
```

## Avoid Wildcards at the Beginning of LIKE Patterns
Wildcards at the beginning of `LIKE` patterns can prevent index use.

```sql
-- Inefficient
SELECT
  *
FROM employees
WHERE last_name LIKE '%mith';

-- Efficient
SELECT
  *
FROM employees
WHERE last_name LIKE 'Smi%';
```

## Practice Exercises
* TODO
