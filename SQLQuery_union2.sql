select
'Pr�m�r ze zaplacen�ch obedn�vek' as popis_v�po�tu,
AVG([csv].[Order].Quantity * csv.Product.Unit_Price) as hodnota_objedn�vky

from [csv].[Order]
inner join csv.Product
on [csv].[Order].Product_ID = csv.Product.Product_ID
left join dbo.OrderStatus
on [csv].[Order].Order_Status = dbo.OrderStatus.OrderStatus_ID

where csv.Product.Currency = 'CZK'
and dbo.OrderStatus.OrderStatus_Name = 'Zaplacen�'

union

select
'Pr�m�r z nezaplacen�ch obedn�vek' as popis_v�po�tu,
AVG([csv].[Order].Quantity * csv.Product.Unit_Price) as hodnota_objedn�vky

from [csv].[Order]
inner join csv.Product
on [csv].[Order].Product_ID = csv.Product.Product_ID
left join dbo.OrderStatus
on [csv].[Order].Order_Status = dbo.OrderStatus.OrderStatus_ID

where csv.Product.Currency = 'CZK'
and dbo.OrderStatus.OrderStatus_Name = 'Nezaplacen�'