# SQL
SQL is a standard language for storing, manipulating and retrieving data in databases.

## What is SQL?
- SQL stands for Structured Query Language
- SQL lets you access and manipulate databases
- SQL became a standard of the American National Standards Institute (ANSI) in 1986, and of the International Organization for Standardization (ISO) in 1987

### SQL Comments
Single line comments start with --.\
Multi-line comments start with /* and end with */


## RDBMS
Relational Database Management System is the basis for SQL. The data in RDBMS is stored in Tables. A Table consists of rows - **Tuples / Records** and Columns - **Attributes/Fields**.

- RDBMS is the basis for SQL, and for all modern database systems such as MS SQL Server, IBM DB2, Oracle, MySQL, and Microsoft Access.
- A table is a collection of related data entries and it consists of columns and rows.
- Every table is broken up into smaller entities called **fields**. 
- A field is a column in a table that is designed to maintain specific information about every record in the table.A column is a vertical entity in a table that contains all information associated with a specific field in a table.
- A **record**, also called a row, is each individual entry that exists in a table.A record is a horizontal entity in a table.
A column is a vertical entity in a table that contains all information associated with a specific field in a table.

## SQL Stored Procedures
A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.\
So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.\
You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.

```sql
    CREATE PROCEDURE procedure_name
    AS
    sql_statement
    GO;
```

### Some of The Most Important SQL Commands
**SELECT** - extracts data from a database\
**UPDATE** - updates data in a database\
**DELETE** - deletes data from a database\
**INSERT INTO** - inserts new data into a database\
**CREATE DATABASE** - creates a new database\
**ALTER DATABASE** - modifies a database\
**CREATE TABLE** - creates a new table\
**ALTER TABLE** - modifies a table\
**DROP TABLE** - deletes a table\
**CREATE INDEX** - creates an index (search key)\
**DROP INDEX** - deletes an index\

