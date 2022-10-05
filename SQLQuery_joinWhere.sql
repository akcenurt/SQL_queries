select top (5)
[csv].[Order].Order_ID,
[csv].[Order].Quantity * csv.Product.Unit_Price as hodnota_objedn�vky,
dbo.OrderStatus.OrderStatus_Name

from [csv].[Order]
inner join csv.Product
on [csv].[Order].Product_ID = csv.Product.Product_ID
left join dbo.OrderStatus
on [csv].[Order].Order_Status = dbo.OrderStatus.OrderStatus_ID

where csv.Product.Currency = 'CZK'
and dbo.OrderStatus.OrderStatus_Name = 'Zaplacen�'
order by hodnota_objedn�vky desc