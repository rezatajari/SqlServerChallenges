if OBJECT_ID('Project','U') is null and OBJECT_ID('Employee','U') is null
begin
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(30),
    experience_years INT NOT NULL
);

CREATE TABLE Project (
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_id, employee_id),
    CONSTRAINT FK_Project_Employee FOREIGN KEY (employee_id) 
        REFERENCES Employee(employee_id)
);

INSERT INTO Employee (employee_id, name, experience_years)
VALUES
(1, 'Khaled', 3),
(2, 'Ali', 2),
(3, 'John', 1),
(4, 'Doe', 2);

INSERT INTO Project (project_id, employee_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4);

end

SELECT 
  project_id, 
  ROUND(AVG(experience_years * 1.0), 2) AS average_years
FROM 
  Project
JOIN 
  Employee ON Project.employee_id = Employee.employee_id
GROUP BY 
  project_id
