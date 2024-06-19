# Level 1: Introduction to SQL and Databases

## Relational Databases

### What is a Relational Database?
A relational database is a type of database that stores and provides access to data points that are related to one another. It organizes data into tables which can be linked—or related—based on data common to each.

### Key Concepts of Relational Databases

1. **Tables**:
    - A table is a collection of related data entries that consists of rows and columns.
    - Each table in a database has a unique name.
    - Example:
      | employee_id | first_name | last_name | department_id |
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
    - Example: `employee_id` in the `employees` table.

2. **Foreign Key**:
    - A foreign key is a column, or a set of columns, that establishes a link between the data in two tables.
    - It is a field (or collection of fields) in one table that refers to a unique in another table.
    - Example: `department_id` in the `employees` table might reference the `department_id` in a `departments` table.

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
