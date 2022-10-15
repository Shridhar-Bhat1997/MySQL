# Aggregate Functions

SELECT COUNT(*) FROM emp; # to count the number of records

SELECT COUNT(*) FROM emp
WHERE age>=25;

SELECT MAX(age) FROM emp; # tells maximum value for a particular field in a table

SELECT MIN(age) FROM emp; # tells minimum values

SELECT SUM(salary) FROM emp; # sum values for a numeric field in a table.

SELECT AVG(age) FROM emp; # Average age of a employees

# TRUNCATE command -- to delete all records from the table (DDL COMMAND)

TRUNCATE TABLE persons;

SELECT * FROM persons;


