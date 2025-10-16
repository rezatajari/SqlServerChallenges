
create table Customers (
id int primary key,
name varchar(20))

create table Orders (
id int primary key,
customerId int,
foreign key (customerId) references Customers(id)
)


insert into Customers
(id,[name]) values 
(1,'Joe'), (2,'Henry'), (3,'Sam'),(4,'Max')


insert into Orders
(id,customerId) values
(1,3),(2,1)

select C.name as Customers from Customers C
left join Orders O on C.id=O.customerId
where O.customerId is null
