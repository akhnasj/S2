CREATE DATABASE problems;

CALL day_date('2024-03-21');
CALL factorial(5);
CALL grades(49);
CALL odd_even(0);
CALL positive_negative(-1);

-- DAY_DATE
CREATE DEFINER=`root`@`localhost` PROCEDURE `day_date`(IN dd DATE)
BEGIN
	SELECT dayname(dd);
END


-- FACTORIAL
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


-- GRADES
CREATE DEFINER=`root`@`localhost` PROCEDURE `grades`(IN mark INT)
BEGIN
	DECLARE grade VARCHAR(3);
    IF mark >= 90
    THEN SET grade = "A";
    ELSEIF mark >= 80
    THEN SET grade = "B";
    ELSEIF mark >= 70
    THEN SET grade = "C";
    ELSEIF mark >= 60
    THEN SET grade = "D";
    ELSEIF mark >= 50
    THEN SET grade = "E";
    ELSE
    SET grade = "F";
    END IF;
    SELECT grade;
END


-- ODD_EVEN
CREATE DEFINER=`root`@`localhost` PROCEDURE `odd_even`(IN n INT)
BEGIN
	DECLARE x VARCHAR(10);
    IF n % 2 = 0
    THEN SET x = "Even";
    ELSE
    SET x = "Odd";
    END IF;
    SELECT x;
END


-- POSITIVE_NEGATIVE
CREATE DEFINER=`root`@`localhost` PROCEDURE `positive_negative`(IN n INT)
BEGIN
	DECLARE x VARCHAR(10);
    IF n > 0
    THEN SET x = "Positive";
    ELSEIF n < 0 
    THEN SET x = "Negative";
    ELSE 
    SET x = "Zero";
    END IF;
    SELECT x;
END