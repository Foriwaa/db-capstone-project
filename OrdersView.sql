-- View for orders with quantity greater than 2
CREATE VIEW OrdersView AS
SELECT OrderID,Quantity,OrderAmount
FROM Orders
WHERE Quantity>2
