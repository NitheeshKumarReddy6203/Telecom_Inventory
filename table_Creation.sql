
CREATE TABLE Users (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE, 
    country VARCHAR(100), 
    phone_number VARCHAR(20), 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO Users (username, password, email, country, phone_number) VALUES
('HiHello', '1234', 'user1@example.com', 'USA', '1234567890'),
('Hi123', '1234', 'user2@example.com', 'Canada', '0987654321'),
('Hello123', '1234', 'user3@example.com', 'UK', '1122334455');


CREATE TABLE Products (
    product_name VARCHAR(100) NOT NULL, 
    description TEXT, 
    product_category VARCHAR(50),
    model_number VARCHAR(50),
    serial_number VARCHAR(50) UNIQUE,
    stock_level INT NOT NULL DEFAULT 0,
    supplier_name VARCHAR(100),
    supplier_email VARCHAR(100) UNIQUE,
    supplier_contact VARCHAR(20),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Products (product_name, description, product_category, model_number, serial_number, stock_level, supplier_name, supplier_email, supplier_contact, order_date) VALUES
('Mobile Phone', 'Latest model smartphone', 'Electronics', 'MP123', 'SN001', 50, 'Supplier A', 'supplierA@example.com', '1234567890', CURRENT_TIMESTAMP),
('Laptop', 'High-performance laptop', 'Electronics', 'LP456', 'SN002', 30, 'Supplier B', 'supplierB@example.com', '0987654321', CURRENT_TIMESTAMP);

CREATE TABLE Suppliers (
    supplier_name VARCHAR(100) PRIMARY KEY,
    supplier_email VARCHAR(100) UNIQUE,
    supplier_contact VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO Suppliers (supplier_name, supplier_email, supplier_contact) VALUES
('Supplier A', 'supplierA@example.com', '1234567890'),
('Supplier B', 'supplierB@example.com', '0987654321');

CREATE TABLE Transactions (
    product_name VARCHAR(100),
    transaction_type ENUM('IN', 'OUT') NOT NULL,
    quantity INT NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Transactions (product_name, transaction_type, quantity, transaction_date) VALUES
('Mobile Phone', 'IN', 500, '2025-01-04 12:00:00'),
('Laptop', 'OUT', 15, '2025-01-04 12:00:00');

CREATE TABLE Staff (
    staff_name VARCHAR(100) NOT NULL,
    staff_email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    staff_phone_number VARCHAR(20),
    staff_joined_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Staff (staff_name, staff_email, staff_phone_number, staff_joined_date, staff_country) VALUES
('John Doe', 'john.doe@example.com', 'PassKey456', '1234567890', CURRENT_TIMESTAMP),
('Jane Smith', 'jane.smith@example.com', 'PassKey7788', '0987654321', CURRENT_TIMESTAMP);

CREATE TABLE IF NOT EXISTS Admin (
    email VARCHAR(100) PRIMARY KEY,
    password VARCHAR(255) NOT NULL
);

INSERT INTO admin (email, password) VALUES
('admin@example.com', 'admin123');

CREATE TABLE IF NOT EXISTS Managers (
    manager_email VARCHAR(100) PRIMARY KEY,
    manager_password VARCHAR(255) NOT NULL
);

INSERT INTO Managers (manager_email, manager_password) VALUES
('manager1@example.com', 'manager123'),
('manager2@example.com', 'manager456');
