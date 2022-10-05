select csv.Customer.customer_id,
csv.product.product_id,
count([csv].[Order].Order_id) as poèet_záznamù
from csv.Customer
cross join csv.product
left join [csv].[Order]
on csv.customer.Customer_ID = [csv].[Order].Customer_ID
and csv.Product.Product_ID = [csv].[Order].Product_ID

group by csv.customer.Customer_ID, csv.Product.Product_ID
order by csv.customer.Customer_ID