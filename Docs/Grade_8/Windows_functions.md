# Window Functions: Using ROWNUMBER, RANK, and NTILE

## Introduction
Window functions are powerful tools in SQL that allow you to perform calculations across a set of table rows related to the current row. This section covers how to use window functions such as `ROWNUMBER`, `RANK`, and `NTILE` to perform various analytical tasks.

### ROWNUMBER Function

`ROWNUMBER` is a window function that assigns a unique sequential integer to each row within a partition of a result set.

```sql
ROW_NUMBER() OVER (PARTITION BY column1 ORDER BY column2)
```

* PARTITION BY: Optional clause that divides the result set into partitions. The `ROWNUMBER` is reset for each partition.
* ORDER BY: Defines the order of rows within each partition.
* 
**Example**
  
Calculate the row number for each product category ordered by total sales:

```sql
SELECT
    product_id,
    product_category,
    total_sales,
    ROW_NUMBER() OVER (PARTITION BY product_category ORDER BY total_sales DESC) AS row_num
FROM
    sales;
```

### RANK Function

`RANK` is a window function that assigns a rank to each row within a partition of a result set, with gaps in rank numbers if there are ties.

```sql
RANK() OVER (PARTITION BY column1 ORDER BY column2)
```

* PARTITION BY: Optional clause that divides the result set into partitions. The ranking is reset for each partition.
* ORDER BY: Defines the order of rows within each partition.
  
**Example**

Rank products by total sales within each product category:

```sql
SELECT
    product_id,
    product_category,
    total_sales,
    RANK() OVER (PARTITION BY product_category ORDER BY total_sales DESC) AS sales_rank
FROM
    sales;
```

### NTILE Function

`NTILE` is a window function that divides the result set into a specified number of groups, assigning each row to a bucket or group.

```sql
NTILE(num_buckets) OVER (ORDER BY column)
```

* num_buckets: Specifies the number of groups or buckets to divide the result set into.
* ORDER BY: Defines the order of rows for partitioning into groups.
  
**Example**

Divide customers into quartiles based on their order amounts:

```sql
SELECT
    customer_id,
    order_amount,
    NTILE(4) OVER (ORDER BY order_amount) AS quartile
FROM
    orders;
```

### Practice Exercises

* TODO 

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_8/Locking_concurrentct.md">Previous: Locking and Concurrency</a>
</p>
