const db = require("./config/connection.js")

class connection {
    constructor(db) {
        this.db = db
    }
}

function showEmployee() {
    db.query(`select employee.first_name, employee.last_name, department.name AS department, role.salary AS salary, role.title 
    from employee LEFT JOIN role ON employee.role_id = role.id LEFT JOIN department ON role.department_id = department.id;
    `, function (err, results) {
        console.log(results)
    })
}