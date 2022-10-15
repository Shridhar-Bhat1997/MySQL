# Views in SQL

SELECT * FROM emp;

# Creating a view 

CREATE VIEW emp_view AS 
SELECT id,name,email
FROM emp
WHERE name is NOT NULL;

SELECT * FROM emp_view;

INSERT INTO emp_view 
VALUES(3001,"STU","stc@gmail.com");

INSERT INTO emp_view 
VALUES(3002,NULL,"stc@gmail.com");

SELECT * FROM emp_view;

CREATE VIEW emp_view_new AS
SELECT id,name,email
FROM emp
WHERE name IS NOT NULL
WITH CHECK OPTION;

INSERT INTO emp_view_new
VALUES(2002,NULL,"try@gmail.com");

UPDATE emp_view
SET name="Bond"
WHERE id=103;

SELECT * FROM emp_view;

DELETE FROM emp_view
WHERE id=104;

DROP VIEW emp_view;

SELECT * FROM emp_view;





