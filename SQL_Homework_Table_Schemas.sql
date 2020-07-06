CREATE TABLE Departments (
	dept_no VARCHAR(10),
	dept_name VARCHAR(20),
	PRIMARY KEY (dept_no)
);

CREATE TABLE Dept_EMPL (
	emp_no INT,
	dept_no VARCHAR(10)
);
	--adding Index Column to Dept_EMPL table
	ALTER TABLE dept_empl
	ADD COLUMN id SERIAL PRIMARY KEY ;
	--renaming ID Column in Dept_EMPL table to Index
	ALTER TABLE Dept_EMPL
	RENAME id TO Index;

CREATE TABLE Dept_Manager (
	dept_no VARCHAR(10),
	emp_no INT,
	PRIMARY KEY (emp_no)
);

CREATE TABLE Employees (
	emp_no INT,
	emp_title_id VARCHAR(10),
	birth_date DATE,
	first_name VARCHAR(15),
	last_name VARCHAR(25),
	sex VARCHAR (1),
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

CREATE TABLE Salaries (
	emp_no INT,
	salary INT,
	PRIMARY KEY (emp_no)
);

CREATE TABLE Titles (
	title_id VARCHAR(10),
	title VARCHAR(20),
	PRIMARY KEY (title_id)
);

