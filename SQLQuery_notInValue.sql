select *
from csv.Product
where Weight between 1000 and 2000
and Product_Category not in ('Homeware', 'Furniture')