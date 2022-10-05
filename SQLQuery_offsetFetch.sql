select Product_ID, Product_Name, Product_Category
from csv.Product
order by Weight ASC
offset 4 rows
fetch next 7 rows only