# Aliasing

## Introduction
Aliasing is a technique in SQL that allows you to assign a temporary name to a table or a column. This can make your SQL queries more readable and easier to manage, especially when working with complex queries or when dealing with tables and columns that have long or unclear names. This section will cover how to use column aliases and table aliases.

### Column Aliases
A column alias is used to rename a column in the result set. It can make the output more understandable or fit specific requirements.

```sql
SELECT column_name AS alias_name
FROM table_name;
```

`column_name` is the name of the original column, `alias_name` is the new name assigned to the column.

**Example**
Retrieve employee first names and last names with aliases:

```sql
SELECT firstname AS fname, lastname AS lname
FROM employees;
```

### Table Aliases
A table alias is used to rename a table in a query. This is particularly useful when joining multiple tables or when the table name is lengthy.

```sql
SELECT column1, column2, ...
FROM table_name AS alias_name;
```
`table_name` is the name of the original table, `alias_name` is the new name assigned to the table.

**Example**
Use table alias for the employees table:

```sql
SELECT e.firstname, e.lastname
FROM employees AS e;
```

### Combining Column and Table Aliases
Column and table aliases can be used together to make queries more concise and readable.

**Example**
Retrieve employee details with both column and table aliases:

```sql
SELECT e.firstname AS fname, e.lastname AS lname
FROM employees AS e
```

### Aliasing Without AS Keyword
The `AS` keyword is optional when creating aliases. However, using AS can improve the readability of your queries.

**Example**
Retrieve employee names without using the AS keyword:

```sql
SELECT firstname fname, lastname lname
FROM employees;
```

Practice Exercises
* `Select` all columns from `LocatinType` updating the columns to have `_` between each word
* `Select` department name and `locationid` giving the table an alias and uing this on the column declaration  


---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_2/Basic_functions.md">Previous: Basic Functions</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_2/joins.md">Next: Joins</a>
</p>
