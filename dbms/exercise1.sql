-- 01
CREATE DATABASE Company;
USE Company;

CREATE TABLE jobs(
job_id INT PRIMARY KEY,
job_title VARCHAR(50) NOT NULL,
min_salary INT NOT NULL,
max_salary INT NOT NULL
);

CREATE TABLE regions(
region_id INT PRIMARY KEY, 
region_name VARCHAR(50) 
);

CREATE TABLE countries(
country_id VARCHAR(50) PRIMARY KEY,
country_name VARCHAR(50),
region_id INT,
FOREIGN KEY(region_id) REFERENCES regions(region_id)
);

CREATE TABLE locations(
location_id INT PRIMARY KEY,
street_address VARCHAR(50),
postal_code INT,
city VARCHAR(50),
state_province VARCHAR(50),
country_id VARCHAR(50),
FOREIGN KEY(country_id) REFERENCES countries(country_id)
);

CREATE TABLE departments(
department_id INT PRIMARY KEY,
department_name VARCHAR(50),
location_id INT,
FOREIGN KEY(location_id) REFERENCES locations(location_id)
);

CREATE TABLE employees(
employee_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50),
phone_number VARCHAR(50),
hire_date DATE,
job_id INT,
salary INT,
manager_id INT,
department_id INT,
FOREIGN KEY(job_id) REFERENCES jobs(job_id),
FOREIGN KEY(department_id) REFERENCES departments(department_id)
);

CREATE TABLE dependents(
dependent_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
relationship VARCHAR(50),
employee_id INT,
FOREIGN KEY(employee_id) REFERENCES employees(employee_id)
);

-- 02
ALTER TABLE employees ADD CONSTRAINT fk_manager_id FOREIGN KEY(manager_id) REFERENCES employees(employee_id);
ALTER TABLE departments RENAME to dept;
-- RENAME TABLE departments to dept;

-- 03
ALTER TABLE employees MODIFY COLUMN salary SMALLINT;

-- 04
ALTER TABLE employees ADD COLUMN commission INT;

-- 05

-- Data for the table regions  
INSERT INTO regions(region_id,region_name) VALUES(1,'Europe');
INSERT INTO regions(region_id,region_name) VALUES(2,'Americas'); 
INSERT INTO regions(region_id,region_name) VALUES(3,'Asia');
INSERT INTO regions(region_id,region_name) VALUES(4,'Middle East and Africa');

-- Data for the table countries 
INSERT INTO countries(country_id,country_name,region_id) VALUES('AR','Argentina',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES('AU','Australia',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES('BE','Belgium',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES('BR','Brazil',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES('CA','Canada',2);
INSERT INTO countries(country_id,country_name,region_id)VALUES('CH','Switzerland',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES('CN','China',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES('DE','Germany',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES('DK','Denmark',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES('EG','Egypt',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES('FR','France',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES('HK','HongKong',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES('IL','Israel',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES('IN','India',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES('IT','Italy',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES('JP','Japan',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES('KW','Kuwait',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES('MX','Mexico',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES('NG','Nigeria',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES('NL','Netherlands',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES('SG','Singapore',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES('UK','United Kingdom',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES('US','United States of America',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES('ZM','Zambia',4);
INSERT INTO countries(country_id,country_name,region_id) VALUES('ZW','Zimbabwe',4);

-- Data for the table locations
ALTER TABLE locations MODIFY COLUMN postal_code VARCHAR(50);





