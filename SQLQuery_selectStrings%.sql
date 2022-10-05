select *
from csv.Customer
where (Customer_Name like 'M%' and Customer_Surname like 'M%')
or (Customer_Name like 'H%' and Customer_Surname like 'H%')