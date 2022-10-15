# ORDER BY clause 

SELECT * FROM emp
ORDER BY age;

SELECT * FROM emp
ORDER BY age DESC;

# GROUP BY clause

CREATE TABLE tutorial
(
id int primary key,
title varchar(30),
subject varchar(30),
duration decimal(4,2),
upload_date date
);

INSERT INTO tutorial 
VALUES(1,"Select Query","SQL",4.56,"2013-09-09");

INSERT INTO tutorial 
VALUES(2,"Insert Query","SQL",5.56,"2013-05-04");

INSERT INTO tutorial 
VALUES(3,"Arithemetic Operators","SQL",3.56,"2013-03-19");

INSERT INTO tutorial 
VALUES(4,"ls command","Shell Script",3.26,"2013-09-29");

INSERT INTO tutorial 
VALUES(5,"pwd command","Shell Script",7.36,"2013-01-19");

INSERT INTO tutorial 
VALUES(6,"while loop","C",4.56,"2014-09-09");

INSERT INTO tutorial 
VALUES(7,"Break statement","C",4.56,"2017-09-09");

INSERT INTO tutorial 
VALUES(8,"Continue Statement","C",4.56,"2018-05-14");

SELECT * FROM tutorial;

SELECT subject, COUNT(*)
FROM tutorial
GROUP BY subject;

SELECT subject,SUM(duration)
FROM tutorial
GROUP BY subject;

# Distinct keyword

SELECT * FROM tutorial;

SELECT DISTINCT subject FROM tutorial
ORDER BY upload_date;

# Aliasing through AS clause

SELECT title as Title, upload_date AS "Upload Date", duration AS Length
FROM tutorial;







