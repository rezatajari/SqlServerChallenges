CREATE TABLE Company (
    com_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Company (com_id, name, city) VALUES
(1, 'RED', 'Boston'),
(2, 'ORANGE', 'New York'),
(3, 'YELLOW', 'Boston'),
(4, 'GREEN', 'Austin');

CREATE TABLE SalesPerson (
    sales_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    commission_rate INT,
    hire_date DATE
);

INSERT INTO SalesPerson (sales_id, name, salary, commission_rate, hire_date) VALUES
(1, 'John', 100000, 6, '2006-04-01'),
(2, 'Amy', 12000, 5, '2010-05-01'),
(3, 'Mark', 65000, 12, '2008-12-25'),
(4, 'Pam', 25000, 25, '2005-01-01'),
(5, 'Alex', 5000, 10, '2007-02-03');


CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    com_id INT,
    sales_id INT,
    amount INT,
    CONSTRAINT FK_Orders_Company FOREIGN KEY (com_id) REFERENCES Company(com_id),
    CONSTRAINT FK_Orders_SalesPerson FOREIGN KEY (sales_id) REFERENCES SalesPerson(sales_id)
);

INSERT INTO Orders (order_id, order_date, com_id, sales_id, amount) VALUES
(1, '2014-01-01', 3, 4, 10000),
(2, '2014-02-01', 4, 5, 5000),
(3, '2014-03-01', 1, 1, 50000),
(4, '2014-04-01', 1, 4, 25000);



select s.name from SalesPerson s
left join Orders o on s.sales_id=o.sales_id
left join Company c on o.com_id=c.com_id
group by s.name
having count(case when c.name ='RED' then 1 end)=0