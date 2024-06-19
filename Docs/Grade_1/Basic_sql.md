

## Basic SQL Syntax

### SELECT Statement
The `SELECT` statement is used to retrieve data from one or more tables. It is the most commonly used SQL command.


#### Select All Columns
```sql
SELECT *
FROM table_name;
```

#### Select Specific Columns
```sql
SELECT first_name, last_name
FROM employees;
```

### Using the WHERE Clause
The `WHERE` clause is used to filter records based on specified conditions. It helps in narrowing down the result set to only those records that meet the criteria.

### Example Where
```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```
