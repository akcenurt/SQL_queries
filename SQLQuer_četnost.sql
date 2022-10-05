select distinct quantity, count(*) as èetnost
from [csv].[order]
group by quantity
order by èetnost desc