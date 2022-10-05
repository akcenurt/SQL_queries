select 
Product_Name
, Product_Category
, Weight
, max(Weight) over (partition by Product_Category) as maxim�ln�_hmotnost_v_kategorii
, (max(Weight) over (partition by Product_Category) - Weight) as rozd�l_hmotnosti_produktu_a_maxHmotnostiVKategorii
from csv.Product