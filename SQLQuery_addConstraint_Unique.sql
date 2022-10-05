alter table [csv].Contact
add constraint UK_NameSurnamePhone
unique(Contact_Name, Contact_Surname, Phone_Number)