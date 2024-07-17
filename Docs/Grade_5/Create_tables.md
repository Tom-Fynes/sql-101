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
    employeeid INT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    departmentid INT,
    salary DECIMAL(10, 2),
    hiredate DATE
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
    departmentid INT PRIMARY KEY,
    departmentname VARCHAR(50) NOT NULL,
    managerid INT,
    UNIQUE (departmentname),
    FOREIGN KEY (managerid) REFERENCES employees(employeeid)
);
```

### Considerations for Table Design
* Normalization: Organize data to reduce redundancy and improve data integrity.
* Indexes: Create indexes on columns to improve query performance.
* Naming Conventions: Use clear and consistent names for tables and columns.
* Data Integrity: Use constraints to ensure data accuracy and consistency.

### Practice Exercises

* Create a new table for employee `contact information` that joins to `employees`. This most include phone number and email but may have other information also.
* Create a new table for customer `loyalty`, this most link back to `customers` and `orders`. This most include a way to track points
* create a new table called `inventory` this most link to `products` and most include the `quantity` of all `products`
* Create a nwe table called `sales` this most link to `OrderDetails` and contain a column called `salesamount`. Once created for `every order` in `orderdetails` add the sum for the UnitPrice to the `salesamount` column
  

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_4/Deleting_data.md">Previous: Deleting Data</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_5/Altering_tables.md">Next: Altering Tables</a>
</p>
