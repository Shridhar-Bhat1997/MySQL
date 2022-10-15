CREATE TABLE emp
(
id int primary key,
name varchar(30),
age int,
email varchar(30),
salary decimal(10,2)
);

INSERT INTO emp 
VALUES (101,"abc",34,"abc@gmail.com",50000);

INSERT INTO emp 
VALUES (102,"ab",44,"ab@gmail.com",30000);

INSERT INTO emp 
VALUES (103,"ac",31,"bc@gmail.com",38000);

INSERT INTO emp 
VALUES (104,"xy",23,"xy@gmail.com",5000);

INSERT INTO emp 
VALUES (105,"xz",34,"xz@gmail.com",2000);

DESC emp;

SELECT * FROM emp;

# comparision operators
SELECT * FROM emp
WHERE salary<10000;

SELECT * FROM emp
WHERE age<30;

SELECT salary FROM emp
WHERE name="ab";

SELECT * FROM emp;

# logical operators

SELECT * FROM emp
WHERE age>=30 AND salary>=25000;

SELECT * FROM emp
WHERE name LIKE "a%";

# details about employee who age equal to 34,44 etc
SELECT * FROM emp
WHERE age IN (34,31,23,43);

# details about employee who's age between 20 to 32
SELECT * FROM emp
WHERE age BETWEEN 20 AND 32	;



