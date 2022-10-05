select
(
concat (upper(customer_name), ' ', upper(customer_surname), ', ', convert(varchar(10), Date_Birth, 104))  
)
as NameSurnameDate
from csv.Customer