select [csv].[Order].Order_ID,
[csv].[Order].Order_Date,
[csv].[Order].Customer_ID,
[csv].[Order].Quantity,
[csv].[Order].Product_ID,
[csv].[Customer].Gender,
[csv].[Customer].City,
csv.Product.Product_Category
from [csv].[Order]
inner join csv.Customer
on [csv].[Order].Customer_ID = csv.Customer.Customer_ID
inner join [csv].[Product]
on [csv].[Order].Product_ID = csv.Product.Product_ID
where [csv].[Customer].Gender is not null
and [csv].[Customer].City is not null