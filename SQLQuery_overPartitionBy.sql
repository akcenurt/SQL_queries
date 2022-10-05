select *,
count(order_id) over (partition by customer_id) as celkový_poèet_objednávek_zákazníka
from [csv].[order]
order by customer_id