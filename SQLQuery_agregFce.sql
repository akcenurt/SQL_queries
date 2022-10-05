select customer_id
, count(*) as poèet_objednávek
, sum(Quantity) as poèet_nakoupených_položek
, count(distinct Product_ID) as poèet_rùzných_produktù
, min(order_date) as datum_první_objednávky
, max(order_date) as datum_poslední_objednávky
from [csv].[Order]
group by Customer_ID
order by poèet_objednávek desc