select *
from csv.Customer
where substring(Customer_Name, 1, 1) = substring(Customer_Surname, 1, 1)