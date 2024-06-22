# Execution Plans

## Introduction
An execution plan is a roadmap that shows how the SQL database engine retrieves data to fulfill a query. Analyzing execution plans can help you understand and optimize query performance.

### What is an Execution Plan?
An execution plan describes the sequence of operations the database engine performs to execute a SQL query. It includes information about how tables are accessed, how joins are performed, and how data is filtered and sorted.

### Viewing Execution Plans

**MySQL**

Use the `EXPLAIN` statement.

```sql
EXPLAIN SELECT * FROM employees WHERE department_id = 1;
```

**PostgreSQL**

Use the EXPLAIN statement.
```sql
EXPLAIN SELECT * FROM employees WHERE department_id = 1;
```

**SQL Server**

Use the Display Estimated Execution Plan option in SQL Server Management Studio (SSMS) or `SET SHOWPLAN`.

```sql
SET SHOWPLAN_TEXT ON
GO
SELECT
  *
FROM
employees
WHERE department_id = 1;
```

**DuckDB**

Use the EXPLAIN statement.

```sql
EXPLAIN SELECT * FROM employees WHERE department_id = 1;
```

### Understanding Execution Plan Components

#### Table Access Methods
* Full Table Scan: Scans the entire table to find matching rows.
* Index Scan: Scans the index to find matching rows.
* Index Seek: Directly accesses rows using the index.

#### Join Operations

* Nested Loop Join: For each row in the outer table, the database searches for matching rows in the inner table.
* Hash Join: Builds a hash table on one of the tables and probes it with rows from the other table.
* Merge Join: Sorts both tables on the join key and merges the results.

#### Sorting and Filtering

* Sort: Orders rows based on specified columns.
* Filter: Applies conditions to restrict the rows returned.
  
### Examples of Execution Plans

**Simple Query**

Analyze the execution plan for a simple query.

```sql
EXPLAIN SELECT * FROM employees WHERE department_id = 1;
```

Output: Shows a full table scan or index scan based on indexing.

**Join Query**

Analyze the execution plan for a join query.

```sql
EXPLAIN SELECT e.first_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;
```

Output: Shows how the join is performed (e.g., nested loop join, hash join).

### Using Execution Plans for Optimization

#### Identifying Bottlenecks
Look for operations that consume a lot of resources, such as full table scans or expensive join operations.

#### Index Recommendations
Identify columns that could benefit from indexing to improve query performance.

#### Query Rewriting
Rewrite queries to use more efficient operations, such as replacing subqueries with joins.

### Tools for Viewing Execution Plans

* DuckDB CLI: Provides textual execution plans using the EXPLAIN statement.
* MySQL Workbench: Visualizes execution plans.
* PostgreSQL pgAdmin: Provides graphical representation of execution plans.
* SQL Server Management Studio (SSMS): Displays execution plans in a graphical format.

### Practice Exercises
* TODO
