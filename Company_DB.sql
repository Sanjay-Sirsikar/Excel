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
(1, "Pavan Shah",50000,24,"Sales")
(2, "Sanjay Sirsikar",60000,40,"Sales")