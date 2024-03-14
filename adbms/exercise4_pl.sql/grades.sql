CREATE DEFINER=`root`@`localhost` PROCEDURE `grades`(IN mark INT)
BEGIN
	DECLARE grade VARCHAR(50);
	IF mark >= 90
	THEN SET grade = 'A grade';
    ELSEIF mark >= 80
    THEN SET grade = 'B grade';
    ELSEIF mark >= 70
    THEN SET grade = 'C grade';
    ELSEIF mark >= 60
    THEN SET grade = 'D grade';
    ELSEIF mark >= 50
    THEN SET grade = 'E grade';
    ELSE 
    SET grade = 'Fail';
    END IF;
    SELECT grade;
    
END