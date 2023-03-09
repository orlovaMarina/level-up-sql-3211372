-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
select * from Customers
where FirstName = 'Loretta' AND LastName = 'Hundey';

insert into Orders (CustomerID, OrderDate)
values (70, '2022-09-20');

select * from Orders
where CustomerID = 70 and OrderDate = '2022-09-20';
select * from OrdersDishes
where OrderID = 1001;
insert into OrdersDishes (OrderID, DishID)
values (1001,
(select DishID
from Dishes
where Name = 'House Salad')
),
(1001,
(select DishID
from Dishes
where Name = 'Mini Cheeseburgers')
),
(1001,
(select DishID
from Dishes
where Name = 'Tropical Blue Smoothie')
);
select sum(Price) as TotalCost
from OrdersDishes od JOIN Dishes d ON od.DishID = d.DishID
where OrderID = 1001;
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.