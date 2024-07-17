# Temporary Tables and Common Table Expressions (CTEs)

## Introduction
Temporary tables and Common Table Expressions (CTEs) are useful for breaking down complex queries and storing intermediate results. This section will cover how to create and use temporary tables and CTEs in SQL, including MySQL, PostgreSQL, SQL Server, and DuckDB.

### Temporary Tables

#### What are Temporary Tables?
Temporary tables are tables that exist temporarily during the session or until the query that created them ends. They are useful for storing intermediate results that need further processing.

#### Creating Temporary Tables
The syntax for creating a temporary table varies slightly between SQL dialects.

**MySQL**

```sql
CREATE TEMPORARY TABLE temp_table_name (
    column1 datatype,
    column2 datatype,
    ...
);
```

**PostgreSQL**

```sql
CREATE TEMP TABLE temp_table_name (
    column1 datatype,
    column2 datatype,
    ...
);
```

**SQL Server**

```sql
CREATE TABLE #temp_table_name (
    column1 datatype,
    column2 datatype,
    ...
);
```

**DuckDB**

```sql
CREATE TEMP TABLE temp_table_name (
    column1 datatype,
    column2 datatype,
    ...
);
```

**Example**

Create a temporary table to store intermediate results:

```sql
CREATE TEMP TABLE temp_sales (
    product_id INT,
    total_sales DECIMAL(10, 2)
);

INSERT INTO temp_sales (product_id, total_sales)
SELECT
  productid,
  SUM(amount)
FROM sales
GROUP BY product_id;

SELECT * FROM temp_sales;
```

#### Dropping  Temporary Tables
Temporary tables are automatically dropped at the end of the session. However, you can explicitly drop them.

```sql
DROP TABLE temp_sales;
```

### Common Table Expressions (CTEs)

#### What are CTEs?
CTEs are temporary result sets that are defined within the execution scope of a single `SELECT`, `INSERT`, `UPDATE`, or `DELETE` statement. They make queries easier to read and maintain by breaking down complex queries.

#### Creating CTEs
CTEs are created using the `WIT`H keyword followed by the `CTE` name and the query that defines it.

```sql
WITH cte_name AS (
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition
)
SELECT column1, column2, ...
FROM cte_name;
```

**Example**
Using a `CTE` to calculate total sales and then retrieve products with sales greater than 1000:

```sql
WITH TotalSales AS (
    SELECT productid, SUM(amount) AS total_sales
    FROM sales
    GROUP BY productid
)
SELECT productid, total_sales
FROM TotalSales
WHERE total_sales > 1000;
```

#### Recursive CTEs
Recursive CTEs are useful for hierarchical or recursive data structures such as organizational charts or tree structures.

```sql 
WITH RECURSIVE cte_name AS (
    -- Anchor member
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition

    UNION ALL

    -- Recursive member
    SELECT column1, column2, ...
    FROM table_name
    INNER JOIN cte_name ON table_name.column = cte_name.column
)
SELECT column1, column2, ...
FROM cte_name;
```

**Example**

Using a recursive `CTE` to retrieve an employee hierarchy:

```sql
WITH RECURSIVE EmployeeHierarchy AS (
    SELECT employeeid, managerid, firstname, lastname
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    SELECT e.employeeid, e.managerid, e.firstname, e.lastname
    FROM employees e
    INNER JOIN EmployeeHierarchy eh ON e.manager_id = eh.employee_id
)
SELECT employeeid, firstname, lastname, managerid
FROM EmployeeHierarchy;
```

### Practice Exercises

* Create a `CTE` containting all `employee` that work in `marketing`, use this in your select statement to get the `firstname` and `lastname` of these employees.
* create a `temp` table with the `sum` of all `sales`, how query this table working out how much this would be if `50%` of the `total sales` was added oon.

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_7/Execution_plans.md">Previous: Execution Plans</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_8/Transactions.md">Next: Transactions</a>
</p>
