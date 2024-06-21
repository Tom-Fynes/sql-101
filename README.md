# SQL 101

The SQL 101 course is designed for someone aspiring to build a career as data engineer, analyst, or  a data scientist. This course covers fundamental SQL concepts, including querying, database design, and data manipulation. learning to extract insights and support data-driven decision-making.

By the end of the course, you will be writing complex queries, optimizing database performance, and using SQL to solve practical problems.

## Recommened Programs

* [DBeaver Community](https://dbeaver.io/)
* [DuckDB](https://duckdb.org/)
  * Please see setup page for details

## Setup

* TODO

## Grades

Grades have been added to help break your journy into helpful sections. Each section will cover different skill levels and will help you demonstrate your ability to other people.

### Grade 1: Introduction to SQL and Databases

- [**Overview of SQL**](Docs/Grade_1/What_IS_SQL.md): What is SQL and its importance.

* [**Relational Databases**](Docs/Grade_1/Relational_databases.md): Basic concepts of relational databases, tables, rows, and columns.
* [**Simple Queries**](Docs/Grade_1/Simple_queries.md): Using `SELECT` to retrieve data from a single table.
* [**Filtering Data**](Docs/Grade_1/Filtering_data.md): Using `WHERE` clause to filter results.

### Grade 2: Intermediate Data Retrieval

- [**Sorting Data**](Docs/Grade_2/sorting_data.md): Using `ORDER BY` to sort query results.

* [**Limiting Results**](Docs/Grade_2/Limiting_data.md): Using `LIMIT` (or `TOP` in some SQL dialects) to restrict the number of returned rows.
* [**Basic Functions**](Docs/Grade_2/Basic_functions.md): Introduction to SQL functions like `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX`.
* [**Aliasing**](Docs/Grade_2/Alias.md): Using `AS` to rename columns in the result set.

### Grade 3: Advanced Data Retrieval

- [**Joins**](Docs/Grade_3/joins.md): Understanding and using different types of joins (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`).
* [**Aggregate Functions**](Docs/Grade_3/Aggregation.md): Grouping data with `GROUP BY` and filtering groups with `HAVING`.
* [**Subqueries**](Docs/Grade_3//subqueries.md): Writing and using subqueries in `SELECT`, `FROM`, `WHERE`, and `HAVING` clauses.
* [**Set Operations**](Docs/Grade_3/Set_operations.md): Using `UNION`, `INTERSECT`, and `EXCEPT`.

### Grade 4: Data Manipulation

- [**Inserting Data**](Docs/Grade_4/Inserting_data.md): Using `INSERT` to add new records to a table.
* [**Updating Data**](Docs/Grade_4/Updateing_data.md): Using `UPDATE` to modify existing records.
* [**Deleting Data**](Docs/Grade_4/Deleting_data.md): Using `DELETE` to remove records.

### Grade 5: Database Design and Data Definition

- [**Creating Tables**](Docs/Grade_5/Create_tables.md): Using `CREATE TABLE` to define new tables.
* [**Altering Tables**](Docs/Grade_5/Altering_tables.md): Using `ALTER TABLE` to modify existing tables (e.g., adding, dropping columns).
* [**Dropping Tables**](Docs/Grade_5/Droping_Tables.md): Using `DROP TABLE` to delete tables.
* [**Constraints**](Docs/Grade_5/Constraints.md): Understanding and implementing primary keys, foreign keys, unique constraints, and check constraints.

### Grade 6: Advanced SQL Functions and Expressions

- [**String Functions**](Docs/Grade_6/String_functions.md): Using functions like `CONCAT`, `SUBSTRING`, `LENGTH`, `TRIM`, etc.
* [**Date and Time Functions**](Docs/Grade_6/Date_time.md): Using functions like `NOW`, `DATEADD`, `DATEDIFF`, `FORMAT`, etc.
* [**Mathematical Functions**](Docs/Grade_6/Maths.md): Using functions like `ROUND`, `ABS`, `CEIL`, `FLOOR`, etc.
* [**Case Statements**](Docs/Grade_6/Case.md): Using `CASE` for conditional logic within queries.

### Grade 7: Performance Tuning and Optimization

- [**Indexes**](Docs/Grade_7/Indexes.md): Understanding the importance of indexes and how to create them.
* [**Query Optimization**](Docs/Grade_7/Optermization.md): Tips and techniques for writing efficient queries.
* [**Execution Plans**](Docs/Grade_7/Execution_plans.md): Reading and interpreting execution plans to optimize query performance.
* [**Temporary Tables and CTEs**](Docs/Grade_7/Temp_tables_ctes.md): Using temporary tables and Common Table Expressions (CTEs) to simplify complex queries.

### Grade 8: Transactions and Security

- [**Transactions**](Docs/Grade_8/Transactions.md): Using `BEGIN TRANSACTION`, `COMMIT`, and `ROLLBACK` to manage transactions.
* [**Locking and Concurrency**](Docs/Grade_8/Locking_concurrentct.md): Understanding locking mechanisms and how to handle concurrency.
* [**Windows Functions**](Docs/Grade_8/Windows_functions.md): Using `ROWNUMBER`, `RANK`, and `NTILE`.


### Extracurricular

In this section we will cover technoligy specific topics such as reading CSVs in DuckDB and variable in SQL Server (TSQL).

- [**Cursors**](Docs/Extracurricular/Cursors.md): Using `CURSOR` in SQL Server to loop through data.
