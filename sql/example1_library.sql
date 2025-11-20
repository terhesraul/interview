-- Example 1: Library Management System - Schema and Sample Data

-- Members table
CREATE TABLE Members (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    memberName VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    isActive BOOLEAN NOT NULL,
    joinDate DATE DEFAULT CURRENT_DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Books table
CREATE TABLE Books (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    bookTitle VARCHAR(200) NOT NULL,
    purchasePrice DECIMAL(10,2),
    author VARCHAR(100),
    genre VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Loans table
CREATE TABLE Loans (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    member INTEGER NOT NULL,
    book INTEGER NOT NULL,
    loanDate DATE NOT NULL,
    returnDate DATE,
    lateFee DECIMAL(10,2) DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (member) REFERENCES Members(id),
    FOREIGN KEY (book) REFERENCES Books(id)
);

-- Sample Data

INSERT INTO Members (memberName, email, isActive, joinDate) VALUES
('Alice Johnson', 'alice@email.com', 1, '2023-01-15'),
('Bob Smith', 'bob@email.com', 1, '2023-03-20'),
('Carol White', 'carol@email.com', 0, '2022-06-10'),
('David Brown', 'david@email.com', 1, '2023-05-05'),
('Eve Davis', 'eve@email.com', 0, '2023-02-28');

INSERT INTO Books (bookTitle, author, purchasePrice, genre) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 15.99, 'Fiction'),
('1984', 'George Orwell', 18.50, 'Dystopian'),
('To Kill a Mockingbird', 'Harper Lee', 14.99, 'Fiction'),
('Pride and Prejudice', 'Jane Austen', 12.99, 'Romance'),
('The Hobbit', 'J.R.R. Tolkien', 20.00, 'Fantasy');

INSERT INTO Loans (member, book, loanDate, returnDate, lateFee) VALUES
(1, 1, '2024-10-01', '2024-10-15', 0.00),
(2, 2, '2024-10-05', '2024-10-20', 0.00),
(3, 3, '2024-09-20', '2024-10-25', 5.00),
(1, 4, '2024-10-10', '2024-10-28', 2.50),
(4, 5, '2024-09-15', '2024-09-30', 0.00),
(3, 1, '2024-10-20', NULL, 0.00),
(5, 2, '2024-10-12', NULL, 0.00),
(1, 3, '2024-11-01', NULL, 0.00);
