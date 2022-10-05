select [csv].[Order].Order_ID,
[csv].[Order].Order_Date,
[csv].[Order].Customer_ID,
[csv].[Order].Quantity,
[csv].[Order].Product_ID,
[csv].[Customer].Customer_ID,
[csv].[Customer].Gender
from [csv].[Order]
inner join csv.Customer
on [csv].[Order].Customer_ID = csv.Customer.Customer_ID