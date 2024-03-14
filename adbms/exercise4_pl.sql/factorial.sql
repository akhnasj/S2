CREATE DEFINER=`root`@`localhost` PROCEDURE `factorial`(IN num INT)
BEGIN
	DECLARE f INT DEFAULT 1;
    WHILE num > 0
		DO
		SET f = f * num;
        SET num = num - 1;
		END WHILE;
	SELECT f;
END