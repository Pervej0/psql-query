CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO departments (department_name)
VALUES
('Engineering'),
('Marketing'),
('Finance');


CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    age INT,
    email VARCHAR(100),
    department_id INT REFERENCES departments(department_id),
    salary INT,
    status VARCHAR(50)
);

INSERT INTO employees (employee_name, age, email, department_id, salary)
VALUES
('Alice', 30, 'alice@example.com', 1, 60000),
('Bob', 35, 'bob@example.net', 2, 65000),
('Charlie', 28, 'charlie@google.com', 1, 55000),
('David', 33, 'david@yahoo.com', 2, 62000),
('Eve', 31, 'eve@example.net', 3, 58000),
('Frank', 29, 'frank@example.com', 1, 59000),
('Grace', 34, 'grace@google.com', 2, 63000),
('Henry', 32, 'henry@yahoo.com', 3, 57000),
('Ivy', 27, 'ivy@gmail.com', 1, 56000),
('Jack', 36, 'jack@example.net', 2, 64000),
('Karen', 29, 'karen@gmail.com', 3, 60000),
('Liam', 33, 'liam@gmail.com', 1, 59000),
('Mia', 31, 'mia@yahoo.com', 2, 62000),
('Nora', 28, 'nora@yahoo.com', 3, 57000),
('Oliver', 35, 'oliver@example.net', 1, 61000),
('Penelope', 30, 'penelope@google.com', 2, 63000),
('Quinn', 32, 'quinn@google.com', 3, 59000),
('Rachel', 27, 'rachel@gmail.com', 1, 55000),
('Sam', 34, 'sam@example.net', 2, 64000),
('Taylor', 31, 'taylor@yahoo.com', 3, 58000);

-- Retrieve all employees
select * FROM employees;

-- Query 1: 
SELECT * FROM employees WHERE salary > 60000;

-- Query 2:
SELECT * FROM employees LIMIT 2 OFFSET 2;

-- Query 3:
SELECT ROUND(AVG(age), 2) from employees;

-- Query 4:
SELECT employee_name FROM employees
WHERE 
email LIKE '%example.com%'
OR email LIKE '%example.net%'
OR email Like '%google.com%'; 

-- Query 5:
SELECT employee_name FROM employees as e
JOIN departments as d ON e.department_id = d.department_id
WHERE
department_name = 'Engineering';

-- Query 6:
UPDATE employees
SET 
status = 'Promoted'
WHERE salary = (SELECT max(salary) FROM employees);

-- Query 7:
SELECT department_name, avg(salary) FROM employees as e
JOIN departments as d ON e.department_id = d.department_id
GROUP BY department_name;
