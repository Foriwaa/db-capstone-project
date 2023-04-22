-- Stored procedure to add new booking
DROP PROCEDURE IF EXISTS AddBooking;
DELIMITER //
CREATE PROCEDURE AddBooking(IN BkID INT , IN BkDate DATE, IN TNum INT, IN CustID INT)
BEGIN
INSERT INTO Bookings (BookingID, BookingDate, TableNumber, BookingSlot, CustomerID, EmployeeID)
VALUES
(BkID, BkDate, TNum, '19:00:00', CustID, 1);
SELECT "New booking added" AS "Confirmation";
END //
DELIMITER ;

