-- Example 4: E-Commerce Order System - Schema and Sample Data

-- Users table
CREATE TABLE Users (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    userName VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    isActive BOOLEAN NOT NULL,
    registrationDate DATE DEFAULT CURRENT_DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Items table
CREATE TABLE Items (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    itemName VARCHAR(200) NOT NULL,
    unitPrice DECIMAL(10,2),
    category VARCHAR(50),
    stockQuantity INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Orders table
CREATE TABLE Orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    user INTEGER NOT NULL,
    item INTEGER NOT NULL,
    orderDate DATE NOT NULL,
    quantity INTEGER NOT NULL,
    shippingFee DECIMAL(10,2) DEFAULT 5.00,
    orderStatus VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user) REFERENCES Users(id),
    FOREIGN KEY (item) REFERENCES Items(id)
);

-- Sample Data

INSERT INTO Users (userName, email, isActive, registrationDate) VALUES
('Alex Turner', 'alex@email.com', 1, '2023-06-15'),
('Bella Rodriguez', 'bella@email.com', 1, '2023-07-20'),
('Charlie Kim', 'charlie@email.com', 0, '2023-05-10'),
('Diana Patel', 'diana@email.com', 1, '2023-08-05'),
('Ethan Lee', 'ethan@email.com', 0, '2023-09-12');

INSERT INTO Items (itemName, unitPrice, category, stockQuantity) VALUES
('Wireless Mouse', 29.99, 'Electronics', 150),
('USB-C Cable', 12.99, 'Electronics', 300),
('Notebook Set', 15.99, 'Stationery', 200),
('Desk Lamp', 45.99, 'Home', 80),
('Water Bottle', 18.99, 'Lifestyle', 120);

INSERT INTO Orders (user, item, orderDate, quantity, shippingFee, orderStatus) VALUES
(1, 1, '2024-10-01', 2, 5.00, 'Delivered'),
(2, 2, '2024-10-05', 3, 5.00, 'Delivered'),
(3, 3, '2024-09-20', 1, 5.00, 'Cancelled'),
(1, 4, '2024-10-10', 1, 8.00, 'Shipped'),
(4, 5, '2024-09-15', 2, 5.00, 'Delivered'),
(3, 1, '2024-10-20', 1, 5.00, 'Processing'),
(5, 2, '2024-10-12', 4, 5.00, 'Processing'),
(1, 3, '2024-11-01', 2, 5.00, 'Processing');
