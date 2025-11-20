-- Example 0: Customers Sales - Schema and Sample Data

-- =====================================================
-- CREATE TABLES
-- =====================================================

-- Customers Table
CREATE TABLE Customers (
    id INT AUTO_INCREMENT NOT NULL,
    customerName VARCHAR(255) NOT NULL,
    address VARCHAR(500),
    isActive BOOLEAN NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

-- Products Table
CREATE TABLE Products (
    id INT AUTO_INCREMENT NOT NULL,
    productName VARCHAR(255) NOT NULL,
    productPrice DECIMAL(10, 2),
    Description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

-- Sales Table
CREATE TABLE Sales (
    id INT AUTO_INCREMENT NOT NULL,
    Customer INT NOT NULL,
    Product INT NOT NULL,
    salesDate DATE,
    quantity INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (Customer) REFERENCES Customers(id),
    FOREIGN KEY (Product) REFERENCES Products(id)
);

-- =====================================================
-- INSERT STATEMENTS
-- =====================================================

-- Insert sample data into Customers
INSERT INTO Customers (id, customerName, address, isActive) VALUES
(1, 'John Doe', '123 Main Street, New York, NY 10001', TRUE),
(2, 'Jane Smith', '456 Oak Avenue, Los Angeles, CA 90001', TRUE),
(3, 'Bob Johnson', '789 Pine Road, Chicago, IL 60601', FALSE),
(4, 'Alice Williams', '321 Elm Street, Houston, TX 77001', TRUE),
(5, 'Charlie Brown', '654 Maple Drive, Phoenix, AZ 85001', TRUE);

-- Insert sample data into Products
INSERT INTO Products (id, productName, productPrice, Description) VALUES
(1, 'Laptop Computer', 999.99, 'High-performance laptop with 16GB RAM and 512GB SSD'),
(2, 'Wireless Mouse', 29.99, 'Ergonomic wireless mouse with USB receiver'),
(3, 'Mechanical Keyboard', 149.99, 'RGB backlit mechanical keyboard with blue switches'),
(4, 'Monitor 27 inch', 349.99, '4K UHD monitor with HDR support'),
(5, 'USB-C Cable', 19.99, 'Durable braided USB-C charging cable, 6ft length');

-- Insert sample data into Sales
INSERT INTO Sales (id, Customer, Product, salesDate, quantity) VALUES
(1, 1, 1, '2024-01-15', 1),
(2, 1, 2, '2024-01-15', 2),
(3, 2, 3, '2024-01-20', 1),
(4, 3, 4, '2024-02-10', 1),
(5, 4, 5, '2024-02-15', 3),
(6, 5, 1, '2024-03-01', 1),
(7, 2, 4, '2024-03-05', 2),
(8, 1, 5, '2024-03-10', 5),
(9, 4, 2, '2024-03-15', 1),
(10, 5, 3, '2024-03-20', 1);
