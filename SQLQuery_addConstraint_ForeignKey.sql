alter table csv.Supplier
add constraint FK_Supplier_Contact
foreign key (Supplier_Contact) references csv.Contact (Contact_ID)