[SQL Keywords](https://www.w3schools.com/sql/sql_ref_keywords.asp)

[SQL Functions](https://www.w3schools.com/sql/sql_ref_mysql.asp)
### SQL WILDCARD CHARACTERS
A wildcard character is used to substitute one or more characters in a string.\
Wildcard characters are used with the LIKE operator. 

|Symbol	|Description|
| ----- | --------- |
|%	|Represents zero or more characters|
|_|	Represents a single character|
|[]|	Represents any single character within the brackets *|
|^	|Represents any character not in the brackets *|
|-	|Represents any single character within the specified range *|
|{}|	Represents any escaped character **|

## CLAUSES

**1. WHERE**\
 Filter records / Extract only those records that fulfill a specified condition  
 Used in UPDATE, DELETE also.

```sql
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition;
```

| Operator | Description |	
| -------- | ----------- |
|=| Equal|
|>|	Greater than|	
|<|Less than|	
|>=|Greater than or equal|	
|<=|Less than or equal|	
|<> or !=|Not equal|
|BETWEEN|Between a certain range|
|LIKE|Search for a pattern|	
|IN|To specify multiple possible values for a column|

**2. ORDER BY**\
Sort the result-set in ascending or descending order

```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
```

In 2nd `column1,column2` determines on what `basis you want it sorted`. If there are data having same values in column1, then use column 2 also.

```sql
SELECT * FROM table_name
ORDER BY column1 ASC, column2 DESC;
```

Selects all columns from the table_name, sorted ascending by column1 and descending by column2.

**3. GROUP BY**\
groups rows that have the same values into summary rows. \
It is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

```sql
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
```

**4.  HAVING**
Used because the WHERE keyword cannot be used with aggregate functions.
```sql
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
```

**5. JOIN**\
Used to combine rows from two or more tables, based on a related column between them.

Different types of the JOINs in SQL:

![Types of Joins](https://cdn.educba.com/academy/wp-content/uploads/2019/10/Types-of-Join-inSQL.jpg)

**(INNER) JOIN :** Returns records that have matching values in both tables.

```sql
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name; 
```

You can make this work this without writing table_name.column_name. But if column_name used in condition is included in the SELECT statement, it will give error.

**LEFT (OUTER) JOIN :** Returns all records from the left table, and the matched records from the right table. The result is 0 records from the right side, if there is no match.

```sql
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
```

**RIGHT (OUTER) JOIN :** Returns all records from the right table, and the matched records from the left table. The result is 0 records from the left side, if there is no match.

```sql
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
```

**FULL (OUTER) JOIN :** Returns all records when there is a match in either left or right table.

```sql
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;
```

## OPERATORS
**1. AND**\
Filter records based on more than one condition.

```sql    
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
```

**2. OR**

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;
```


**Note :** The `OR` operator displays a record if `any` of the conditions are TRUE. \
The `AND` operator displays a record if `all` the conditions are TRUE.

You can combine the AND and OR operators : 

```sql
SELECT * FROM table_name
WHERE condition1 AND (condition2 OR condition3);
```

**3. NOT**\
Used in combination with other operators to give the opposite result, also called the negative result.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
```

**4. IS NULL/ IS NOT NULL**

 If a field in a table is optional, it is possible to insert a new record or update a record without adding a value to this field. Then, the field will be saved with a NULL value.\
A NULL value is different from a zero value or a field that contains spaces. A field with a NULL value is one that has been left blank during record creation

*IS NULL*

```sql
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
```

*IS NOT NULL*

```sql
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
```

**5. LIKE**\
Used in a WHERE clause to search for a specified pattern in a column.

```sql
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
```
 You can also combine any number of conditions using AND or OR operators. Can also mix-match `%` and `_` to get more specified results.

**6. IN**\
Shorthand for multiple OR conditions.

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
```

Can use `NOT` and `subqueries` to get specified results

```sql
SELECT * FROM table2
WHERE column_name NOT IN (SELECT column_name FROM table2);
```

**7. BETWEEN**\
Selects values within a given range. The values can be numbers, text, or dates. It is inclusive: begin and end values are included.

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

Combined with IN :

```sql
SELECT * FROM table_name
WHERE column1 BETWEEN value1 AND value2
AND column2 IN (value4, value5, value6);
```

Between text values and combined with ORDER BY :

```sql
SELECT * FROM table_name
WHERE column1 BETWEEN 'text1' AND 'text2'
ORDER BY column1;
```

Between DATES :

```sql
SELECT * FROM table_name
WHERE column_name BETWEEN #MM/DD/YYYY# AND #MM/DD/YYYY#;
                        //'YYYY-MM-DD' AND 'YYYY-MM-DD';
```

**8. AS (Alias) :**\
SQL aliases are used to give a table, or a column in a table, a temporary name.\
An alias only exists for the duration of that query.

When used on column :

```sql
SELECT column1 AS alias1, column2 AS alias2
FROM table_name;
```

When used on table :

```sql
SELECT column_name(s)
FROM table_name AS alias_name;
```

If you want your alias to contain one or more spaces, surround your alias with `[square brackets]` or `"double quotes"`.

```sql
SELECT column_name AS [alias name]
FROM table_name;
```

**9. CONCAT :**

```sql
SELECT column1, column2 + ', ' + column3 + ' ' + column4 + ', ' + column5 AS alias_name
FROM table_name;
```

Using CONCAT operator: 

```sql
SELECT column1, CONCAT(column2 + ', ' + column3 + ' ' + column4 + ', ' + column5|) AS alias_name
FROM table_name;
```

**10. UNION**\
Used to combine the result-set of two or more SELECT statements.
- Every SELECT statement within UNION must have the same number of columns
- The columns must also have similar data types
- The columns in every SELECT statement must also be in the same order

```sql
SELECT column_name(s) FROM table1
UNION (ALL)
SELECT column_name(s) FROM table2;
```

UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL.

## STATEMENTS

**1. SELECT** 

Retrieves data from a database.  
`column1, column2` determines which columns to be displayed.
```
SELECT column1, column2, ...
FROM table_name;
``` 

Return all columns

```sql
SELECT * FROM table_name;
```

Return only DISTINCT (different) values

```sql
SELECT DISTINCT column1, column2, ...
FROM table_name;
```

By using the DISTINCT keyword in a function called COUNT, we can return the number of different values in a column.

```sql
SELECT COUNT(DISTINCT column_name) 
FROM table_name;
```

**2. SELECT INTO**\
Copies data from one table into a new table . Can use `IN`, `AS` operators alongside.

```sql
SELECT column1, column2, column3, ...    \\*
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;
```

**3. INSERT INTO**\
To insert new records in a table.

```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

Adding values for all the columns of the table but order of the values is in the same order

```sql
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
```

To insert multiple rows of data

```sql
INSERT INTO Customers (column1, column2, column3, ...) 
VALUES (value11, value12, value13, ...),
(value21, value22, value23, ...),
(value31, value32, value33, ...);
```

**4. INSERT INTO SELECT**\
Copies data from one table and inserts it into another table.
Requires that the data types in source and target tables match.

```sql
INSERT INTO table2
SELECT * FROM table1
WHERE condition;
```

Copy only some columns from one table into another table.

```sql
INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;    
```

**5. UPDATE**\
 To modify the existing records in a table
If you omit the WHERE clause, all records in the table will be updated.

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

**6.DELETE**\
To delete existing records in a table. If you omit the WHERE clause, all records in the table will be deleted.

```sql
DELETE FROM table_name WHERE condition;
```

To delete all rows in a table without deleting the table. This means that the table structure, attributes, and indexes will be intact.

```sql
DELETE FROM table_name;
```

To delete the table completely.

```sql
DROP TABLE Customers;
```

**7. CASE**\
Goes through conditions and returns a value when the first condition is met (like an if-then-else statement). If no conditions are true, it returns the value in the ELSE clause. If there is no ELSE part and no conditions are true, it returns NULL. 

```sql
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;
```
**8. CREATE VIEW**\
View is a virtual table based on the result-set of an SQL statement.

```sql
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

## DATABASE COMMANDS

**1. CREATE DATABASE**\
Used to create a new SQL database.

```sql
CREATE DATABASE databasename;
```

To check the **list** of databases :

```sql
SHOW DATABASES;
```

**2. DROP DATABASE**\
Used to drop an existing SQL database.\
Deleting a database will result in loss of complete information stored in the database.

```sql
DROP DATABASE databasename;
```

**3. BACKUP DATABASE**\
Used in SQL Server to create a full back up of an existing SQL database.

```sql
BACKUP DATABASE databasename
TO DISK = 'filepath';
```


A differential back up only backs up the parts of the database that have changed since the last full database backup.\
A differential back up reduces the back up time (since only the changes are backed up).

```sql
BACKUP DATABASE databasename
TO DISK = 'filepath'
WITH DIFFERENTIAL;
```

**4. CREATE TABLE**\
Used to create a new table in a database.

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
....
);
```

A copy of an existing table can also be created using CREATE TABLE.\
The new table gets the same column definitions. All columns or specific columns can be selected.\
If you create a new table using an existing table, the new table will be filled with the existing values from the old table.

```sql
CREATE TABLE new_table_name AS
    SELECT column1, column2,...
    FROM existing_table_name
    WHERE ....;
```

**5. DROP TABLE**\
Used to drop an existing table in a database.

```sql
DROP TABLE table_name;
```

**6. TRUNCATE TABLE**\
Used to delete the data inside a table, but not the table itself.

```sql
TRUNCATE TABLE table_name;
```

**7. ALTER TABLE**\
Used to add, delete, or modify columns in an existing table.\
Used to add and drop various constraints on an existing table.

##### i) ADD COLUMN

```sql
ALTER TABLE table_name
ADD column_name datatype;
```

##### ii) DROP COLUMN

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

##### iii) RENAME COLUMN

```sql
ALTER TABLE table_name
RENAME COLUMN old_name to new_name;
```

##### iv) ALTER/MODIFY COLUMN datatype

```sql
ALTER TABLE table_name
ALTER COLUMN column_name datatype;
```

```sql
ALTER TABLE table_name
MODIFY COLUMN column_name datatype;
```

## SQL Constraints

SQL constraints are used to specify rules for data in a table.\
Constraints can be specified when the table is created with the CREATE TABLE statement, or after the table is created with the ALTER TABLE statement.

```sql
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
);
```

Constraints are used to limit the type of data that can go into a table.\
This ensures the accuracy and reliability of the data in the table. If there is any violation between the constraint and the data action, the action is aborted.\
Constraints can be column level or table level. Column level constraints apply to a column, and table level constraints apply to the whole table.

**1. NOT NULL**\
By default, a column can hold NULL values.
The NOT NULL constraint enforces a column to NOT accept NULL values.

```sql
ALTER TABLE table_name
ALTER COLUMN column_name int NOT NULL;
```

```sql
ALTER TABLE Persons
MODIFY COLUMN Age int NOT NULL;
```
**2. UNIQUE**\
Ensures that all values in a column are different.\
Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.\
A PRIMARY KEY constraint automatically has a UNIQUE constraint.\
However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table

```sql
CREATE TABLE table_name (
    column1 datatype NOT NULL UNIQUE,       
    column2 datatype NOT NULL,
    column3 datatype,
    ....

    //UNIQUE (column1)
    //CONSTRAINT constraint_name UNIQUE (column1, column2) 
);
```

To give a name to constraint name : 


```sql
ALTER TABLE table_name
ADD UNIQUE (column1, column2, ....);

// ADD CONSTRAINT constraint_name UNIQUE (column1, column2);
```
```sql
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
```

**3. PRIMARY KEY**\
Uniquely identifies each record in a table.\
Must contain UNIQUE values, and cannot contain NULL values.\
A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).
```sql
CREATE TABLE table_name (
    column1 datatype NOT NULL PRIMARY KEY

    //PRIMARY KEY (column1)
    //CONSTRAINT constraint_name PRIMARY KEY (column1,column2)
);
```
```sql
ALTER TABLE table_name
ADD PRIMARY KEY (column_name);
//ADD CONSTRAINT constraint_name PRIMARY KEY (column1, column2);
```
```sql
ALTER TABLE table_name
DROP PRIMARY KEY;
DROP CONSTRAINT constraint_name;
```

**4. FOREIGN KEY**\
Used to prevent actions that would destroy links between tables.\
A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.\
The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.
```sql
CREATE TABLE table1 (
    column1 datatype NOT NULL,
    column2 datatype NOT NULL,
    PRIMARY KEY (column1),
    FOREIGN KEY (column2) REFERENCES table2(column2)

    //CONSTRAINT constraint_name FOREIGN KEY (column2)
REFERENCES table2(column2)
);
```

```sql
ALTER TABLE table1
ADD FOREIGN KEY (column2) REFERENCES table2(column2);
//ADD CONSTRAINT constraint_name
FOREIGN KEY (column2) REFERENCES table2(column2);
```
```sql
ALTER TABLE table1
DROP FOREIGN KEY constraint_name;

//DROP CONSTRAINT constraint_name;
```

**5. CHECK**\
Used to limit the value range that can be placed in a column.\
If you define a CHECK constraint on a column it will allow only certain values for this column.

```sql
CREATE TABLE table_name (
column1 datatype NOT NULL,
CHECK (column1 >= value)

//CONSTRAINT constraint_name CHECK (column1 >= value1 AND column2 ='value2')
);
```

```sql
ALTER TABLE table_name
ADD CHECK (column_name>=18);

//ADD CONSTRAINT constraint_name CHECK (column1 >= value1 AND column2 ='value2');
```
```sql
ALTER TABLE table_name
DROP CHECK constraint_name;
```

**6. DEFAULT**\
Used to set a default value for a column.\
The default value will be added to all new records, if no other value is specified.

```sql
CREATE TABLE table_name (
    column_name datatype DEFAULT 'default_value'
);
```

```sql
ALTER TABLE table_name
ALTER column_name SET DEFAULT 'default_value';


//ALTER TABLE table_name
ADD CONSTRAINT constraint_name
DEFAULT 'default_name' FOR column_name;

```
To drop default constraint:
```sql
ALTER TABLE Persons
ALTER City DROP DEFAULT;
```

**7. AUTO INCREMENT**\
Allows a unique number to be generated automatically when a new record is inserted into a table.
```sql
CREATE TABLE table_name (
    column_name datatype AUTO_INCREMENT
    PRIMARY KEY (column_name)
);
```
```sql
ALTER TABLE table_name AUTO_INCREMENT=value;
```
**8. DATE DATATYPE**\
DATE - format YYYY-MM-DD\
DATETIME - format: YYYY-MM-DD HH:MI:SS\
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS\
YEAR - format YYYY or YY


## SQL Aggregate Functions
- An aggregate function is a function that performs a calculation on a set of values, and returns a single value.
- Often used with the GROUP BY clause of the SELECT statement. The GROUP BY clause splits the result-set into groups of values and the aggregate function can be used to return a single value for each group.
- Aggregate functions ignore null values (except for COUNT())

The most commonly used SQL aggregate functions are:
(can use WHERE, AS, GROUP BY in all of these functions)

**1. MIN()** - returns the smallest value within the selected column

```sql
SELECT MIN(column_name)
FROM table_name
WHERE condition;
```

**Use an alias :**
When you use MIN() or MAX(), the returned column will not have a descriptive name. To give the column a descriptive name, use the AS keyword.

```sql
SELECT MIN(column_name) AS alias_name
FROM table_name;
```

**MIN() with GROUP BY :**
Use the MIN() function and the GROUP BY clause, to return the smallest price for each category in the Products table.

```sql
SELECT MIN(column1) AS alias_name, column2
FROM table_name
GROUP BY column2;
```

**2. MAX()** - returns the largest value within the selected column\

```sql
SELECT MAX(column_name)
FROM table_name
WHERE condition;
```


Note : Can use `*` symbol instead of column_name. If you specify a column name instead of (*), NULL values will not be counted

**3. COUNT()** - returns the number of rows in a set

```sql  
SELECT COUNT(column_name)
FROM table_name
WHERE condition;               
 //optional
```

**Use an Alias :**\
Give the counted column a name by using the AS keyword

```sql
SELECT COUNT(*) AS [alias_name]
FROM table_name;
```

Similarly, can use **GROUP BY** as of in min and max.

**4. SUM()** - returns the total sum of a numerical column

```sql
SELECT SUM(column_name)
FROM table_name
WHERE condition;
```

The parameter inside the SUM() function can also be an expression

```sql
SELECT SUM(column_name * 10)
FROM table_name;
```

**5. AVG()** - returns the average value of a numerical column. NULL values are ignored.

```sql
SELECT AVG(column_name)
FROM table_name
WHERE condition;
```

To list alldata with a higher values than average, we can use the AVG() function in a sub query

```sql
SELECT * FROM table_name
WHERE data > (SELECT AVG(data) FROM table_name);
```