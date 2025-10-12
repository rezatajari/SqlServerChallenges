select distinct salary 
from Employee 
order by salary desc
offset 1 row -- Passed first row
fetch next 1 row only; -- Get fisrt of row after last row