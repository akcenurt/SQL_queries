select
customer_id,
customer_name,
customer_surname,
substring(Customer_Name, 1, 1) as firstLetterName,
substring(Customer_Surname, 1, 1) as firstLetterSurname
from csv.customer