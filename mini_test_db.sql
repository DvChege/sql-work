
-- Create a small test database schema for SQL assignment

-- Drop tables if they exist
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS offices;
DROP TABLE IF EXISTS products;

-- Create payments table
CREATE TABLE payments (
    checkNumber VARCHAR(50),
    paymentDate DATE,
    amount DECIMAL(10, 2)
);

INSERT INTO payments VALUES
('CHK1001', '2025-01-15', 500.00),
('CHK1002', '2025-02-10', 750.50),
('CHK1003', '2025-03-05', 320.75);

-- Create orders table
CREATE TABLE orders (
    orderDate DATE,
    requiredDate DATE,
    status VARCHAR(50)
);

INSERT INTO orders VALUES
('2025-04-01', '2025-04-10', 'In Process'),
('2025-03-15', '2025-03-25', 'Shipped'),
('2025-02-28', '2025-03-10', 'In Process');

-- Create employees table
CREATE TABLE employees (
    employeeNumber INT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(100),
    jobTitle VARCHAR(50)
);

INSERT INTO employees VALUES
(1001, 'Alice', 'Wanjiku', 'alice@example.com', 'Sales Rep'),
(1002, 'Brian', 'Otieno', 'brian@example.com', 'Manager'),
(1003, 'Catherine', 'Mbugua', 'cathy@example.com', 'Sales Rep');

-- Create offices table
CREATE TABLE offices (
    officeCode VARCHAR(10),
    city VARCHAR(50),
    phone VARCHAR(20),
    addressLine1 VARCHAR(100),
    country VARCHAR(50)
);

INSERT INTO offices VALUES
('1', 'Nairobi', '+254712345678', 'Westlands Road', 'Kenya'),
('2', 'Mombasa', '+254798765432', 'Moi Avenue', 'Kenya');

-- Create products table
CREATE TABLE products (
    productName VARCHAR(100),
    quantityInStock INT,
    buyPrice DECIMAL(10, 2)
);

INSERT INTO products VALUES
('Laptop A', 25, 999.99),
('Monitor B', 10, 199.50),
('Keyboard C', 50, 49.99),
('Mouse D', 75, 29.99),
('Tablet E', 5, 499.99),
('Printer F', 8, 249.99);
