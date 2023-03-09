-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
insert or ignore into Customers (FirstName, LastName, Email)
values ('Sam', 'McAdams', 'smac@kinetecoinc.com');

insert into Reservations (CustomerID, Date, PartySize)
values (
(select CustomerID
from Customers
where Email = 'smac@kinetecoinc.com'), 
'2022-12-08', 5
)
select * from Reservations
where CustomerID = 
(select CustomerID
from Customers
where Email = 'smac@kinetecoinc.com');
