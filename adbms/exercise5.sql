CREATE DATABASE STORE;
USE STORE;

CREATE TABLE Product (
PdtId INT PRIMARY KEY,
PName VARCHAR(20),
Price FLOAT,
Quantity INT
);

CALL InsertProduct(1, 'carrot', 13, 15);
CALL InsertProduct(23, 'balloon', 0, 0);
CALL InsertProduct(41, 'apple', -1, -1);
CALL InsertProduct(57, 'spoon', 4, 9);

SELECT * FROM Product;
DESC Product;
