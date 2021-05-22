--create departments table 

CREATE TABLE departments(
    dept_no VARCHAR(30),
    dept_name VARCHAR(30),
    PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

--create employees table

CREATE table employees (
    emp_no INT,
	emp_title_id VARCHAR(30),
    birth_date DATE,
    first_name VARCHAR(30) ,
    last_name VARCHAR(30),
    sex VARCHAR(2), 
    hire_date DATE,
    PRIMARY KEY (emp_no)
);

SELECT * FROM employees;

--create dept_emp table

CREATE TABLE dept_emp ( 
    emp_no INT,
    dept_no VARCHAR(30),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

-- dept_manager

CREATE TABLE dept_manager(
    dept_no VARCHAR(30),
	emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_manager;

-- salareis table. 

CREATE TABLE salaries(
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;

--titles 

CREATE TABLE titles(
    title_id VARCHAR(30),
    title VARCHAR(30)
);

select * from titles; 



