
USE Project_Academia_WojciechJ;

CREATE TABLE sales_employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
salary VARCHAR(50) NOT NULL,
bank_account VARCHAR(100) NOT NULL,
insurance_number VARCHAR(100) NOT NULL,
  commision_rate VARCHAR(20) NOT NULL
);

CREATE TABLE delivery_employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
salary VARCHAR(50) NOT NULL,
bank_account VARCHAR(100) NOT NULL,
insurance_number VARCHAR(100) NOT NULL
);

CREATE TABLE clients (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE projects (
  project_id INT PRIMARY KEY AUTO_INCREMENT,
  project_name VARCHAR(100) NOT NULL,
  value DECIMAL(10, 2) NOT NULL,
  technologies VARCHAR(255) NOT NULL
);


CREATE TABLE project_delivery_employees (
  project_id INT,
  delivery_employee_id INT,
  FOREIGN KEY (project_id) REFERENCES projects(project_id),
  FOREIGN KEY (delivery_employee_id) REFERENCES delivery_employees(id),
  PRIMARY KEY (project_id, delivery_employee_id)
);
