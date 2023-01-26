INSERT INTO department (name)
VALUES ("Sales"),
       ("Legal"),
       ("Finance"),
       ("Engineering");
Select * from department;  


INSERT INTO role (title,department_id,salary )
VALUES ("Sales Lead", 1, 100000),
       ("Salesperson", 1, 80000),
       ("Lead Engineer", 4, 150000),
       ("Software Engineer", 4, 120000),
       ("Account Manager", 3, 160000),
       ("Accountant", 3, 125000),
       ("Legal Team Lead", 2, 250000),
       ("Lawyer", 2, 190000)
Select * from role;  

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Sofia", "Carson", 1,1),
       ("Landon","Jackson", 7, 2),
       ("Stanley","Jones", 8,3),
       ("Marcus", "Campbell",6,4),
       ("Mikel", "Watson", 5,3),
       ("Justin", "Baker", 4,2),
       ("Azaria", "McAfee", 3,1),
       ("Zion", "Malik", 2,3)
Select * from employee;  