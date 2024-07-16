# Relational Databases

### What is a Relational Database?
A relational database is a type of database that stores and provides access to data points that are related to one another. It organizes data into tables which can be linked—or related—based on data common to each.

### Key Concepts of Relational Databases

1. **Tables**:
    - A table is a collection of related data entries that consists of rows and columns.
    - Each table in a database has a unique name.
    - Example:
      | employeeid | firstname | lastname | departmentid |
      |-------------|------------|-----------|---------------|
      | 1           | John       | Doe       | 101           |
      | 2           | Jane       | Smith     | 102           |

2. **Rows**:
    - Rows, also known as records or tuples, represent individual data entries in a table.
    - Each row in a table contains data for a specific item.

3. **Columns**:
    - Columns, also known as fields or attributes, represent the categories of data that a table stores.
    - Each column in a table has a specific data type, such as integer, varchar, date, etc.

### Primary Keys and Foreign Keys

1. **Primary Key**:
    - A primary key is a column, or a set of columns, that uniquely identifies each row in a table.
    - Primary keys must contain unique values and cannot contain NULL values.
    - Example: `employeeid` in the `employees` table.

2. **Foreign Key**:
    - A foreign key is a column, or a set of columns, that establishes a link between the data in two tables.
    - It is a field (or collection of fields) in one table that refers to a unique vakue in another table.
    - Example: `departmentid` in the `employees` table might reference the `departmentid` in a `departments` table.

### Relationships Between Tables

1. **One-to-Many Relationship**:
    - A single record in one table can be related to one or more records in another table.
    - Example: A department (one) can have multiple employees (many).

2. **Many-to-Many Relationship**:
    - Multiple records in one table can be related to multiple records in another table.
    - Typically managed by a third table, often called a junction table, that breaks down the many-to-many relationship into two one-to-many relationships.
    - Example: Students and courses, where a student can enroll in multiple courses and each course can have multiple students.

3. **One-to-One Relationship**:
    - A single record in one table is related to a single record in another table.
    - Example: Each employee has one personal profile.

### Types of SQL Languages

Each type of SQL sub-language plays a crucial role in managing and interacting with databases effectively, ensuring robust and secure data management practices.

#### 1. Data Definition Language (DDL)
- **Purpose**: Defines the structure of the database.
- **Common Commands**:
  - `CREATE`: Creates a new table, view, or other database object.
  - `ALTER`: Modifies an existing database object (e.g., adding a column to a table).
  - `DROP`: Deletes an existing database object.
  - `TRUNCATE`: Removes all records from a table, but keeps the table structure for future use.

#### 2. Data Manipulation Language (DML)
- **Purpose**: Manipulates data within the database.
- **Common Commands**:
  - `SELECT`: Retrieves data from the database.
  - `INSERT`: Adds new records to a table.
  - `UPDATE`: Modifies existing records in a table.
  - `DELETE`: Removes records from a table.

#### 3. Data Control Language (DCL)
- **Purpose**: Controls access to the data within the database.
- **Common Commands**:
  - `GRANT`: Gives a user permission to perform certain tasks.
  - `REVOKE`: Removes a user’s permission to perform certain tasks.

#### 4. Transaction Control Language (TCL)
- **Purpose**: Manages transactions within the database to ensure data integrity.
- **Common Commands**:
  - `BEGIN TRANSACTION` (or `START TRANSACTION`): Begins a transaction.
  - `COMMIT`: Saves all changes made during the transaction.
  - `ROLLBACK`: Undoes all changes made during the transaction.
  - `SAVEPOINT`: Sets a savepoint within a transaction to which you can roll back later.

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_1/What_IS_SQL.md">Previous: Overview of SQL</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_1/Simple_queries.md">Next: Simple Queries</a>
</p>
