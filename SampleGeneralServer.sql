USE [BMIGeneralServer]
GO
create table GlobalParameter (
	[ParameterID] [varchar](50) PRIMARY KEY NOT NULL,
	[Value] [varchar](255) NOT NULL
);
insert into GlobalParameter (ParameterID, Value) values ('ConsulAddress', 'http://localhost:8500') 
insert into GlobalParameter (ParameterID, Value) values ('IdentityAddress', 'https://localhost:44310') 
insert into GlobalParameter (ParameterID, Value) values ('ResourceId', '2')
insert into GlobalParameter (ParameterID, Value) values ('ResourceName', 'GeneralApi')
insert into GlobalParameter (ParameterID, Value) values ('ResourceDisplayName', 'General API')
insert into GlobalParameter (ParameterID, Value) values ('ResourceVersion', 'v1.0.0')
insert into GlobalParameter (ParameterID, Value) values ('ResourceUrl', 'https://localhost:44301') 
insert into GlobalParameter (ParameterID, Value) values ('ResourceAddress', 'localhost') 
insert into GlobalParameter (ParameterID, Value) values ('ResourcePort', '44301') 
insert into GlobalParameter (ParameterID, Value) values ('ClientId', 'sampleClient') 
insert into GlobalParameter (ParameterID, Value) values ('ClientSecret', 'K7gNU3sdo+OL0wNhqoVWhr3g6s1xYv72ol/pe/Unols=') 
GO
create table Country (
	Code VARCHAR(50) PRIMARY KEY NOT NULL,
	Name VARCHAR(50)
);
insert into Country (Code, Name) values ('JP', 'Japan');
insert into Country (Code, Name) values ('BR', 'Brazil');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('MK', 'Macedonia');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('IR', 'Iran');
insert into Country (Code, Name) values ('CV', 'Cape Verde');
insert into Country (Code, Name) values ('NO', 'Norway');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('FR', 'France');
insert into Country (Code, Name) values ('PH', 'Philippines');
insert into Country (Code, Name) values ('FR', 'France');
insert into Country (Code, Name) values ('LU', 'Luxembourg');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('TH', 'Thailand');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('PH', 'Philippines');
insert into Country (Code, Name) values ('BR', 'Brazil');
insert into Country (Code, Name) values ('FR', 'France');
insert into Country (Code, Name) values ('HR', 'Croatia');
insert into Country (Code, Name) values ('IR', 'Iran');
insert into Country (Code, Name) values ('BG', 'Bulgaria');
insert into Country (Code, Name) values ('ZM', 'Zambia');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('PE', 'Peru');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('US', 'United States');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('PS', 'Palestinian Territory');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('BG', 'Bulgaria');
insert into Country (Code, Name) values ('FR', 'France');
insert into Country (Code, Name) values ('MN', 'Mongolia');
insert into Country (Code, Name) values ('KE', 'Kenya');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('PH', 'Philippines');
insert into Country (Code, Name) values ('UZ', 'Uzbekistan');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('MX', 'Mexico');
insert into Country (Code, Name) values ('PL', 'Poland');
insert into Country (Code, Name) values ('BR', 'Brazil');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('GR', 'Greece');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('BF', 'Burkina Faso');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('LS', 'Lesotho');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('UA', 'Ukraine');
insert into Country (Code, Name) values ('US', 'United States');
insert into Country (Code, Name) values ('DO', 'Dominican Republic');
insert into Country (Code, Name) values ('IR', 'Iran');
insert into Country (Code, Name) values ('NZ', 'New Zealand');
insert into Country (Code, Name) values ('PH', 'Philippines');
insert into Country (Code, Name) values ('CL', 'Chile');
insert into Country (Code, Name) values ('CO', 'Colombia');
insert into Country (Code, Name) values ('ZW', 'Zimbabwe');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('BG', 'Bulgaria');
insert into Country (Code, Name) values ('MM', 'Myanmar');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('PT', 'Portugal');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('PH', 'Philippines');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('IR', 'Iran');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('BR', 'Brazil');
insert into Country (Code, Name) values ('PH', 'Philippines');
insert into Country (Code, Name) values ('UA', 'Ukraine');
insert into Country (Code, Name) values ('PT', 'Portugal');
insert into Country (Code, Name) values ('BR', 'Brazil');
insert into Country (Code, Name) values ('MY', 'Malaysia');
insert into Country (Code, Name) values ('PT', 'Portugal');
insert into Country (Code, Name) values ('UA', 'Ukraine');
insert into Country (Code, Name) values ('FI', 'Finland');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('JP', 'Japan');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('BR', 'Brazil');
insert into Country (Code, Name) values ('AR', 'Argentina');
insert into Country (Code, Name) values ('BD', 'Bangladesh');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('US', 'United States');
insert into Country (Code, Name) values ('MG', 'Madagascar');
insert into Country (Code, Name) values ('BY', 'Belarus');
insert into Country (Code, Name) values ('CU', 'Cuba');
insert into Country (Code, Name) values ('PL', 'Poland');
insert into Country (Code, Name) values ('CZ', 'Czech Republic');
insert into Country (Code, Name) values ('JP', 'Japan');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('VN', 'Vietnam');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('EG', 'Egypt');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('US', 'United States');
insert into Country (Code, Name) values ('PT', 'Portugal');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('PL', 'Poland');
insert into Country (Code, Name) values ('SY', 'Syria');
insert into Country (Code, Name) values ('JP', 'Japan');
insert into Country (Code, Name) values ('PH', 'Philippines');
insert into Country (Code, Name) values ('CU', 'Cuba');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('SE', 'Sweden');
insert into Country (Code, Name) values ('CU', 'Cuba');
insert into Country (Code, Name) values ('IT', 'Italy');
insert into Country (Code, Name) values ('GT', 'Guatemala');
insert into Country (Code, Name) values ('MW', 'Malawi');
insert into Country (Code, Name) values ('AR', 'Argentina');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('NG', 'Nigeria');
insert into Country (Code, Name) values ('MX', 'Mexico');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('PH', 'Philippines');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('PL', 'Poland');
insert into Country (Code, Name) values ('PH', 'Philippines');
insert into Country (Code, Name) values ('BR', 'Brazil');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('FR', 'France');
insert into Country (Code, Name) values ('GR', 'Greece');
insert into Country (Code, Name) values ('PH', 'Philippines');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('CA', 'Canada');
insert into Country (Code, Name) values ('GR', 'Greece');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('SE', 'Sweden');
insert into Country (Code, Name) values ('LU', 'Luxembourg');
insert into Country (Code, Name) values ('AR', 'Argentina');
insert into Country (Code, Name) values ('SY', 'Syria');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('VN', 'Vietnam');
insert into Country (Code, Name) values ('CU', 'Cuba');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('VN', 'Vietnam');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('VN', 'Vietnam');
insert into Country (Code, Name) values ('MX', 'Mexico');
insert into Country (Code, Name) values ('FR', 'France');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('VN', 'Vietnam');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('FR', 'France');
insert into Country (Code, Name) values ('MD', 'Moldova');
insert into Country (Code, Name) values ('FR', 'France');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('DM', 'Dominica');
insert into Country (Code, Name) values ('PA', 'Panama');
insert into Country (Code, Name) values ('PK', 'Pakistan');
insert into Country (Code, Name) values ('FR', 'France');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('MX', 'Mexico');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('MD', 'Moldova');
insert into Country (Code, Name) values ('US', 'United States');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('BR', 'Brazil');
insert into Country (Code, Name) values ('FR', 'France');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('BR', 'Brazil');
insert into Country (Code, Name) values ('PH', 'Philippines');
insert into Country (Code, Name) values ('US', 'United States');
insert into Country (Code, Name) values ('RS', 'Serbia');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('PE', 'Peru');
insert into Country (Code, Name) values ('AL', 'Albania');
insert into Country (Code, Name) values ('GM', 'Gambia');
insert into Country (Code, Name) values ('CN', 'China');
insert into Country (Code, Name) values ('ID', 'Indonesia');
insert into Country (Code, Name) values ('RU', 'Russia');
insert into Country (Code, Name) values ('CN', 'China');
GO
create table Currency (
	Code VARCHAR(50) PRIMARY KEY NOT NULL,
	Name VARCHAR(50)
);
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('TJS', 'Somoni');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('PEN', 'Sol');
insert into Currency (Code, Name) values ('THB', 'Baht');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('SEK', 'Krona');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('CZK', 'Koruna');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('BRL', 'Real');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('XAF', 'Franc');
insert into Currency (Code, Name) values ('IRR', 'Rial');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('XAF', 'Franc');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('UAH', 'Hryvnia');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('CZK', 'Koruna');
insert into Currency (Code, Name) values ('RUB', 'Ruble');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('LBP', 'Pound');
insert into Currency (Code, Name) values ('CZK', 'Koruna');
insert into Currency (Code, Name) values ('RUB', 'Ruble');
insert into Currency (Code, Name) values ('PLN', 'Zloty');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('ARS', 'Peso');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('XAF', 'Franc');
insert into Currency (Code, Name) values ('NGN', 'Naira');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('UAH', 'Hryvnia');
insert into Currency (Code, Name) values ('ALL', 'Lek');
insert into Currency (Code, Name) values ('SEK', 'Krona');
insert into Currency (Code, Name) values ('PEN', 'Sol');
insert into Currency (Code, Name) values ('PLN', 'Zloty');
insert into Currency (Code, Name) values ('VEF', 'Bolivar');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('CUP', 'Peso');
insert into Currency (Code, Name) values ('USD', 'Dollar');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('RUB', 'Ruble');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('UAH', 'Hryvnia');
insert into Currency (Code, Name) values ('PHP', 'Peso');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('PHP', 'Peso');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('LYD', 'Dinar');
insert into Currency (Code, Name) values ('BRL', 'Real');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('HRK', 'Kuna');
insert into Currency (Code, Name) values ('COP', 'Peso');
insert into Currency (Code, Name) values ('SEK', 'Krona');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('THB', 'Baht');
insert into Currency (Code, Name) values ('MAD', 'Dirham');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('PEN', 'Sol');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('NOK', 'Krone');
insert into Currency (Code, Name) values ('JPY', 'Yen');
insert into Currency (Code, Name) values ('SEK', 'Krona');
insert into Currency (Code, Name) values ('NIO', 'Cordoba');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('PHP', 'Peso');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('MAD', 'Dirham');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('SEK', 'Krona');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('PEN', 'Sol');
insert into Currency (Code, Name) values ('MGA', 'Ariary');
insert into Currency (Code, Name) values ('SEK', 'Krona');
insert into Currency (Code, Name) values ('PHP', 'Peso');
insert into Currency (Code, Name) values ('JMD', 'Dollar');
insert into Currency (Code, Name) values ('RUB', 'Ruble');
insert into Currency (Code, Name) values ('JPY', 'Yen');
insert into Currency (Code, Name) values ('AFN', 'Afghani');
insert into Currency (Code, Name) values ('PLN', 'Zloty');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('CAD', 'Dollar');
insert into Currency (Code, Name) values ('XOF', 'Franc');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('PAB', 'Balboa');
insert into Currency (Code, Name) values ('USD', 'Dollar');
insert into Currency (Code, Name) values ('MAD', 'Dirham');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('THB', 'Baht');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('KES', 'Shilling');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('PHP', 'Peso');
insert into Currency (Code, Name) values ('PLN', 'Zloty');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('HNL', 'Lempira');
insert into Currency (Code, Name) values ('PHP', 'Peso');
insert into Currency (Code, Name) values ('BAM', 'Marka');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('AMD', 'Dram');
insert into Currency (Code, Name) values ('ZAR', 'Rand');
insert into Currency (Code, Name) values ('XAF', 'Franc');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('RUB', 'Ruble');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('MDL', 'Leu');
insert into Currency (Code, Name) values ('BRL', 'Real');
insert into Currency (Code, Name) values ('RUB', 'Ruble');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('PHP', 'Peso');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('UZS', 'Som');
insert into Currency (Code, Name) values ('BYR', 'Ruble');
insert into Currency (Code, Name) values ('PEN', 'Sol');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('BAM', 'Marka');
insert into Currency (Code, Name) values ('THB', 'Baht');
insert into Currency (Code, Name) values ('ILS', 'Shekel');
insert into Currency (Code, Name) values ('PGK', 'Kina');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('PHP', 'Peso');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('XAF', 'Franc');
insert into Currency (Code, Name) values ('NZD', 'Dollar');
insert into Currency (Code, Name) values ('CDF', 'Franc');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('MXN', 'Peso');
insert into Currency (Code, Name) values ('USD', 'Dollar');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('THB', 'Baht');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('NOK', 'Krone');
insert into Currency (Code, Name) values ('CUP', 'Peso');
insert into Currency (Code, Name) values ('BYR', 'Ruble');
insert into Currency (Code, Name) values ('SEK', 'Krona');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('SEK', 'Krona');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('NGN', 'Naira');
insert into Currency (Code, Name) values ('UAH', 'Hryvnia');
insert into Currency (Code, Name) values ('MMK', 'Kyat');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('PHP', 'Peso');
insert into Currency (Code, Name) values ('EGP', 'Pound');
insert into Currency (Code, Name) values ('ARS', 'Peso');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('MXN', 'Peso');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('UYU', 'Peso');
insert into Currency (Code, Name) values ('PEN', 'Sol');
insert into Currency (Code, Name) values ('USD', 'Dollar');
insert into Currency (Code, Name) values ('EUR', 'Euro');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('CNY', 'Yuan Renminbi');
insert into Currency (Code, Name) values ('PHP', 'Peso');
insert into Currency (Code, Name) values ('IDR', 'Rupiah');
GO
SELECT * FROM Country
SELECT * FROM Currency