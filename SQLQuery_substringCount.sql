select
substring(Customer_Name, 1, 1) as firstLetterName,
count(*) as Quantity
from csv.customer
group by substring(Customer_Name, 1, 1)
order by Quantity desc