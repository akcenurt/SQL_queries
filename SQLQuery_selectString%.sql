select *
from csv.Customer
where Date_Registered between 2021-01-01 and 2021-01-31
and (City like '%Praha%')
and Customer_Name = 'Lenka'