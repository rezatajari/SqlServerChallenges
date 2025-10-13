create table Person (id int primary key,email varchar(20))

insert into Person(id,email) values 
(1,'john@example.com'),(2,'bob@example.com'),(3,'john@example.com')

WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) AS rn -- Assign new numbers to each of element in each group
    FROM Person
)
DELETE FROM CTE
WHERE rn> 1;
