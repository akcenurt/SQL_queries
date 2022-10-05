select * from
(select top 3
'Nejtìžší produkty' as Popis,
product_name,
Weight
from csv.product
order by Weight desc) a
union
select * from
(select top 3
'Nejlehèí produkty' as Popis,
product_name,
Weight
from csv.product
order by Weight) b