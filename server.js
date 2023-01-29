require('dotenv').config()
// const inquirer = require('inquirer')
const cTable = require("console.table");
const express = require("express");
// const mysql = require('./db/queries.sql')


const PORT = process.env.PORT || 3001;
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const questions = () => {
  inquirer.prompt({
    type: "list",
    message: "What would you like to do?",
    name: "catalog",
    choices: [
      "view all departments",
      "view all roles",
      "view all employees",
      "add a department",
      "add a role",
      "add an employee",
      "update an employee role",
    ],
  }).then ((data) => {
    // Using switch statement with default value to get the table once a view is selected
    switch(data.catalog) {
        case 'view all departments':{
            showDepartment()
            break
        }
        case 'view all roles': {
            showRoles()
            break
        }
        case 'view all employees': {
            showEmployee()
            break
        }
        case 'add a department': {
            addDepartment()
            break
        }
        case 'add a role': {
            addRole()
            break
        }
        case 'add an employee': {
            addEmployee()
            break
        }
        case 'update an employee role': {
            updateEmployeeRole()
            break
        }
        default: return console.log('Make a selection')
    }
  })
};


