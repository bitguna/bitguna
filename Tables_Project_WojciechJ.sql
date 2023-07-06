-- Create the sales_employees table
CREATE TABLE sales_employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL
);

-- Create the delivery_employees table
CREATE TABLE delivery_employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL
);

-- Create the customer_projects table
CREATE TABLE customer_projects (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  sales_employee_id INT,
  delivery_employee_id INT,
  FOREIGN KEY (sales_employee_id) REFERENCES sales_employees(id),
  FOREIGN KEY (delivery_employee_id) REFERENCES delivery_employees(id)
);

-- Create the bids table
CREATE TABLE bids (
  id INT PRIMARY KEY AUTO_INCREMENT,
  project_id INT,
  amount DECIMAL(10, 2) NOT NULL,
  status ENUM('pending', 'accepted', 'rejected') DEFAULT 'pending',
  FOREIGN KEY (project_id) REFERENCES customer_projects(id)
);
