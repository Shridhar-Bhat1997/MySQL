# SQL Joins

CREATE TABLE tutorial_info
(
tutorial_id int primary key,
views int,
likes int,
dislikes int,
shares int
);

INSERT INTO tutorial_info 
VALUES(1,12000,55,12,4);

INSERT INTO tutorial_info 
VALUES(2,14000,12,2,46);

INSERT INTO tutorial_info 
VALUES(3,23000,17,1,84);

INSERT INTO tutorial_info 
VALUES(4,50000,67,3,90);

INSERT INTO tutorial_info 
VALUES(5,9000,32,12,54);

INSERT INTO tutorial_info 
VALUES(6,78000,67,62,48);

INSERT INTO tutorial_info 
VALUES(7,89000,32,1,87);

INSERT INTO tutorial_info 
VALUES(8,72000,54,12,14);

SELECT * FROM tutorial_info;

SELECT t.id,t.title,t.duration,
ti.views,ti.likes,ti.shares
FROM tutorial AS t
JOIN tutorial_info AS ti
ON t.id=ti.tutorial_id;

# Using Group By clause with SQL Joins

SELECT t.subject , SUM(ti.views) AS "Total Views",
SUM(ti.likes) AS "Total Likes"
FROM tutorial AS t
JOIN tutorial_info AS ti
ON t.id=ti.tutorial_id
GROUP BY t.subject;

#  ABS() function returns the absolute value of a number.

SELECT ABS(-13);

SELECT t.title,
ABS(ti.likes-ti.dislikes) AS "Difference Of Likes and Dislikes"
FROM tutorial AS t
JOIN tutorial_info AS ti
ON t.id=ti.tutorial_id;

# ROUND() function to round of a number.

SELECT ROUND(54.783);

SELECT ROUND(54.783,2);

SELECT t.subject, ROUND(AVG(ti.likes))
AS " The average number of likes rounded off to the nearest decimal point"
FROM tutorial AS t
JOIN tutorial_info AS ti
ON t.id=tutorial_id
GROUP BY t.subject;

# DIV() perform integer division on numbers & doesn't return remainder

SELECT 5 DIV 2;

SELECT 5 MOD 2; # return remainder

SELECT duration FROM tutorial;

SELECT title,duration DIV 1 AS minutes,
ROUND(duration*60 MOD 60) AS seconds
FROM tutorial;

# CONCAT() 	-- to concatenate the strings

SELECT CONCAT("HELLO ","WORLD!");

SELECT CONCAT(title, " belongs to ", subject) AS Tutorial
FROM tutorial;

# UPPER() & LOWER() functions

SELECT LOWER(title) FROM tutorial;

SELECT UPPER(title) FROM tutorial;



