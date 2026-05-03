create database Students;

use students;

CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course VARCHAR(30),
  marks INT
);

INSERT INTO students (id, name, course, marks) VALUES
(1, 'Aman', 'BCA', 78),
(2, 'Neha', 'MCA', 90),
(3, 'Riya', 'BBA', 62),
(4, 'Karan', 'BCA', 55),
(5, 'Meena', 'MCA', 88);

select * from students;

SELECT * 
FROM students
WHERE marks > 70;

SELECT name, course, marks
FROM students
ORDER BY marks DESC;

SELECT name, marks
FROM students
ORDER BY marks DESC;


SELECT name
FROM students
ORDER BY marks DESC;


UPDATE students
SET marks = 95
WHERE name = 'Neha';

SELECT * FROM students WHERE name = 'Neha';


DELETE FROM students
WHERE id = 4;

SELECT * FROM students;


SET SQL_SAFE_UPDATES = 0;

select * from students;

select * from students
where marks > 70;

select * from students
where course = "BCA";

select * from students
where name like 



