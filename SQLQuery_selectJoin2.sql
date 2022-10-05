select
[csv].[Customer].Gender,
csv.Product.Product_Category,

sum([csv].[Order].Quantity) as suma_položek,
count([csv].[Order].Order_ID) as poèet_objednávek

from [csv].[Order]
inner join csv.Customer
on [csv].[Order].Customer_ID = csv.Customer.Customer_ID
inner join [csv].[Product]
on [csv].[Order].Product_ID = csv.Product.Product_ID
where [csv].[Customer].Gender is not null
and [csv].[Customer].City is not null

group by csv.Product.Product_Category, csv.Customer.Gender