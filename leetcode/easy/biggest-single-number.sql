create table MyNumbers (
num int)

insert into MyNumbers
(num) 
values
(8),(8),(3),(3),(1),(4),(5),(6)

-- With temp table
select num into #SingleNumbers
from MyNumbers
group by num
having COUNT(*)=1;

select MAX(num) as num
from #SingleNumbers

-- With withoute temp table
SELECT MAX(num) as num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
) AS SingleNumbers;