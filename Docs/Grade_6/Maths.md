# Mathematical Functions

## Introduction
Mathematical functions in SQL are used to perform arithmetic operations on numeric data. This section will cover common mathematical functions, their syntax, and examples of how to use them.

### ABS Function
The `ABS` function returns the absolute value of a number.

```sql
ABS(number);
```

**Example**

Retrieve the absolute value of a column:

```sql
SELECT
  salary,
  ABS(salary) AS abs_salary
FROM employees;
```

### ROUND Function
The `ROUND` function rounds a number to a specified number of decimal places.

```sql
ROUND(number, decimal_places);
```

* number: The number to be rounded.
* decimal_places: The number of decimal places to round to.
  
**Example**

Round the salary to two decimal places:

```sql
SELECT
  salary,
  ROUND(salary, 2) AS rounded_salary
FROM employees;
```

### CEIL and FLOOR Functions
The `CEIL` function rounds a number up to the nearest integer, while the `FLOOR` function rounds a number down to the nearest integer.

```sql
CEIL(number);
FLOOR(number);
```

**Example**

Round the price up and down:

```sql
SELECT
  price,
  CEIL(price) AS ceiling_price,
  FLOOR(price) AS floor_price
FROM products;
```

### POWER Function
The `POWER` function raises a number to the power of another number.

```sql
POWER(base, exponent);
```

* base: The base number.
* exponent: The exponent to raise the base to.
  
**Example**

Calculate the square of the quantity:

```sql
SELECT
  quantity,
  POWER(quantity, 2) AS squared_quantity
FROM inventory;
```

### SQRT Function
The `SQRT` function returns the square root of a number.

```sql
SQRT(number);
```

**Example**

Calculate the square root of the area:

```sql
SELECT
  area,
  SQRT(area) AS sqrt_area
FROM locations;
```

### SUM Function
The `SUM` function returns the total sum of a numeric column.

```sql
SUM(column_name);
```

**Example**

Calculate the total sales:

```sql
SELECT
  SUM(salesamount) AS total_sales
FROM sales;
```

### AVG Function
The `AVG` function returns the average value of a numeric column.

```sql
AVG(column_name);
```

**Example**

Calculate the average salary:

```sql
SELECT
  AVG(salary) AS average_salary
FROM employees;
```

### MIN and MAX Functions
The `MIN` function returns the smallest value, and the `MAX` function returns the largest value in a column.

```sql
MIN(column_name);
MAX(column_name);
```

**Example**

Retrieve the minimum and maximum order amounts:

```sql
SELECT
  MIN(order_amount) AS min_order,
  MAX(order_amount) AS max_order
FROM orders;
```

### Practice Exercises

* Get the `square root` of all `product` `prices`, now update all of the `prices` with the price `multipled` by the square root.
* Once the above exercise has been completed `update` the all the tables that link to `products` and if any values need `updating`, make these changes
* Find the `employee` who gets paid the `least`, `update` their `salary` to be more then the person with the `maximum` `salary`.
  

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_6/Date_time.md">Previous: Date and Time Functions</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_6/Case.md">Next: Case Statements</a>
</p>
