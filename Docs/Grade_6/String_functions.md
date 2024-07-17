# String Functions

## Introduction
String functions in SQL are used to manipulate and perform operations on character strings. This section will cover common string functions, their syntax, and examples of how to use them.

### CONCAT Function
The `CONCAT` function is used to concatenate two or more strings together.

```sql
CONCAT(string1, string2, ...);
```

**Example**

Concatenate first name and last name into a full name:

```sql
SELECT CONCAT(firstname, ' ', lastname) AS full_name
FROM employees;
```

### SUBSTRING Function
The `SUBSTRING` function extracts a substring from a string.


```sql
SUBSTRING(string, start_position,length);
```
* string: The source string from which the substring will be extracted.
* start_position: The starting position from which to extract the substring.
* length: Optional. The number of characters to extract.

**Example**

Extract the first three characters of the product name:

```sql
SELECT SUBSTRING(productname, 1,3) AS short_name
FROM products;
```

### UPPER and LOWER Functions
The `UPPER` function converts a string to uppercase, while the `LOWER` function converts a string to lowercase.

```sql
UPPER(string);
LOWER(string);
```

**Example**

Convert the last name to uppercase and first name to lowercase:

```sql
SELECT UPPER(lastname) AS last_name_upper, LOWER(firstname) AS first_name_lower
FROM employees;
```

### LENGTH Function
The `LENGTH` function returns the length of a string.

```sql
LENGTH(string);
```

**Example**

Calculate the length of the email addresses:

```sql
SELECT email, LENGTH(email) AS email_length
FROM customers;
```

### TRIM Function
The `TRIM` function removes leading and trailing spaces from a string.

```sql
TRIM([LEADING | TRAILING | BOTH] trim_character FROM string);
```

**Example**

Remove leading and trailing spaces from the address:

```sql
SELECT TRIM(address) AS cleaned_address
FROM customers;
```

### REPLACE Function
The `REPLACE` function replaces occurrences of a specified string with another string.

```sql
REPLACE(string, old_substring, new_substring);
```

**Example**

Replace 'Street' with 'St.' in the address:

```sql
SELECT REPLACE(address, 'Street', 'St.') AS modified_address
FROM customers;
```

### Practice Exercises

* `Select` only the `first` character from all `employees` first name
* Using the `results` from the exercise above `concatenate` the `first letter` with the `lastname`, this must have a space inbetween.

---

<p align="center">
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_5/Constraints.md">Previous: Constraints</a>
    |
    <a href="https://github.com/Tom-Fynes/sql-101/blob/main/Docs/Grade_6/Date_time.md">Next: Date and Time Functions</a>
</p>
