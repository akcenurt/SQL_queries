select * from
(select top 3
'Nejt잚� produkty' as Popis,
product_name,
Weight
from csv.product
order by Weight desc) a
union
select * from
(select top 3
'Nejleh�� produkty' as Popis,
product_name,
Weight
from csv.product
order by Weight) b