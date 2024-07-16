# Subqueries

## Introduction
A subquery or nested query, is a query within another SQL query. Subqueries can be used to perform operations that require multiple steps, making complex queries more manageable. This section will cover the different types of subqueries and how to use them effectively.

## Types of Subqueries
Subqueries can be categorized based on their placement within the main query and their purpose. The most common types are:
1. **Single-row subqueries**
2. **Multi-row subqueries**
3. **Scalar subqueries**
4. **Correlated subqueries**

### Single-Row Subqueries
Single-row subqueries return a single row and are often used in the `WHERE` clause.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name = (SELECT column_name FROM table_name WHERE condition);
```

**Example**

Find employees who earn more than the average salary:

```sql
SELECT firstname, lastname, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
```

### Multi-Row Subqueries
Multi-row subqueries return multiple rows and are used with operators like IN, ANY, or ALL.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name IN (SELECT column_name FROM table_name WHERE condition);
```

**Example**

Find employees who work in the same department as 'John Doe':

```sql
SELECT firstname, lastname
FROM employees
WHERE departmentid IN (SELECT departmentid FROM employees WHERE firstname = 'John' AND lastname = 'Doe');
```

### Scalar Subqueries
Scalar subqueries return a single value and can be used anywhere a single value is expected.

```sql
SELECT column1, column2, (SELECT column_name FROM table_name WHERE condition) AS alias_name
FROM table_name;
```

**Example**

Retrieve employee names and the total number of employees in the company:

```sql
SELECT firstname, lastname, (SELECT COUNT(*) FROM employees) AS total_employees
FROM employees;
```

### Correlated Subqueries
Correlated subqueries refer to columns from the outer query and are evaluated once for each row processed by the outer query.

```sql
SELECT column1, column2, ...
FROM table_name AS alias_name
WHERE column_name operator (SELECT column_name FROM table_name WHERE table_name.column_name = alias_name.column_name);
```

**Example**

Find employees who earn more than the average salary in their department:

```sql
SELECT firstname, lastname, salary
FROM employees e1
WHERE salary > (SELECT AVG(salary) FROM employees e2 WHERE e2.departmentid = e1.departmentid);
```

### Practice Exercises

* Get all employees where there department is `HR` and `IT`


---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_3/Aggregation.md">Previous: Aggregate Functions</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_3/Set_operations.md">Next: Set Operations</a>
</p>
