# Aggregate Functions

## Introduction
Aggregate functions in SQL are used to perform calculations on multiple rows of a table's column and return a single value. They are commonly used with the `GROUP BY` clause to group the results by one or more columns. This section will cover the most commonly used aggregate functions: `COUNT`, `SUM` and `AVG`.


### Using Aggregate Functions with GROUP BY
Aggregate functions are often used with the `GROUP BY` clause to group the results by one or more columns and apply the aggregate function to each group.


```sql
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name;
```

**Example**
Calculate the total salary for each department:

```sql
SELECT departmentid, SUM(salary)
FROM employees
GROUP BY departmentid;
```

Calculate the average salary for each department:

```sql
SELECT departmentid, AVG(salary)
FROM employees
GROUP BY departmentid;
```

### Using Aggregate Functions with HAVING
When using the `GROUP BY` clause to group the results  can be filtered by using `HAVING`. The `HAVING` clause acts as the `WHERE` clause but for aggregate functions


```sql
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING AGGREGATE_FUNCTION(column_name) condition;
```

**Example**
Calculate the total salary for each department with a combined sarary more then 500,000:

```sql
SELECT departmentid, SUM(salary)
FROM employees
GROUP BY departmentid
HAVING SUM(salary) > 500000
```


### Practice Exercises
* list all employee `firtnames` and count how many `counting` how many employees have each name
* Get the `sum` or each order having an order price more then `500`
  

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_3/joins.md">Previous: Joins</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_3/subqueries.md">Next: Subqueries</a>
</p>
