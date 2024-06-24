# Locking and Concurrency

## Introduction
Locking and concurrency control are crucial aspects of database management systems that ensure data integrity and consistency in multi-user environments. This section covers the basics of locking, types of locks, strategies for managing concurrency, and considerations for DuckDB.

### What is Locking?
Locking is a mechanism used by database systems to manage simultaneous access to data by multiple users. It prevents conflicting interactions between transactions that could compromise data integrity.

### Types of Locks

#### Shared (Read) Locks
- **Purpose**: Allows multiple transactions to read a resource simultaneously.
- **Behavior**: Transactions with shared locks can read data but cannot modify it.
- **Example**: `SELECT` statements acquire shared locks.

#### Exclusive (Write) Locks
- **Purpose**: Allows only one transaction to modify a resource.
- **Behavior**: Transactions with exclusive locks can modify data and prevent other transactions from reading or modifying it until the lock is released.
- **Example**: `INSERT`, `UPDATE`, `DELETE` statements acquire exclusive locks.

#### Update Locks (U Locks)
- **Purpose**: Used by some database systems to prevent common deadlock scenarios.
- **Behavior**: Allows transactions to read a resource with the intent to update it later, preventing other transactions from acquiring exclusive locks on the same resource until the update intent is resolved.

### Lock Granularity

#### Row-Level Locks
- **Purpose**: Locks individual rows to manage concurrency at the smallest level.
- **Behavior**: Provides high concurrency but can lead to increased overhead.
- **Example**: `SELECT ... FOR UPDATE` in PostgreSQL.

#### Table-Level Locks
- **Purpose**: Locks entire tables to manage concurrency.
- **Behavior**: Simple and effective but can reduce concurrency if multiple transactions need access to different parts of the same table.
- **Example**: `LOCK TABLE` in MySQL.

#### Page-Level Locks
- **Purpose**: Locks data pages (groups of contiguous data blocks) to manage concurrency.
- **Behavior**: Balances granularity and performance but can still lead to contention.
- **Example**: Used in some older database systems.

### Managing Concurrency

#### Isolation Levels
Isolation levels define the degree to which transactions are isolated from each other, impacting how locks are acquired and released.
- **Read Uncommitted**: Allows dirty reads, where transactions can see uncommitted changes.
- **Read Committed**: Prevents dirty reads by allowing transactions to see only committed changes.
- **Repeatable Read**: Ensures consistency by preventing other transactions from modifying data read by the current transaction.
- **Serializable**: Ensures transactions are completely isolated from each other, avoiding concurrency issues.

#### Deadlocks
Deadlocks occur when two or more transactions are waiting for each other to release locks, preventing progress. Database systems detect and resolve deadlocks automatically by rolling back one of the transactions involved.

#### Optimistic vs. Pessimistic Locking
- **Optimistic Locking**: Assumes conflicts between transactions are unlikely and allows them to proceed without locking until they commit, checking for conflicts at the end.
- **Pessimistic Locking**: Assumes conflicts are likely and acquires locks before transactions proceed, preventing conflicts but potentially reducing concurrency.

### DuckDB Considerations
DuckDB is a lightweight and embeddable database engin that supports various SQL functionalities, including concurrency control with its own mechanisms for managing locks and transactions.

#### DuckDB Locking and Concurrency
DuckDB manages concurrency through efficient transaction management and locking mechanisms similar to traditional database systems. It supports different isolation levels and ensures data integrity through atomicity, consistency, isolation, and durability (ACID) properties.

### Practice Exercises

* TODO

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_8/Transactions.md">Previous: Transactions</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_8/Windows_functions.md">Next: Windows Functions</a>
</p>
