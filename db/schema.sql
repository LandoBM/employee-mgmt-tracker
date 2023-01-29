-- Drops the company_db --
DROP DATABASE IF EXISTS company_db;

-- Creates the company_db database --
DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

-- Uses the company_db database --
USE company_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -- name - to hold the department name
    name VARCHAR(30) NOT NULL 
)

CREATE TABLE role (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    -- Title for roles in the different departments
    title VARCHAR(30) NOT NULL,
    -- salaries of the different roles
    salary DECIMAL(10,3) NOT NULL,
    -- 
    department_id INTEGER NOT NULL,
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);


CREATE TABLE employee (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    -- first name to hold employee first name
    first_name VARCHAR(30) NOT NULL,
    -- last name to hold employye last name
    last_name VARCHAR(30) NOT NULL,
    -- to hold reference to the employee role table employees belong to 
    role_id INTEGER NOT NULL,
     CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
    manager_id INTEGER,
     CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);

CREATE TABLE manager (
    id INT NOT NULL PRIMARY KEY,
    full_name VARCHAR(30),
    CONSTRAINT fk_employee FOREIGN KEY (employee) REFERENCES employee(id) ON DELETE SET NULL
)