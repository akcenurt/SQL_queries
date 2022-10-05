select prod.Product_ID
from [csv].[product] prod
except
select ord.Product_ID
from [csv].[Order] ord
order by Product_ID