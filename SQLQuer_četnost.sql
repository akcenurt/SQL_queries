select distinct quantity, count(*) as �etnost
from [csv].[order]
group by quantity
order by �etnost desc