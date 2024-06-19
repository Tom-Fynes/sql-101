## Types of SQL Languages

Each type of SQL sub-language plays a crucial role in managing and interacting with databases effectively, ensuring robust and secure data management practices.

### 1. Data Definition Language (DDL)
- **Purpose**: Defines the structure of the database.
- **Common Commands**:
  - `CREATE`: Creates a new table, view, or other database object.
  - `ALTER`: Modifies an existing database object (e.g., adding a column to a table).
  - `DROP`: Deletes an existing database object.
  - `TRUNCATE`: Removes all records from a table, but keeps the table structure for future use.

### 2. Data Manipulation Language (DML)
- **Purpose**: Manipulates data within the database.
- **Common Commands**:
  - `SELECT`: Retrieves data from the database.
  - `INSERT`: Adds new records to a table.
  - `UPDATE`: Modifies existing records in a table.
  - `DELETE`: Removes records from a table.

### 3. Data Control Language (DCL)
- **Purpose**: Controls access to the data within the database.
- **Common Commands**:
  - `GRANT`: Gives a user permission to perform certain tasks.
  - `REVOKE`: Removes a user’s permission to perform certain tasks.

### 4. Transaction Control Language (TCL)
- **Purpose**: Manages transactions within the database to ensure data integrity.
- **Common Commands**:
  - `BEGIN TRANSACTION` (or `START TRANSACTION`): Begins a transaction.
  - `COMMIT`: Saves all changes made during the transaction.
  - `ROLLBACK`: Undoes all changes made during the transaction.
  - `SAVEPOINT`: Sets a savepoint within a transaction to which you can roll back later.