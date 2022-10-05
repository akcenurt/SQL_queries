select
customer_id,
customer_name,
customer_surname,
date_birth
from csv.Customer
where customer_id = any
(select
Customer_ID
from [csv].[order]
where Quantity > 100)