# Employee Management Tracker
  ![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)

  ## Table of Contents
  * [Description](#description)
  * [Installation](#installation)
  * [Usage](#usage)
  * [Contributors](#contributors)
  * [Walkthrough](#walkthrough)
  * [Questions](#questions)
  * 


  
* [License](#license)


    ## Description

    In this application, using inquirer npm package the client is able to manage employees, departments, and roles of a business as well as add an employee, add a role, add a department, or update an employee'e role. 

    ## User Story

    ```md
    AS A business owner
    I WANT to be able to view and manage the departments, roles, and employees in my company
    SO THAT I can organize and plan my business
    ```

    ## Acceptance Criteria

    ```md
    GIVEN a command-line application that accepts user input
    WHEN I start the application
    THEN I am presented with the following options: view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role
    WHEN I choose to view all departments
    THEN I am presented with a formatted table showing department names and department ids
    WHEN I choose to view all roles
    THEN I am presented with the job title, role id, the department that role belongs to, and the salary for that role
    WHEN I choose to view all employees
    THEN I am presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that the employees report to
    WHEN I choose to add a department
    THEN I am prompted to enter the name of the department and that department is added to the database
    WHEN I choose to add a role
    THEN I am prompted to enter the name, salary, and department for the role and that role is added to the database
    WHEN I choose to add an employee
    THEN I am prompted to enter the employee’s first name, last name, role, and manager, and that employee is added to the database
    WHEN I choose to update an employee role
    THEN I am prompted to select an employee to update and their new role and this information is updated in the database 
    ```
    ## Installation
     ```
     To start the app in your terminal, npm run seed, then npm start.
     If npm run seed does not work use `mysql -u root -p` and source the related path for the `schema` and the related path for the `seeds.js`. 
     ```
    ## Usage
    In this application you can view employees, view departments, view roles, add a department, add a role, add an employee, and update an employee role. 
    ## Mock-Up

    The following video shows an example of the application being used from the command line:

    [![A video thumbnail shows the command-line employee management application with a play button overlaying the view.](./Assets/employee-tracker-gif.gif)]
    ## Contributors
    Landon M.
    ## License
    MIT License
    ## Walkthrough
     Link to [Video]()

    ## Questions
  * Github : [LandoBM](https://github.com/LandoBM/)
  * E-Mail :landon.swdeveloper@gmail.com

  ## License
    Licensed using MIT License.

- - -
© 2022 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
