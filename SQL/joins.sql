CREATE TABLE Employee (
    id INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    Age INT,
    emailID VARCHAR(100),
    PhoneNo INT,
    City VARCHAR(50)
);

CREATE TABLE Client (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    emailID VARCHAR(100),
    PhoneNo INT,
    City VARCHAR(50),
    empID INT,
    FOREIGN KEY (empID) REFERENCES Employee(id)
);

CREATE TABLE Project (
    id INT PRIMARY KEY,
    empID INT,
    name VARCHAR(50),
    startdate DATE,
    clientID INT,
    FOREIGN KEY (empID) REFERENCES Employee(id),
    FOREIGN KEY (clientID) REFERENCES Client(id)
);

-- Insert data into Employee table
INSERT INTO Employee (id, fname, lname, Age, emailID, PhoneNo, City)
VALUES
(1, 'Aman', 'Proto', 32, 'aman@gmail.com', 898, 'Delhi'),
(2, 'Yagya', 'Narayan', 44, 'yagya@gmail.com', 222, 'Palam'),
(3, 'Rahul', 'BD', 22, 'rahul@gmail.com', 444, 'Kolkata'),
(4, 'Jatin', 'Hermit', 31, 'jatin@gmail.com', 666, 'Raipur'),
(5, 'PK', 'Pandey', 21, 'pk@gmail.com', 555, 'Jaipur');

-- Insert data into Client table
INSERT INTO Client (id, first_name, last_name, age, emailID, PhoneNo, City, empID)
VALUES
(1, 'Mac', 'Rogers', 47, 'mac@hotmail.com', 333, 'Kolkata', 3),
(2, 'Max', 'Poirier', 27, 'max@gmail.com', 222, 'Kolkata', 3),
(3, 'Peter', 'Jain', 24, 'peter@abc.com', 111, 'Delhi', 1),
(4, 'Sushant', 'Aggarwal', 30, 'sushant@yahoo.com', 45454, 'Hyderabad', 5),
(5, 'Pratap', 'Singh', 36, 'p@xyz.com', 777767, 'Mumbai', 2);

-- Insert data into Project table
INSERT INTO Project (id, empID, name, startdate, clientID)
VALUES
(1, 1, 'A', '2021-04-21', 3),
(2, 2, 'B', '2021-03-12', 1),
(3, 3, 'C', '2021-01-16', 5),
(4, 3, 'D', '2021-04-27', 2),
(5, 5, 'E', '2021-05-01', 4);

-- QUESTIONS 
-- Enlist all the employees ids ,names along with the project allocated to them 
Select e.id,e.fname,e.lname, p.id, p.name FROM Employee as e INNER JOIN Project AS p ON e.id=p.empID;

-- Fetch all the employee ids and contact working from jaipur with client name who work in hyd 
-- e- id, contact where city jaipur & c-name where city hyd 
Select e.id, e.PhoneNo, c.first_name, c.last_name FROM Employee AS e INNER JOIN Client AS c ON e.id=c.empID WHERE e.city='Jaipur' AND c.city='Hyderabad';

-- fetch out each project allocated to each employee
-- project - id , name employee- id , name 
-- fetch each project allocated to each employee details - all the employee details who have projects allocated to them
SELECT * FROM Project as p LEFT JOIN Employee as e ON p.empID=e.id;
-- all the employee details with the project details 
SELECT * FROM Employee as e LEFT JOIN Project as p ON e.id=p.empID;

-- list all the projects along with the employee name and their email id
-- projects - complete project info and from the employee- their email id, name 
SELECT e.fname,e.lname,e.emailID, p.id, p.name  FROM Employee as e RIGHT JOIN Project as p ON e.id=p.empID;

-- list all combination of employees and projects 
SELECT e.fname,e.lname,e.emailID, p.id, p.name  FROM Employee as e CROSS JOIN Project as p ON e.id=p.empID;
