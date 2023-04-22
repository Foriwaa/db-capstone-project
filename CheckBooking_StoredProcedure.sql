-- A procedure to check whether a table is already booked
DROP PROCEDURE IF EXISTS CheckBooking;
DELIMITER //
CREATE PROCEDURE CheckBooking(IN bookDate DATE, IN tableNum INT)
BEGIN
DECLARE TableBooked INT DEFAULT 0;
SELECT COUNT(*) INTO TableBooked
FROM Bookings
WHERE BookingDate=bookDate AND TableNumber=tableNum;
IF TableBooked = 1 THEN
	SELECT CONCAT("Table ", tableNum, " is already booked.") AS "Booking Status";
	ELSE
	SELECT CONCAT("Table ", tableNum, " is not booked.") AS "Booking Status";
END IF;    
END //
DELIMITER ;