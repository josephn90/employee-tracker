CREATE TABLE department (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(9, 2) NOT NULL,
  CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES department(id)
);

CREATE TABLE employee (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id)
);