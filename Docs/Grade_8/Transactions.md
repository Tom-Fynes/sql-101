# Transactions

## Introduction
Transactions in SQL ensure that a series of operations either all succeed or all fail, maintaining the integrity of the database. This section will cover the basics of transactions, how to implement them, and their importance in SQL.

### What is a Transaction?
A transaction is a sequence of one or more SQL operations treated as a single unit of work. A transaction is successful if all operations are completed without errors. If any operation fails, the entire transaction is rolled back, leaving the database in its original state.

### ACID Properties
Transactions must adhere to the ACID properties to ensure data integrity:
- **Atomicity**: Ensures that all operations within a transaction are completed successfully. If not, the transaction is aborted.
- **Consistency**: Ensures that a transaction transforms the database from one valid state to another.
- **Isolation**: Ensures that transactions are securely and independently processed at the same time without interference.
- **Durability**: Ensures that once a transaction has been committed, it will remain so, even in the event of a system failure.

### Transaction Control Commands

**BEGIN/START TRANSACTION**

Starts a new transaction.
```sql
START TRANSACTION; -- MySQL, PostgreSQL, DuckDB
BEGIN TRANSACTION; -- SQL Server
```

**COMMIT**

Commits the current transaction, making all changes permanent.

```sql
COMMIT;
```

**ROLLBACK**

Rolls back the current transaction, undoing all changes made during the transaction.

```sql
ROLLBACK;
```

**SAVEPOINT**

Sets a savepoint within a transaction, allowing partial rollback to that point.

```sql
SAVEPOINT savepoint_name;
```

**ROLLBACK TO SAVEPOINT**

Rolls back to the specified savepoint.

```sql
ROLLBACK TO SAVEPOINT savepoint_name;
```

**RELEASE SAVEPOINT**

Removes a savepoint, making it no longer available for rollback.

```sql 
RELEASE SAVEPOINT savepoint_name;
```

### Examples

**Basic Transaction**

```sql
START TRANSACTION;

UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;
UPDATE accounts SET balance = balance + 100 WHERE account_id = 2;

COMMIT;
```
This transaction ensures that the money is transferred from one account to another atomically.

**Transaction with Rollback**

```sql
START TRANSACTION;

UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;
-- Simulate an error
-- UPDATE accounts SET balance = balance + 100 WHERE account_id = 2;

ROLLBACK;
```
If the second update fails, the transaction is rolled back, and no money is transferred.

**Using SAVEPOINT**

```sql
Copy code
START TRANSACTION;

UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;
SAVEPOINT transfer_point;
UPDATE accounts SET balance = balance + 100 WHERE account_id = 2;

-- Simulate an error
-- ROLLBACK TO SAVEPOINT transfer_point;

COMMIT;
```
This transaction sets a savepoint before transferring money. If an error occurs, it can roll back to the savepoint.

### Isolation Levels
Isolation levels define the degree to which the operations in one transaction are isolated from those in other transactions. Common isolation levels include:

* Read Uncommitted: Allows dirty reads, where a transaction can read data that has not yet been committed by other transactions.
* Read Committed: Prevents dirty reads, ensuring that any data read is committed at the moment it is read.
* Repeatable Read: Ensures that if a transaction reads a row, it will read the same value if it reads that row again, even if other transactions modify the data in the meantime.
* Serializable: Provides the highest isolation level, ensuring complete isolation from other transactions, effectively serializing them.
Setting Isolation Levels

```sql
-- MySQL
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- PostgreSQL
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- SQL Server
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- DuckDB
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
```

### Practice Exercises

* TODO 

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_7/Temp_tables_ctes.md">Previous: Temporary Tables and CTEs</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_8/Locking_concurrentct.md">Next: Locking and Concurrency</a>
</p>
