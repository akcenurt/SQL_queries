select top (5)
[csv].[Order].Order_ID,
[csv].[Order].Quantity * csv.Product.Unit_Price as hodnota_objednávky

from [csv].[Order]
inner join csv.Product
on [csv].[Order].Product_ID = csv.Product.Product_ID

where csv.Product.Currency = 'CZK' 
order by hodnota_objednávky desc