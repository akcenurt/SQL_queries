alter table csv.Customer
drop column Phone_Prefix
;
alter table csv.Customer
drop constraint DF_Customer_City