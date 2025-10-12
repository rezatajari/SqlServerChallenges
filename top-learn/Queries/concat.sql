-- Generate a new column from modification of other colums
select e.fname,e.lname, concat(e.fname,' ',e.lname) as [Full Name]
from Employee e