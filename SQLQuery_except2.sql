select cust.Customer_ID
from csv.Customer cust
except
select ord.Customer_ID
from [csv].[Order] ord
order by Customer_ID