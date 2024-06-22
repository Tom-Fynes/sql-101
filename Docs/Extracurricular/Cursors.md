# Cursors: Using CURSOR in SQL Server to Loop Through Data

## Introduction
Cursors in SQL Server are database objects used to retrieve and manipulate data row by row, allowing for more granular control over result sets. This section covers how to use cursors to iterate through data in SQL Server, including considerations and best practices.

### What is a Cursor?
A cursor is a database object used to retrieve data row by row from a result set. It allows for sequential processing of rows and provides a mechanism to loop through each row to perform operations.

### Declaring a Cursor
To use a cursor, you must declare it, define its query, and open it for processing.

```sql
DECLARE cursor_name CURSOR FOR
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

**Example**

Declare a cursor to fetch employee names and salaries from the employees table:

```sql
DECLARE emp_cursor CURSOR FOR
SELECT emp_name, emp_salary
FROM employees
WHERE emp_department = 'IT';
```

### Opening and Fetching from a Cursor
Once declared, you need to open the cursor and fetch rows sequentially.

**Opening a Cursor**
```sql
OPEN cursor_name;
```

**Fetching Rows**
```sql
FETCH NEXT FROM cursor_name INTO @variable1, @variable2, ...;
```
* FETCH NEXT: Retrieves the next row from the cursor result set.
* INTO: Assigns the fetched values to variables.
  
**Example**

Open and fetch rows from the emp_cursor:

```sql
OPEN emp_cursor;

DECLARE @emp_name VARCHAR(100);
DECLARE @emp_salary DECIMAL(10, 2);

FETCH NEXT FROM emp_cursor INTO @emp_name, @emp_salary;

-- Process each row
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Perform operations on @emp_name and @emp_salary

    -- Fetch the next row
    FETCH NEXT FROM emp_cursor INTO @emp_name, @emp_salary;
END;

CLOSE emp_cursor;
```

### Closing and Deallocating a Cursor
After processing, close and deallocate the cursor to release resources.

**Closing a Cursor**

```sql
CLOSE cursor_name;
```

**Deallocating a Cursor**

```sql
DEALLOCATE cursor_name;
```

### Considerations and Best Practices
* Performance: Cursors can be slower compared to set-based operations in SQL. Use them only when necessary for row-by-row processing.
* Memory Usage: Cursors consume memory resources, especially when dealing with large result sets.
* Avoid Nesting: Avoid nesting cursors within each other as it can lead to performance issues and complex code.
* Alternative Approaches: Consider alternative approaches such as set-based operations, temporary tables, or table variables for processing data efficiently.

### Practice Exercises
* TODO
