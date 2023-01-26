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
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -- title - to hold the role title
    title VARCHAR(30) NOT NULL,
    --  salary - to hold role salary
    salary DECIMAL NOT NULL,
    -- to hold reference to department table role belongs to 
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL
)

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -- first_name - to hold employee first name
    first_name VARCHAR(30) NOT NULL,
    --  last_name - to hold employee last name
    last_name VARCHAR(30) NOT NULL,
    -- to hold reference to the employee role table employee belongs to
    role_id INT NOT NULL,
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL,
    -- to hold reference to another employee that is the manager of the current employee,
    -- Null if the employee has no manager
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
)
