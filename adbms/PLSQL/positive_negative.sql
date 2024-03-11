CREATE DEFINER=`root`@`localhost` PROCEDURE `positive_negative`(IN n INT)
BEGIN
	DECLARE x VARCHAR(20);
    IF n > 0
    THEN SET x = 'Positive';
    ELSEIF n < 0
    THEN SET x = 'Negative';
    ELSE 
    SET x = 'Zero';
    END IF;
     SELECT x;
END