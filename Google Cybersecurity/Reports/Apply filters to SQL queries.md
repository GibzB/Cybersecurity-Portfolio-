# Apply filters to SQL queries

**Project Description**

This document showcases my competency in using SQL queries with filtering operators (AND, OR, NOT, and LIKE) to retrieve specific data from relational database tables. I will demonstrate how to filter data based on dates, times, text patterns, and various conditions applied to different columns.

**Retrieve After Hours Failed Login Attempts:**

Here's a query to identify all failed login attempts (success = 0) that occurred after 6:00 PM (18:00) on any given day:

**SQL**

```
SELECT *
FROM log_in_attempts
WHERE success = 0 AND login_time >= '18:00:00';
```

**Explanation:**

* `SELECT *`: This selects all columns from the `log_in_attempts` table.
* `FROM log_in_attempts`: This specifies the table to query.
* `WHERE success = 0`: This filters for records where the `success` column value is 0 (failed login attempt).
* `AND login_time >= '18:00:00'`: This filters for records where the `login_time` is greater than or equal to '18:00:00' (after 6:00 PM).

**Retrieve Login Attempts on Specific Dates:**

This query retrieves all login attempts that occured on May 8th, 2022 (2022-05-08) or May 9th, 2022 (2022-05-09):

**SQL**

```
SELECT *
FROM log_in_attempts
WHERE login_date IN ('2022-05-08', '2022-05-09');
```

**Explanation:**

* `SELECT *`: This selects all columns from the `log_in_attempts` table.
* `FROM log_in_attempts`: This specifies the table to query.
* `WHERE login_date IN ('2022-05-08', '2022-05-09')`: This filters for records where the `login_date` column value is either '2022-05-08' or '2022-05-09'.

**Retrieve Login Attempts Outside of Mexico:**

The following query identifies all login attempts that did not originate from Mexico:

**SQL**

```
SELECT *
FROM log_in_attempts
WHERE country NOT LIKE 'MEX%';
```

**Explanation:**

* `SELECT *`: This selects all columns from the `log_in_attempts` table.
* `FROM log_in_attempts`: This specifies the table to query.
* `WHERE country NOT LIKE 'MEX%'`: This filters for records where the `country` column value does not begin with 'MEX' (including 'MEX' and 'MEXICO'). The `%` symbol is a wildcard that matches any number of characters after 'MEX'.

**Retrieve Employees in Marketing:**

This query retrieves all employees in the Marketing department located in offices within the East building:

**SQL**

```
SELECT *
FROM employees
WHERE department LIKE 'Marketing%' AND office LIKE 'East%';
```

**Explanation:**

* `SELECT *`: This selects all columns from the `employees` table.
* `FROM employees`: This specifies the table to query.
* `WHERE department LIKE 'Marketing%'`: This filters for records where the `department` column value begins with 'Marketing' (including 'Marketing,' 'Marketing Manager,' etc.).
* `AND office LIKE 'East%'`: This filters for records where the `office` column value begins with 'East' (including 'East-170,' 'East-320,' etc.).

**Retrieve Employees in Finance or Sales:**

The following query retrieves all employees working in either the Sales or Finance department:

**SQL**

```
SELECT *
FROM employees
WHERE department IN ('Sales', 'Finance');
```

**Explanation:**

* `SELECT *`: This selects all columns from the `employees` table.
* `FROM employees`: This specifies the table to query.
* `WHERE department IN ('Sales', 'Finance')`: This filters for records where the `department` column value is either 'Sales' or 'Finance'.

**Retrieve All Employees Not in IT:**

This query identifies all employees excluding those in the Information Technology department:

**SQL**

```
SELECT *
FROM employees
WHERE department NOT LIKE 'Information Technology%';
```

**Explanation:**

* `SELECT *`: This selects all columns from the `employees` table.
* `FROM employees`: This specifies the table to query.
* `WHERE department NOT LIKE 'Information Technology%'`: This filters for records where the `department`
