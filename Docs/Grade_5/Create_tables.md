# Creating Tables

## Introduction
The `CREATE TABLE` statement in SQL is used to create a new table in the database. This section will cover the basic syntax for creating tables, specifying column data types, adding constraints, and considerations for table design.

### Basic CREATE TABLE Statement
The basic `CREATE TABLE` statement defines a table and its columns.

```sql
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    ...
);
```

* table_name: The name of the table to be created.
* column1, column2, ...: The names of the columns in the table.
* datatype: The data type for the column (e.g., `INT`, `VARCHAR`, `DATE`).
* constraint: Optional constraints for the column (e.g., `PRIMARY KEY`, `NOT NULL`).

**Example**

Create a table for storing employee information:

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE
);
```

### Specifying Data Types
Data types define the kind of data that can be stored in each column.

**Common Data Types**

* INT: Integer numbers.
* VARCHAR(n): Variable-length character strings.
* CHAR(n): Fixed-length character strings.
* DATE: Dates.
* DECIMAL(p, s): Decimal numbers with precision p and scale s.

### Adding Constraints
Constraints enforce rules on the data in the table.

**Common Constraints**

* `PRIMARY KEY`: Uniquely identifies each row.
* `FOREIGN KEY`: Ensures referential integrity between tables.
* `NOT NULL`: Ensures that a column cannot have a NULL value.
* `UNIQUE`: Ensures that all values in a column are unique.
* `CHECK`: Ensures that all values in a column satisfy a specific condition.

**Example**

Create a table with constraints:

```sql
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    manager_id INT,
    UNIQUE (department_name),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);
```

### Considerations for Table Design
* Normalization: Organize data to reduce redundancy and improve data integrity.
* Indexes: Create indexes on columns to improve query performance.
* Naming Conventions: Use clear and consistent names for tables and columns.
* Data Integrity: Use constraints to ensure data accuracy and consistency.

### Practice Exercises
* TODO
