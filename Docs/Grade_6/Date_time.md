# Date and Time Functions

## Introduction
Date and time functions in SQL are used to perform operations on date and time values. This section will cover common date and time functions, their syntax, and examples of how to use them.

### CURRENT_DATE and CURRENT_TIME Functions
The `CURRENT_DATE` function returns the current date, and the `CURRENT_TIME` function returns the current time.

```sql
CURRENT_DATE;
CURRENT_TIME;
```

**Example**

Retrieve the current date and time:

```sql
SELECT
  CURRENT_DATE AS today,
  CURRENT_TIME AS now;
```

### NOW Function
The `NOW` function returns the current date and time. This can also be `CURRENT_TIMESTAMP` in some database engines

```sql
NOW();
```

**Example**

Retrieve the current date and time:

```sql
SELECT
  NOW() AS current_datetime;
```

### DATEPART Function
The `DATEPART` function extracts a specific part of a date.

```sql
DATEPART(part, date);
```

* part: The part of the date to extract (e.g., year, month, day).
* date: The date value.
  
**Example**

Extract the year from the hire date:

```sql
SELECT
  DATEPART(year, hiredate) AS hire_year
FROM employees;
```

### DATEDIFF Function
The `DATEDIFF` function calculates the difference between two dates.

```sql
DATEDIFF(part, start_date, end_date);
```

* part: The part of the date to calculate the difference (e.g., day, month, year).
* start_date: The starting date.
* end_date: The ending date.

**Example**

Calculate the number of days between order date and ship date:

```sql
SELECT
  DATEDIFF(day, orderdate, shipdate) AS days_to_ship
FROM orders;
```

### DATEADD Function
The `DATEADD` function adds a specified interval to a date.

```sql
DATEADD(part, number, date);
```

* part: The part of the date to add (e.g., day, month, year).
* number: The number of intervals to add.
* date: The date value.

**Example**

Add 7 days to the order date:

```sql
SELECT
  order_date, DATEADD(day, 7, orderdate) AS expected_delivery
FROM orders;
```

6. FORMAT Function
The FORMAT function formats a date/time value according to a specified format.

```sql
FORMAT(date, format);
```

* date: The date or time value to format.
* format: The format pattern.

**Example**

Format the hire date as `'YYYY-MM-DD'`:

```sql
SELECT
  hire_date,
  FORMAT(hiredate, 'yyyy-MM-dd') AS formatted_hire_date
FROM employees;
```

### EXTRACT Function
The `EXTRACT` function extracts a specific part of a date.

```sql
EXTRACT(part FROM date);
```

* part: The part of the date to extract (e.g., year, month, day).
* date: The date value.

**Example**
Extract the month from the hire date:

```sql
SELECT
  hire_date,
  EXTRACT(month FROM hire_date) AS hire_month
FROM employees;
```

### Practice Exercises

* For all `employees` without a `ContractEndDate` `select` how may days the employee has worked for the company.
* Using the `query` from the above `exercise` update this to now `display` the hire `year` and hire `month` is seperate columns

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_6/String_functions.md">Previous: String Functions</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_6/Maths.md">Next: Mathematical Functions</a>
</p>
