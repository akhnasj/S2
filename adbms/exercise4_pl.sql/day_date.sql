CREATE DEFINER=`root`@`localhost` PROCEDURE `day_date`(IN dd DATE)
BEGIN
	 SELECT dayname(dd);
END