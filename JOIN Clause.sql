-- Order details for orders with total greater than 150
SELECT c.CustomerID, CONCAT(c.Firstname,' ',c.Lastname)AS FullName, 
o.OrderID, o.OrderAmount AS Cost, m.Cuisine AS MenuName, mi.Name AS CourseName 
FROM  Customers AS c
INNER JOIN Orders AS o
ON o.CustomerID = c.CustomerID
INNER JOIN MenuItems AS mi
ON o.ItemID = mi.ItemID
INNER JOIN Menus AS m
ON mi.MenuID = m.MenuID
WHERE OrderAmount>150
ORDER BY Cost;
