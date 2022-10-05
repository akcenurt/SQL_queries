select
customer_id,
customer_name,
customer_surname,
date_birth

from [csv].[customer]
where Customer_ID in
(select customer_ID
from [csv].[order]
left join dbo.OrderStatus
on [csv].[Order].Order_Status = dbo.OrderStatus.OrderStatus_ID
where OrderStatus_Name = 'Nezaplacená')