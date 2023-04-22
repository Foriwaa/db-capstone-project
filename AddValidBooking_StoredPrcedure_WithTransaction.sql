-- Stored Procedure to add booking
DROP PROCEDURE IF EXISTS AddValidBooking;
DELIMITER //
CREATE PROCEDURE AddValidBooking(IN BookDate Date, IN TableNum INT)
BEGIN
DECLARE Booked INT DEFAULT 0;
SELECT COUNT(*) INTO Booked
FROM Bookings
WHERE BookingDate=BookDate AND TableNumber=TableNum;
START TRANSACTION;
	INSERT INTO Bookings (BookingDate, TableNumber, BookingSlot, CustomerID, EmployeeID)
	VALUES (BookDate, TableNum, '19:00:00', 3, 1);
    IF Booked = 1 THEN
		SELECT CONCAT("Table ", TableNum," is already booked - booking cancelled") AS "Booking Status" ; 
		ROLLBACK;
        ELSE
        SELECT CONCAT("Table ", TableNum," is available - booking added")AS "Booking Status"; 
        COMMIT; 
	END IF;
END //
DELIMITER ;