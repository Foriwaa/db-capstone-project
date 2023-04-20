-- A stored procedure to cancel a booking
DROP PROCEDURE IF EXISTS CancelOrder; 
DELIMITER //
CREATE PROCEDURE CancelOrder(IN OrderId INT)
BEGIN
DELETE FROM Orders as o
WHERE o.OrderID = OrderId;
SELECT CONCAT("Order ",OrderId, " is cancelled") AS Confirmation;
END //
DELIMITER ;