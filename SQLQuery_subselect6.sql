select
customer_id,
customer_name,
customer_surname,
date_birth
from csv.Customer
where customer_id in
(select
csv.customer.customer_id
from csv.customer
except
select
ord.Customer_ID
from [csv].[order] ord)