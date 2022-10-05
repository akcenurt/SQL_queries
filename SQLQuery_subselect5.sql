select
customer_id,
customer_name,
customer_surname,
date_birth
from csv.Customer
where customer_id not in
(select Customer_ID from [csv].[order])