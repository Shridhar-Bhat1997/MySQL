# Update Query

SELECT * FROM emp;

UPDATE emp
SET age=26
WHERE id=104;

# Delete Query

DELETE FROM emp
WHERE id=105;

SELECT * FROM emp;

# LIKE operator

SELECT * FROM emp
WHERE email LIKE "%gmail%";

# employee whose age greater than 20 & less than 30 years old

SELECT * FROM emp
WHERE age LIKE "2_";

# employee name whose second character is b

SELECT * FROM emp
WHERE name LIKE "_b%";