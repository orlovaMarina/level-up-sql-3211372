-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
update Customers 
set FavoriteDish = 
(
SELECT DishID from Dishes 
where Name = 'Quinoa Salmon Salad'
)
where FirstName = 'Cleo' and LastName = 'Goldwater';


select FavoriteDish, LastName
from Customers
where FirstName = 'Cleo' and LastName = 'Goldwater';