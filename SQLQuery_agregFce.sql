select customer_id
, count(*) as po�et_objedn�vek
, sum(Quantity) as po�et_nakoupen�ch_polo�ek
, count(distinct Product_ID) as po�et_r�zn�ch_produkt�
, min(order_date) as datum_prvn�_objedn�vky
, max(order_date) as datum_posledn�_objedn�vky
from [csv].[Order]
group by Customer_ID
order by po�et_objedn�vek desc