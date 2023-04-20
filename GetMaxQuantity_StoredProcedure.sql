-- A stored procedure to get the order with the max quantity 
CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(Quantity) AS 'Max Quantity In Order'
FROM Orders;
