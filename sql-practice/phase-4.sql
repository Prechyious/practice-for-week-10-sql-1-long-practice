-- Your code here
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS performance_review;
DROP TABLE IF EXISTS relationships;
DROP TABLE IF EXISTS office_parties;

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    department VARCHAR(255),
    role VARCHAR(255)
);

CREATE TABLE performance_review (
    id INTEGER PRIMARY KEY,
    employee VARCHAR(255),
    score FLOAT
);

CREATE TABLE office_parties (
    id INTEGER PRIMARY KEY,
    budget VARCHAR(40),
    location VARCHAR(40),
    date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE relationships (
    id INTEGER PRIMARY KEY,
    employee VARCHAR(255),
    relationship_with VARCHAR(255)
);

INSERT INTO employees (first_name, last_name, department, role)
VALUES
("Micheal", "Scott", "Management", "Regional Manager"),
("Dwight", "Schrute", "Sales", "Assistant Regional Manager"),
("Jim", "Halpert", "Sales", "Sales Representative"),
("Pam", "Beesly", "Reception", "Receptionist"),
("Kelly", "Kapoor", "Product Oversight", "Customer Service Representative"),
("Angela", "Martin", "Accounting", "Head of Accounting"),
("Roy", "Anderson", "Warehouse", "Warehouse Staff");

INSERT INTO relationships (employee, relationship_with)
VALUES ("Roy Anderson", "Pam Beesly");

INSERT INTO employees (first_name, last_name, department, role)
VALUES ("Ryan", "Howard", "Reception", "Temp");

INSERT INTO performance_review (employee, score)
VALUES
    ("Dwight Schrute", 3.3),
    ("Jim Halpert", 4.2);

UPDATE performance_review
    SET score = 9.0
    WHERE employee = "Dwight Schrute";

UPDATE performance_review
    SET score = 9.3
    WHERE employee = "Jim Halpert";

UPDATE employees
    SET role = "Assistant Regional Manager"
    WHERE first_name = "Jim" AND last_name = "Halpert";

UPDATE employees
    SET department = "Sales", role = "Sales Representative"
    WHERE first_name = "Ryan" AND last_name = "Howard";

INSERT INTO office_parties (budget, location)
VALUES ("$200.00", "onsite");

INSERT INTO relationships (employee, relationship_with)
VALUES ("Angela Martin", "Dwight Schrute");

INSERT INTO performance_review (employee, score)
VALUES
    ("Angela Martin", 6.2);

INSERT INTO relationships (employee, relationship_with)
VALUES ("Ryan Howard", "Kelly Kapoor");

INSERT INTO office_parties (budget, location)
VALUES ("$50.00", "onsite");

DELETE FROM employees WHERE first_name = "Jim" AND last_name = "Halpert";
DELETE FROM relationships WHERE employee = "Roy Anderson" AND relationship_with = "Pam Beesly";

INSERT INTO performance_review (employee, score)
VALUES
    ("Pam Beesly", 7.6);

UPDATE performance_review
    SET score = 8.7
    WHERE employee = "Dwight Schrute";

DELETE FROM employees WHERE first_name = "Ryan" AND last_name = "Howard";
DELETE FROM relationships WHERE employee = "Ryan Howard";

DELETE FROM relationships WHERE employee = "Roy Anderson";

INSERT INTO employees (first_name, last_name, department, role)
    VALUES ("Jim", "Halpert", "Sales", "Sales Representative");

INSERT INTO employees (first_name, last_name, department, role)
VALUES ("Karen", "Filippelli", "Sales", "Sales Representative");

INSERT INTO relationships (employee, relationship_with)
    VALUES ("Karen Filippelli", "Jim Halpert");

INSERT INTO office_parties (budget, location)
    VALUES ("$120.00", "onsite");

DELETE FROM office_parties where budget = "$120.00";

INSERT INTO office_parties (budget, location)
    VALUES("$300.00", "offsite");

DELETE FROM relationships WHERE employee = "Karen Filippelli" AND relationship_with = "Jim Halpert";

INSERT INTO relationships (employee, relationship_with)
    VALUES("Pam Beesly", "Jim Halpert");
