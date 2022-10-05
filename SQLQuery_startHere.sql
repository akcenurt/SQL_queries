create view V_OrderValue as

select [csv].[Order].order_id, 
csv.[order].product_id,
csv.[order].quantity,
csv.product.unit_price,
csv.product.currency,
csv.[order].quantity * csv.product.unit_price as VýšeObjednávky,
csv.exchangerate.exchangerate,
csv.[order].quantity * csv.product.unit_price * csv.ExchangeRate.ExchangeRate as VýšeObjednávkyCZK

from csv.[order]
inner join csv.product
on csv.[order].product_id = csv.[product].product_id
left join csv.ExchangeRate
on csv.[Product].currency = csv.ExchangeRate.Currency_1