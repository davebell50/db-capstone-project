SELECT Customer.CustomerID, Customer.FullName, Orders.OrderID, Orders.TotalCost, Menu.Catagory, Menu.FoodName
FROM Customer INNER JOIN Orders
ON Customer.CustomerID = Orders.Customers_ID
INNER JOIN Menu
ON Orders.MenuID = Menu.MenuID
WHERE TotalCost > 50
ORDER BY TotalCost ASC;
    