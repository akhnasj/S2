CREATE DATABASE Triggers;
USE Triggers;

CREATE TABLE Product (
	PdtId INT PRIMARY KEY,
    Pname VARCHAR(30),
    Price FLOAT,
    QtyInStock INT 
);

CREATE TABLE Sale (
	SaleId INT PRIMARY KEY,
    DeliveryAddress VARCHAR(50)
);

CREATE TABLE SaleItem (
	SaleId INT,
    PdtId INT,
	Qty INT,
    PRIMARY KEY (SaleId, PdtId),
    FOREIGN KEY (PdtId) REFERENCES Product(PdtId),
    FOREIGN KEY (SaleId) REFERENCES Sale(SaleId)
);

CREATE TRIGGER UpdateAvailableQuantity
AFTER INSERT
ON SaleItem
FOR EACH ROW
UPDATE Product
SET QtyInStock = QtyInStock - NEW.Qty
WHERE PdtId = NEW.PdtId ;


INSERT INTO Product VALUES (1, 'Pencil', 25, 100);
INSERT INTO Sale VALUES (55, 'England');
INSERT INTO SaleItem VALUES (55, 1, 20);

SELECT * FROM Product;
SELECT * FROM Sale;
SELECT * FROM SaleItem;

SHOW Triggers;
set sql_safe_updates = 0;
    