create procedure GetMaxQuantity()
Select max(Quantity) AS "Max Quantity in Order"
From Orders;

Call GetMaxQuantity();