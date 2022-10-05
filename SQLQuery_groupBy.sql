select Order_Status, count(*) as èetnost
from [csv].[Order]
group by Order_Status
order by Order_Status