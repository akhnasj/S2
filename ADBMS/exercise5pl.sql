CALL Insertproduct(3,'orange',0,0);
CALL Insertproduct(10,'carrot',0,9);
CALL Insertproduct(29,'ball',1,0);


CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertproduct`(IN barcode INT, IN name VARCHAR(20), IN price INT, IN quantityInStock INT)
BEGIN
	IF price > 0 AND quantityInStock >= 0
    THEN INSERT INTO Product VALUES(barcode, name, price, quantityInStock);
    END IF;
END