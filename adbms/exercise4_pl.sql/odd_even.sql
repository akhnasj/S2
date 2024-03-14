CREATE DEFINER=`root`@`localhost` PROCEDURE `odd_even`(IN n INT )
BEGIN
	DECLARE x VARCHAR(20);
	IF n % 2 = 0
	THEN SET x = 'Even';
	ELSE 
	SET x = 'Odd';
	END IF;
    SELECT x;    
END