SELECT m.Cuisine as Name
FROM Menus as m
WHERE m.MenuID = ANY
(SELECT  o.MenuID
FROM Orders AS o
WHERE o.Quantity>2);