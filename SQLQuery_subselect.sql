select
ord.order_id,
ord.quantity,
prod.unit_price,
ord.Quantity * prod.Unit_Price as V��eObjedn�vky,
(
select
avg(ord.Quantity * prod.Unit_Price)
from [csv].[Order] ord
left join csv.Product prod
on ord.Product_ID = prod.Product_ID
) as Pr�merV��eObjedn�vky,
prod.unit_price * ord.quantity -
(
select
avg(ord.Quantity * prod.Unit_Price) as Pr�mV��eObjedn�vky
from [csv].[Order] ord
left join csv.Product prod
on ord.Product_ID = prod.Product_ID
) as Rozd�lV��eObjedn�vky

from [csv].[Order] ord
left join csv.Product prod
on ord.Product_ID = prod.Product_ID