# Constraints

## Introduction
Constraints in SQL are rules enforced on data columns to ensure the integrity, accuracy, and reliability of the data in the database. This section will cover the different types of constraints, their syntax, and examples of how to use them.


### Primary Key Constraint
A primary key uniquely identifies each row in a table. A table can have only one primary key, which can consist of one or multiple columns.

```sql
CREATE TABLE table_name (
    column1 datatype CONSTRAINT constraint_name PRIMARY KEY,
    column2 datatype,
    ...
);
```

**Example** 

Create a table with a primary key:

```sql
CREATE TABLE employees (
    employee_id INT CONSTRAINT pk_employee PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
```

### Foreign Key Constraint
A foreign key ensures referential integrity by linking a column or a set of columns in one table to the primary key in another table. However in some Database engines this could also be a column holding unquie values. 

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype CONSTRAINT constraint_name REFERENCES other_table(column_name),
    ...
);
```

**Example**

Create a table with a foreign key:

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    employee_id INT,
    CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
```

### Unique Constraint
A unique constraint ensures that all values in a column or a set of columns are unique.

```sql
CREATE TABLE table_name (
    column1 datatype CONSTRAINT constraint_name UNIQUE,
    column2 datatype,
    ...
);
```

**Example**

Create a table with a unique constraint:

```sql
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    email VARCHAR(100) CONSTRAINT unique_email UNIQUE
);
```

### Not Null Constraint
A not null constraint ensures that a column cannot have a `NULL` value.

```sql
CREATE TABLE table_name (
    column1 datatype CONSTRAINT constraint_name NOT NULL,
    column2 datatype,
    ...
);
```

**Example**

Create a table with a not null constraint:

```sql
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) CONSTRAINT nn_product_name NOT NULL
);
```

### Check Constraint
A check constraint ensures that all values in a column satisfy a specific condition.

```sql
CREATE TABLE table_name (
    column1 datatype CONSTRAINT constraint_name CHECK (condition),
    column2 datatype,
    ...
);
```

**Example**

Create a table with a `CHECK` constraint:

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    salary DECIMAL(10, 2) CONSTRAINT chk_salary CHECK (salary > 0)
);
```

### Adding Constraints to Existing Tables

You can add constraints to existing tables using the `ALTER TABLE` statement.

**Example**

Add a `NOT NULL` constraint to the last_name column:

```sql
ALTER TABLE employees
MODIFY last_name VARCHAR(50) NOT NULL;
```

**Example**

Add a unique constraint to the email column:

```sql
ALTER TABLE customers
ADD CONSTRAINT unique_email UNIQUE (email);
```

### Dropping Constraints
You can remove constraints from tables using the `ALTER TABLE` statement.

**Example**
Drop a unique constraint from the email column:

```sql
ALTER TABLE customers
DROP CONSTRAINT unique_email;
```

### Practice Exercises

* `Alter` the `departments` table making sure that department codes must be `unique`
* `Alter` `any` table and add a `check` constraint to any `column`

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_5/Droping_Tables.md">Previous: Dropping Tables</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_6/String_functions.md">Next: String Functions</a>
</p>
