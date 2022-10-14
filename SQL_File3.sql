DESCRIBE employee;

# Creating tables from other tables
CREATE TABLE emp_info AS SELECT empid,name FROM employee; 

DESC emp_info;

