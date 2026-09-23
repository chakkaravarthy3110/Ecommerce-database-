CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE Seller (
    seller_id INT PRIMARY KEY,
    seller_name VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY,
    seller_id INT,
    product_name VARCHAR(100),
    quantity INT,
    FOREIGN KEY (seller_id) REFERENCES Seller(seller_id)
);

INSERT INTO Seller VALUES
(1, 'ABC Traders', '9876543210'),
(2, 'Sri Stores', '9876543211'),
(3, 'Green Mart', '9876543212');

INSERT INTO Inventory VALUES
(101, 1, 'Rice', 50),
(102, 1, 'Sugar', 20),
(103, 2, 'Wheat', 0),
(104, 2, 'Oil', 35),
(105, 3, 'Biscuits', 80);

SELECT * FROM Inventory;

UPDATE Inventory
SET quantity = 60
WHERE inventory_id = 101;

SELECT COUNT(*) AS total_products
FROM Inventory;

SELECT *
FROM Inventory
WHERE quantity = 0;

SELECT *
FROM Inventory
WHERE quantity = (SELECT MAX(quantity) FROM Inventory);

SELECT AVG(quantity) AS average_quantity
FROM Inventory;

SELECT Seller.seller_name, Inventory.product_name, Inventory.quantity
FROM Seller
JOIN Inventory
ON Seller.seller_id = Inventory.seller_id;

SELECT SUM(quantity) AS total_quantity
FROM Inventory;