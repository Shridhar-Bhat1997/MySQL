# Alter table

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

# Create Table Using Another Table

CREATE TABLE TestTable AS
SELECT FirstName, LastName
FROM Persons;

# ALTER TABLE - ADD Column

ALTER TABLE Persons
ADD Email varchar(255);

# ALTER TABLE - DROP COLUMN

ALTER TABLE Persons
DROP COLUMN Email;

# ALTER TABLE - ALTER/MODIFY COLUMN

ALTER TABLE persons
MODIFY COLUMN Address varchar(200);


