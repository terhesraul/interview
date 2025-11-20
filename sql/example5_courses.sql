-- Example 5: Course Enrollment System - Schema and Sample Data

-- Students table
CREATE TABLE Students (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    studentName VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    isEnrolled BOOLEAN NOT NULL,
    major VARCHAR(50),
    admissionDate DATE DEFAULT CURRENT_DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Courses table
CREATE TABLE Courses (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    courseName VARCHAR(200) NOT NULL,
    credits INTEGER,
    tuitionFee DECIMAL(10,2),
    instructor VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Enrollments table
CREATE TABLE Enrollments (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    student INTEGER NOT NULL,
    course INTEGER NOT NULL,
    enrollmentDate DATE NOT NULL,
    grade VARCHAR(2),
    additionalFees DECIMAL(10,2) DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student) REFERENCES Students(id),
    FOREIGN KEY (course) REFERENCES Courses(id)
);

-- Sample Data

INSERT INTO Students (studentName, email, isEnrolled, major, admissionDate) VALUES
('Sophia Johnson', 'sophia@university.edu', 1, 'Computer Science', '2022-09-01'),
('Liam Williams', 'liam@university.edu', 1, 'Mathematics', '2022-09-01'),
('Ava Brown', 'ava@university.edu', 0, 'Physics', '2021-09-01'),
('Noah Davis', 'noah@university.edu', 1, 'Engineering', '2023-09-01'),
('Emma Wilson', 'emma@university.edu', 0, 'Biology', '2022-09-01');

INSERT INTO Courses (courseName, credits, tuitionFee, instructor) VALUES
('Data Structures', 4, 1200.00, 'Prof. Anderson'),
('Calculus II', 3, 900.00, 'Prof. Martinez'),
('Database Systems', 4, 1200.00, 'Prof. Thompson'),
('Linear Algebra', 3, 900.00, 'Prof. Garcia'),
('Web Development', 3, 1000.00, 'Prof. Lee');

INSERT INTO Enrollments (student, course, enrollmentDate, grade, additionalFees) VALUES
(1, 1, '2024-09-01', 'A', 50.00),
(2, 2, '2024-09-01', 'B', 0.00),
(3, 3, '2024-09-01', NULL, 75.00),
(1, 3, '2024-09-01', 'A', 75.00),
(4, 4, '2024-09-01', 'B', 0.00),
(3, 1, '2024-10-01', NULL, 50.00),
(5, 5, '2024-10-01', NULL, 100.00),
(1, 5, '2024-10-01', NULL, 100.00);
