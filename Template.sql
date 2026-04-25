create database Company_DB;

use Company_DB;

create table employee(
	employee_ID int primary key,
    employee_Name varchar(50),
    employee_Salary int,
    employee_Age int,
    employee_Dept varchar(50)
);

insert into employee values
(1,"Sanjay Sirsikar",80000,40,"BI & Analytics"),
(2,"Pavan Shah",70000,34,"Sales"),
(3,"Jiya Patel",50000,22,"Sales"),
(4,"Hetvi Joshi",70000,28,"BI & Analytics"),
(5,"Nupur Mehta",75000,38,"BI & Analytics"),
(6,"Jay Kadia",65000,30,"BI & Analytics"),
(7,"Anny",75000,28,"IT"),
(8,"Zhao Xing",85400,36,"Finance"),
(9,"Navya Patel",40000,26,"Finance"),
(10,"Harry",60000,36,"HR"),
(11,"Arjun",54236,39,"HR"),
(12,"Karan",36852,28,"Marketing");

select * from employee

select * from employee
where employee_age>=35;

select * from employee
where employee_Salary>=65000;

select * from employee
where employee_Salary>=65000 and employee_Dept="IT";

select * from employee
where employee_Dept="Marketing" and employee_Dept="IT";

select * from employee
where employee_Dept="Marketing" or employee_Dept="IT";

select * from employee
where employee_Dept="Marketing";

select * from employee
where employee_Dept in ("Marketing", "IT");





