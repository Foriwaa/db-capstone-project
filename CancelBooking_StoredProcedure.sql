-- Procedure to cancel booking 
DROP PROCEDURE IF EXISTS CancelBooking;
DELIMITER //
CREATE PROCEDURE CancelBooking(IN BkID INT)
BEGIN
DELETE FROM Bookings 
WHERE BookingID = BkID;
SELECT CONCAT("Booking ", BkID, " cancelled") AS "Confirmation"; 
END //
DELIMITER ;