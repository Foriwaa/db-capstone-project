-- Procedure to update booking date
DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER //
CREATE PROCEDURE UpdateBooking(IN BkID INT, IN BkDate DATE)
BEGIN
UPDATE Bookings 
SET BookingDate = BkDate
WHERE BookingID = BkID;
SELECT CONCAT("Booking ", BkID, " updated") AS "Confirmation"; 
END //
DELIMITER ;