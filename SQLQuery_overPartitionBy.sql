select *,
count(order_id) over (partition by customer_id) as celkov�_po�et_objedn�vek_z�kazn�ka
from [csv].[order]
order by customer_id