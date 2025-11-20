-- Example 2: Employee Project Management - Schema and Sample Data

-- Employees table
CREATE TABLE Employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    employeeName VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    isActive BOOLEAN NOT NULL,
    salary DECIMAL(10,2),
    hireDate DATE DEFAULT CURRENT_DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Projects table
CREATE TABLE Projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    projectName VARCHAR(200) NOT NULL,
    budget DECIMAL(10,2),
    projectStatus VARCHAR(20),
    startDate DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Assignments table
CREATE TABLE Assignments (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    employee INTEGER NOT NULL,
    project INTEGER NOT NULL,
    assignmentDate DATE NOT NULL,
    hoursWorked INTEGER DEFAULT 0,
    completionDate DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (employee) REFERENCES Employees(id),
    FOREIGN KEY (project) REFERENCES Projects(id)
);

-- Sample Data

INSERT INTO Employees (employeeName, department, isActive, salary, hireDate) VALUES
('John Doe', 'Engineering', 1, 75000.00, '2022-01-15'),
('Jane Smith', 'Marketing', 1, 65000.00, '2022-03-20'),
('Mike Johnson', 'Engineering', 0, 80000.00, '2021-06-10'),
('Sarah Williams', 'HR', 1, 60000.00, '2023-02-05'),
('Tom Brown', 'Engineering', 0, 70000.00, '2022-08-12');

INSERT INTO Projects (projectName, budget, projectStatus, startDate) VALUES
('Website Redesign', 50000.00, 'Active', '2024-09-01'),
('Mobile App Development', 120000.00, 'Active', '2024-08-15'),
('Data Migration', 30000.00, 'Completed', '2024-07-01'),
('Marketing Campaign', 25000.00, 'Active', '2024-10-01'),
('Infrastructure Upgrade', 80000.00, 'Planning', '2024-11-15');

INSERT INTO Assignments (employee, project, assignmentDate, hoursWorked, completionDate) VALUES
(1, 1, '2024-09-05', 120, NULL),
(2, 4, '2024-10-02', 80, NULL),
(3, 2, '2024-08-20', 200, NULL),
(1, 3, '2024-07-05', 150, '2024-09-30'),
(4, 1, '2024-09-10', 60, NULL),
(3, 1, '2024-09-15', 90, NULL),
(5, 2, '2024-08-25', 180, NULL);
