select
ord.order_id,
ord.quantity,
prod.unit_price,
ord.Quantity * prod.Unit_Price as VýšeObjednávky,
(
select
avg(ord.Quantity * prod.Unit_Price) as PrůmVýšeObjednávky
from [csv].[Order] ord
left join csv.Product prod
on ord.Product_ID = prod.Product_ID
) as PrůmerVýšeObjednávky
from [csv].[Order] ord
left join csv.Product prod
on ord.Product_ID = prod.Product_ID