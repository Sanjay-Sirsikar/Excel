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

select * from employee
where employee_Name like '%Zha%';

-- Group By
select employee_Dept, AVG(employee_Salary) as average_Salary
from employee
group by employee_Dept;

-- > ***** having
select employee_Dept, AVG(employee_Salary) as average_Salary
from employee
group by employee_Dept
having AVG(employee_Salary) > 56000;

-- Limit
select employee_Name,  employee_Salary
from employee
order by employee_Salary desc
limit 2;

-- IN and BETWEEN
select * from employee
where employee_Dept in ('BI & Analytics', 'Sales')
and employee_Salary between 50000 and 69000;

-- Aggregate Functions
	-- Count
select
count(*) As Total_Employee
from employee;

	-- Sum
select
sum(employee_Salary) As Total_Salary
from employee;

	-- AVG
select
avg(employee_Salary) As AVG_Salary
from employee;

	-- Max
select
max(employee_Salary) As High_Salary
from employee;

	-- Min
select
min(employee_Salary) As Low_Salary
from employee;


-- All Aggregate Functions
select
count(*) As Total_Employee,
sum(employee_Salary) As Total_Salary,
avg(employee_Salary) As AVG_Salary,
max(employee_Salary) As High_Salary,
min(employee_Salary) As Low_Salary
from employee;

-- Practice Questions
	-- Count the total number of students in the table.
select
count(*) As Total_Employee
from employee;

	-- Display the highest and lowest marks.
select
max(employee_Salary) as Top_Salary,
min(employee_Salary) as Low_Salary
from employee;

	-- Show total marks obtained by students in each course.
select employee_Dept, sum(employee_Salary) as Total_Salary
from employee
group by employee_Dept;




