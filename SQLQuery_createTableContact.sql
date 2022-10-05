create table csv.Contact (Contact_ID CHAR(6) PRIMARY KEY
						 ,Contact_Name NVARCHAR(150) NOT NULL
						 ,Contact_Surname NVARCHAR(150) NOT NULL
						 ,Country_Code CHAR(3) NOT NULL
						 ,Phone_Prefix CHAR(3) NOT NULL
						 ,Phone_Number BIGINT NOT NULL CHECK (Phone_Number BETWEEN 100000000 AND 9999999999)
						 ,Email NVARCHAR(150)
						 )