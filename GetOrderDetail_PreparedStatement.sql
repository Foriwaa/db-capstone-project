-- A prepared statement to get order details using user input CustomerID
PREPARE GetOrderDetail FROM
'SELECT OrderID, Quantity, OrderAmount
FROM Orders
WHERE CustomerID = ?';