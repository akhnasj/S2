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
INSERT INTO SaleItem VALUES (55, 1, 30);

INSERT INTO Product VALUES (2, 'Book', 45, 50);
INSERT INTO Sale VALUES (78, 'Paris');
INSERT INTO SaleItem VALUES (78, 2, 30);

INSERT INTO Product VALUES (3, 'Bag', 110, 120);
INSERT INTO Sale VALUES (33, 'Belgium');
INSERT INTO SaleItem VALUES (55, 3, 20);


SELECT * FROM Product;
SELECT * FROM Sale;
SELECT * FROM SaleItem;

SHOW Triggers;
set sql_safe_updates = 0;
    