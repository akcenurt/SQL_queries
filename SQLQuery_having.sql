select Customer_ID, Order_Date, count(*) as po�et_objedn�vek
from [csv].[Order]
group by Customer_ID, Order_Date
having count(*) > 2
order by order_date desc