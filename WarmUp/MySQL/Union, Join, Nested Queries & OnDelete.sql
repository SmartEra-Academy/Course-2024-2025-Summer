DROP TABLES student;
-- Create Department table
CREATE TABLE Department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100),
    faculty_count INT
);

-- Create Student table
CREATE TABLE Student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    birth_date DATE,
    sex CHAR(1),
    major VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
        ON DELETE SET NULL
);

-- Create Course table
CREATE TABLE Course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
        ON DELETE CASCADE
);

-- Create Enrollment table with composite key
CREATE TABLE Enrollment (
    student_id INT,
    course_id INT,
    grade CHAR(2),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
        ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
        ON DELETE CASCADE
);

-- Create Professor table
CREATE TABLE Professor (
    professor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    hire_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
        ON DELETE SET NULL
);















-- Insert data into Department table
INSERT INTO Department (department_name, faculty_count) VALUES
('Computer Science', 30),
('Mathematics', 20),
('Engineering', 25),
('Art', 15),
('Science', 40);

-- Insert data into Student table
INSERT INTO Student (first_name, last_name, birth_date, sex, major, department_id) VALUES
('Alice', 'Johnson', '2000-01-15', 'F', 'Computer Science', 1),
('Bob', 'Smith', '1999-05-20', 'M', 'Mathematics', 2),
('Charlie', 'Brown', '2001-07-25', 'M', 'Engineering', 3),
('Daisy', 'Lee', '2000-11-30', 'F', 'Art', 4),
('Edward', 'Wilson', '1998-03-14', 'M', 'Science', 5),
('Fiona', 'Davis', '1999-09-22', 'F', 'Computer Science', 1),
('George', 'Taylor', '2000-05-18', 'M', 'Mathematics', 2),
('Hannah', 'Moore', '2001-02-17', 'F', 'Engineering', 3),
('Ian', 'Clark', '1999-10-05', 'M', 'Art', 4),
('Jenny', 'Miller', '1998-12-12', 'F', 'Science', 5),
('Charles', 'Dawson', '2000-02-10', 'M', 'History', NULL),
('Diana', 'Prince', '1999-11-23', 'F', 'Literature', NULL);

-- Insert data into Course table
INSERT INTO Course (course_name, department_id) VALUES
('Introduction to Computer Science', 1),
('Calculus I', 2),
('Engineering Mechanics', 3),
('Art History', 4),
('General Chemistry', 5),
('Advanced Chemistry', 5),
('Physics II', 5),
('Data Science 101', 1),
('Modern Art', 4);

-- Insert data into Enrollment table with composite key
INSERT INTO Enrollment (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(2, 2, 'B'),
(3, 3, 'A'),
(4, 4, 'B'),
(5, 5, 'A'),
(6, 1, 'A'),
(7, 2, 'C'),
(8, 3, 'B'),
(9, 4, 'A'),
(10, 5, 'B');

-- Insert data into Professor table
INSERT INTO Professor (first_name, last_name, hire_date, department_id) VALUES
('John', 'Doe', '2005-09-01', 1),
('Jane', 'Smith', '2008-08-15', 2),
('Emily', 'Johnson', '2010-07-10', 3),
('Michael', 'Brown', '2012-05-20', 4),
('Sarah', 'Davis', '2015-03-30', 5);



/* UNION */

SELECT first_name, last_name , major FROM student WHERE major = 'Computer Science'
UNION
SELECT first_name, last_name , major FROM student WHERE major = 'Mathematics';

SELECT first_name, last_name, 'STUDENT' AS role FROM student WHERE first_name LIKE 'J%' OR first_name LIKE 'B__'
UNION
SELECT first_name, last_name, 'PROFESSOR' AS role FROM student WHERE first_name LIKE 'J%' OR first_name LIKE 'B__' ORDER BY role, first_name DESC;





/* JOINS */
/* inner join, right join, left join*/

SELECT first_name, last_name, department.department_name FROM student 
JOIN department ON student.department_id = department.department_id;

SELECT first_name , last_name , course_name FROM student 
RIGHT JOIN enrollment ON student.student_id = enrollment.student_id
RIGHT JOIN course ON course.course_id = enrollment.course_id;







/* NESTED QUERIES */

SELECT first_name , last_name FROM student WHERE student_id IN (SELECT student_id FROM enrollment WHERE course_id = (SELECT course_id FROM course WHERE course_name= 'Introduction to Computer Science'));

SELECT course_name FROM course WHERE course_id NOT IN (SELECT course_id FROM enrollment);




/* ON DELETE */

SELECT * FROM student; -- SET NULL
SELECT * FROM course; -- cascade


SELECT * FROM department;


DELETE FROM department WHERE department_id = 1;










