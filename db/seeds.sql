INSERT INTO department (name)
VALUES ("Sales"),
       ("Legal"),
       ("Finance"),
       ("Engineering");
Select * from department;  


INSERT INTO role (title,department_id,salary )
VALUES ("Salesperson", 1, 80000)
       ("Software Engineer", 4, 120000),
       ("Account Manager", 3, 160000),
       ("Lawyer", 2, 190000)
Select * from roles;  

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Sofia", "Carson", 1,NULL),
       ("Landon","Jackson", 2, NULL),
       ("Marcus", "Campbell",3,NULL),
       ("Justin", "Baker", 3,NULL),
       ("Zion", "Malik", 4,NULL);
Select * from employee;  

