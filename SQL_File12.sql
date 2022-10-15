# Constraints 

#NOT NULL - Ensures that a column cannot have a NULL value

CREATE TABLE man (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

# SQL NOT NULL on ALTER TABLE

ALTER TABLE man
MODIFY COLUMN Age int NOT NULL;

DESC man;

# UNIQUE - Ensures that all values in a column are different

CREATE TABLE woman (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
);

# SQL UNIQUE Constraint on ALTER TABLE

ALTER TABLE woman
ADD UNIQUE (ID);

# PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table

CREATE TABLE worker (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

# SQL PRIMARY KEY on ALTER TABLE

ALTER TABLE worker
ADD PRIMARY KEY (ID);

# FOREIGN KEY - Prevents actions that would destroy links between tables
# A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
# The table with the foreign key is called the child table, and the table with the primary key is called the
# referenced or parent table.

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES persons(PersonID)
);

# SQL FOREIGN KEY on ALTER TABLE

ALTER TABLE Orders
ADD FOREIGN KEY (PersonID) REFERENCES persons(PersonID);
