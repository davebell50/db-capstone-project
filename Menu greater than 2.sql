Select Catagory
from Menu
where menuID =Any(
Select menuID
from Orders
where quantity >2);