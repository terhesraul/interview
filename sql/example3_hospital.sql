-- Example 3: Hospital Management System - Schema and Sample Data

-- Doctors table
CREATE TABLE Doctors (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    doctorName VARCHAR(100) NOT NULL,
    specialization VARCHAR(50),
    isAvailable BOOLEAN NOT NULL,
    consultationFee DECIMAL(10,2),
    joinedDate DATE DEFAULT CURRENT_DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Patients table
CREATE TABLE Patients (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    patientName VARCHAR(100) NOT NULL,
    age INTEGER,
    address VARCHAR(200),
    contactNumber VARCHAR(20),
    registrationDate DATE DEFAULT CURRENT_DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Appointments table
CREATE TABLE Appointments (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    patient INTEGER NOT NULL,
    doctor INTEGER NOT NULL,
    appointmentDate DATE NOT NULL,
    appointmentTime VARCHAR(10),
    diagnosisFee DECIMAL(10,2) DEFAULT 0.00,
    status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (patient) REFERENCES Patients(id),
    FOREIGN KEY (doctor) REFERENCES Doctors(id)
);

-- Sample Data

INSERT INTO Doctors (doctorName, specialization, isAvailable, consultationFee, joinedDate) VALUES
('Dr. Emily Carter', 'Cardiology', 1, 200.00, '2020-05-15'),
('Dr. Michael Chen', 'Neurology', 1, 250.00, '2019-08-20'),
('Dr. Sarah Anderson', 'Pediatrics', 0, 150.00, '2021-03-10'),
('Dr. James Wilson', 'Orthopedics', 1, 180.00, '2022-01-05'),
('Dr. Lisa Martinez', 'Dermatology', 0, 120.00, '2020-11-12');

INSERT INTO Patients (patientName, age, address, contactNumber, registrationDate) VALUES
('Robert Taylor', 45, '123 Oak Street', '555-0101', '2024-01-15'),
('Emma Davis', 32, '456 Pine Avenue', '555-0102', '2024-02-20'),
('William Moore', 58, '789 Maple Drive', '555-0103', '2024-03-10'),
('Olivia Jackson', 28, '321 Elm Street', '555-0104', '2024-04-05'),
('Noah White', 65, '654 Birch Lane', '555-0105', '2024-05-12');

INSERT INTO Appointments (patient, doctor, appointmentDate, appointmentTime, diagnosisFee, status) VALUES
(1, 1, '2024-10-15', '10:00 AM', 200.00, 'Completed'),
(2, 2, '2024-10-18', '02:00 PM', 250.00, 'Completed'),
(3, 3, '2024-09-20', '11:00 AM', 150.00, 'Cancelled'),
(1, 4, '2024-10-25', '03:00 PM', 180.00, 'Scheduled'),
(4, 1, '2024-10-28', '09:00 AM', 200.00, 'Scheduled'),
(3, 3, '2024-11-01', '01:00 PM', 150.00, 'Scheduled'),
(5, 5, '2024-11-05', '04:00 PM', 120.00, 'Scheduled');
