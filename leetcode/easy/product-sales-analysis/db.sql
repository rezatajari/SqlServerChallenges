if OBJECT_ID('Sales','U') is null and OBJECT_ID('Product','U') is null
begin

create table Product (
product_id int primary key,
product_name varchar(30)
)

create table Sales (
sale_id int primary key,
product_id int,
year int,
quentity int,
price int,
constraint FK_Sales_Product foreign key (product_id)
							references Product(product_id)
);

insert into Product
(product_id,product_name)
values
(100,'Nokia'),
(200,'Apple'),
(300,'Samsung')

insert into Sales
(sale_id,product_id,year,quentity,price)
values
(1,100,2008,10,5000),
(2,100,2009,12,5000),
(3,200,2011,15,9000)

end

select P.product_name,S.year,S.price from Sales S
inner join Product P on S.product_id=P.product_id


