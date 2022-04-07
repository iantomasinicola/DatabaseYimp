/*The following script create the database Management. 
Execute it only in your own personal test environment*/ 

CREATE DATABASE Management
GO
USE Management
GO
CREATE TABLE dbo.Customers(
	CustomerId int IDENTITY(1,1) NOT NULL,
	IsActive bit NULL,
	Name nvarchar(50) NOT NULL,
	Surname nvarchar(50) NOT NULL,
	DateOfBirth date NOT NULL,
	Country nvarchar(50) NOT NULL,
	Region nvarchar(50) NULL,
	Cap varchar(10) NULL,
	Phone varchar(30) NOT NULL,
	Email varchar(50) NULL,
 CONSTRAINT PKClienti PRIMARY KEY CLUSTERED 
(
	CustomerId ASC
))
GO
CREATE TABLE dbo.Invoices(
	InvoiceId int IDENTITY(1,1) NOT NULL,
	CustomerId int NOT NULL,
	ProviderId int NOT NULL,
	DateInvoice date NOT NULL,
	RequestedDatePayment date NOT NULL,
	DatePayment date NULL,
	Shipment decimal(18, 2) NULL,
	ShipperId int NULL,
	RequestedArrivalDate date NULL,
	ArrivalDate date NULL,
 CONSTRAINT PkFattura PRIMARY KEY CLUSTERED 
(
	InvoiceId ASC
))

GO
CREATE TABLE dbo.InvoicesProducts(
	InvoiceId int NOT NULL,
	ProductId int NOT NULL,
	UnitPrice decimal(18, 2) NOT NULL,
	Amount int NOT NULL,
 CONSTRAINT PkFattureProdotti PRIMARY KEY CLUSTERED 
(
	InvoiceId ASC,
	ProductId ASC
))

GO
CREATE TABLE dbo.Products(
	ProductId int IDENTITY(1,1) NOT NULL,
	ProductName varchar(40) NOT NULL,
	Description varchar(200) NULL,
	AdvisedPrice decimal(18, 2) NOT NULL,
	Category varchar(50) NOT NULL,
 CONSTRAINT PkProdotti PRIMARY KEY CLUSTERED 
(
	ProductId ASC
))
GO
CREATE TABLE dbo.Providers(
	ProviderId int IDENTITY(1,1) NOT NULL,
	Name nvarchar(50) NOT NULL,
	VatId varchar(20) NOT NULL,
	Country varchar(30) NOT NULL,
	Region nvarchar(30) NOT NULL,
	Phone varchar(30) NOT NULL,
 CONSTRAINT PkFornitori PRIMARY KEY CLUSTERED 
(
	ProviderId ASC
))
GO
CREATE TABLE dbo.Shippers(
	ShipperId int IDENTITY(1,1) NOT NULL,
	Name nvarchar(50) NOT NULL,
	Vat varchar(20) NOT NULL,
	FiscalCode varchar(30) NOT NULL,
	Country varchar(30) NOT NULL,
	Region nvarchar(30) NOT NULL,
	Phone varchar(30) NOT NULL,
 CONSTRAINT PkCorrieri PRIMARY KEY CLUSTERED 
(
	ShipperId ASC
))
GO
SET IDENTITY_INSERT  dbo.Customers ON
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (1, 1, N'Nicola', N'5CF71', CAST(N'2010-01-01' AS Date), N'Francia', NULL, N'81622', N'3201111', N'Nicola.5CF71@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (2, 1, N'Giovanni', N'A83C2', CAST(N'1976-03-01' AS Date), N'Italia', N'Lazio', N'82786', N'3201111', N'Giovanni.A83C2tiscali.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (3, 1, N'Marco', N'7929A', CAST(N'1980-04-01' AS Date), N'Italia', N'Lazio', N'19341', N'+(39) 320 32111', N'Marco.7929A@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (4, 1, N'Giovanna', N'270BC', CAST(N'1977-05-01' AS Date), N'Italia', N'Lazio', N'64791', N'3201111', N'Giovanna.270BCtiscali.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (5, 1, N'Alice', N'C5B4D', CAST(N'1969-06-01' AS Date), N'Italia', N'Sicilia', N'99172', N'3201111', N'Alice.C5B4D@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (6, 1, N'Fabrizio', N'8A9FD', CAST(N'1996-07-01' AS Date), N'Italia', N'Sicilia', N'64853', N'+(39) 320 32111', N'Fabrizio.8A9FD@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (7, 1, N'Irene', N'AE2C7', CAST(N'1990-08-01' AS Date), N'Italia', N'Sicilia', N'11257', N'3201111', N'Irene.AE2C7@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (8, 1, N'Maria', N'31C3C', CAST(N'1999-09-01' AS Date), N'Italia', N'Sicilia', N'97338', N'3201111', N'Maria.31C3C@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (9, 1, N'Grazie', N'8F540', CAST(N'1990-10-01' AS Date), N'Italia', N'Sicilia', N'52218', N'+(39) 320 32111', N'Grazie.8F540@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (10, 1, N'Giovanni', N'B819C', CAST(N'1971-11-01' AS Date), N'Italia', N'Toscana', N'932', N'3201111', N'Giovanni.B819C@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (11, 1, N'Maria', N'0074D', CAST(N'1996-12-01' AS Date), N'Italia', N'Toscana', N'74828', N'3201111', N'Maria.0074D@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (12, 1, N'Giuseppe', N'BF519', CAST(N'1976-01-01' AS Date), N'Italia', N'Toscana', N'28896', N'+(39) 320 32111', N'Giuseppe.BF519hotmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (13, 1, N'Francesco', N'E487B', CAST(N'1999-02-01' AS Date), N'Italia', N'Toscana', N'53489', N'3201111', N'Francesco.E487Bhotmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (14, 1, N'Mike', N'09070', CAST(N'1996-03-01' AS Date), N'Italia', N'Toscana', N'41931', N'3201111', N'Mike.09070@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (15, 1, N'Giovanni', N'964A8', CAST(N'1994-04-01' AS Date), N'Italia', N'Toscana', N'7673', N'+(39) 320 32111', N'Giovanni.964A8@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (16, 1, N'Scott', N'BE788', CAST(N'1985-05-01' AS Date), N'Italia', N'Toscana', N'82787', N'3201111', N'Scott.BE788@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (17, 1, N'Nicola', N'E9BF9', CAST(N'1982-06-01' AS Date), N'Italia', N'Toscana', N'61633', N'3201111', N'Nicola.E9BF9@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (18, 1, N'Fabio', N'5E4AA', CAST(N'1964-07-01' AS Date), N'Italia', N'Toscana', N'22148', N'+(39) 320 32111', N'Fabio.5E4AA@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (19, 1, N'Fabrizio', N'135D4', CAST(N'1987-08-01' AS Date), N'Italia', N'Toscana', N'54684', N'3201111', N'Fabrizio.135D4@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (20, 1, N'Giovanni', N'7D5FA', CAST(N'1981-09-01' AS Date), N'Italia', N'Piemonte', N'94995', N'3201111', N'Giovanni.7D5FAtiscali.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (21, 1, N'Francesco', N'D1D69', CAST(N'1963-10-01' AS Date), N'Italia', N'Piemonte', N'57292', N'+(39) 320 32111', N'Francesco.D1D69hotmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (22, 1, N'Franca', N'83570', CAST(N'1963-11-01' AS Date), N'Italia', N'Piemonte', N'92238', N'3201111', N'Franca.83570@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (23, 1, N'Maria', N'F3C15', CAST(N'1986-12-01' AS Date), N'Italia', N'Piemonte', N'32382', N'3201111', N'Maria.F3C15@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (24, 1, N'Marina', N'C8229', CAST(N'1990-01-01' AS Date), N'Italia', N'Piemonte', N'11543', N'+(39) 320 32111', N'Marina.C8229@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (25, 1, N'Cristina', N'480D8', CAST(N'1991-02-01' AS Date), N'Italia', N'Lombardia', N'97474', N'3201111', N'Cristina.480D8@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (26, 1, N'Pino', N'5D47A', CAST(N'1974-03-01' AS Date), N'Italia', N'Lombardia', N'86929', N'3201111', N'Pino.5D47A@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (27, 1, N'Vera', N'4AD27', CAST(N'1973-04-01' AS Date), N'Italia', N'Lombardia', N'83623', N'+(39) 320 32111', N'Vera.4AD27@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (28, 1, N'Milo', N'55EDA', CAST(N'1973-05-01' AS Date), N'Italia', N'Lombardia', N'34261', N'3201111', N'Milo.55EDA@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (29, 1, N'Frank', N'3D18C', CAST(N'1988-06-01' AS Date), N'Italia', N'Lombardia', N'13596', N'3201111', N'Frank.3D18C@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (30, 1, N'Seth', N'4C72C', CAST(N'1967-07-01' AS Date), N'Italia', N'Puglia', N'16295', N'+(39) 320 32111', N'Seth.4C72C@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (31, 1, N'Giovanni', N'7AD14', CAST(N'1984-08-01' AS Date), N'Italia', N'Puglia', N'36294', N'3201111', N'Giovanni.7AD14@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (32, 1, N'Maria', N'D252B', CAST(N'1985-09-01' AS Date), N'Italia', N'Puglia', N'26153', N'3201111', N'Maria.D252B@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (33, 1, N'Nello', N'6E40C', CAST(N'1979-10-01' AS Date), N'Italia', N'Puglia', N'93191', N'+(39) 320 32111', N'Nello.6E40C@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (34, 1, N'Mino', N'75332', CAST(N'1970-11-01' AS Date), N'Italia', N'Puglia', N'69199', N'3201111', N'Mino.75332@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (35, 1, N'Giovanni', N'A1B14', CAST(N'1974-12-01' AS Date), N'Italia', N'Molise', N'47', N'3201111', N'Giovanni.A1B14@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (36, 1, N'Maria', N'0F0FF', CAST(N'1994-01-01' AS Date), N'Italia', N'Molise', N'48761', N'+(39) 320 32111', N'Maria.0F0FF@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (37, 1, N'Luigi', N'9C975', CAST(N'1965-02-01' AS Date), N'Italia', N'Molise', N'51375', N'3201111', N'Luigi.9C975@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (38, 1, N'Mario', N'86498', CAST(N'1994-03-01' AS Date), N'Italia', N'Molise', N'28336', N'3201111', N'Mario.86498@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (39, 1, N'Maria', N'7498F', CAST(N'1964-04-01' AS Date), N'Italia', N'Molise', N'39187', N'+(39) 320 32111', N'Maria.7498F@gmail.com')
GO
INSERT INTO dbo.Customers (CustomerId, IsActive, Name, Surname, DateOfBirth, Country, Region, Cap, Phone, Email) VALUES (40, 1, N'Giovanni', N'DC2AF', CAST(N'1972-05-01' AS Date), N'Italia', N'Molise', N'6', N'3201111', N'Giovanni.DC2AF@gmail.com')
GO
SET IDENTITY_INSERT  dbo.Customers OFF
GO
SET IDENTITY_INSERT  dbo.Invoices ON 
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (1, 35, 3, CAST(N'2018-08-12' AS Date), CAST(N'2018-11-12' AS Date), CAST(N'2018-11-10' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2018-08-22' AS Date), CAST(N'2018-08-18' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (2, 39, 1, CAST(N'2018-07-23' AS Date), CAST(N'2018-10-23' AS Date), CAST(N'2018-10-21' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2018-08-02' AS Date), CAST(N'2018-07-29' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (3, 10, 1, CAST(N'2018-08-25' AS Date), CAST(N'2018-11-25' AS Date), CAST(N'2018-11-23' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2018-09-04' AS Date), CAST(N'2018-08-31' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (4, 10, 2, CAST(N'2018-12-03' AS Date), CAST(N'2019-03-03' AS Date), CAST(N'2019-03-03' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2018-12-13' AS Date), CAST(N'2018-12-09' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (5, 29, 2, CAST(N'2018-11-15' AS Date), CAST(N'2019-02-15' AS Date), CAST(N'2019-02-13' AS Date), NULL, 1, CAST(N'2018-11-25' AS Date), CAST(N'2018-11-21' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (6, 15, 2, CAST(N'2018-07-26' AS Date), CAST(N'2018-10-26' AS Date), CAST(N'2018-10-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2018-08-05' AS Date), CAST(N'2018-08-07' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (7, 35, 2, CAST(N'2018-01-28' AS Date), CAST(N'2018-04-28' AS Date), CAST(N'2018-04-28' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2018-02-07' AS Date), CAST(N'2018-02-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (8, 21, 2, CAST(N'2018-03-27' AS Date), CAST(N'2018-06-27' AS Date), CAST(N'2018-06-30' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2018-04-06' AS Date), CAST(N'2018-04-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (9, 40, 3, CAST(N'2018-06-27' AS Date), CAST(N'2018-09-27' AS Date), CAST(N'2018-09-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2018-07-07' AS Date), CAST(N'2018-07-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (10, 35, 2, CAST(N'2018-11-28' AS Date), CAST(N'2019-02-28' AS Date), CAST(N'2019-02-26' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2018-12-08' AS Date), CAST(N'2018-12-04' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (11, 32, 1, CAST(N'2018-05-11' AS Date), CAST(N'2018-08-11' AS Date), CAST(N'2018-08-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2018-05-21' AS Date), CAST(N'2018-05-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (12, 22, 2, CAST(N'2018-08-11' AS Date), CAST(N'2018-11-11' AS Date), CAST(N'2018-11-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2018-08-21' AS Date), CAST(N'2018-08-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (13, 7, 2, CAST(N'2018-09-09' AS Date), CAST(N'2018-12-09' AS Date), CAST(N'2018-12-08' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2018-09-19' AS Date), CAST(N'2018-09-15' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (14, 13, 1, CAST(N'2018-01-22' AS Date), CAST(N'2018-04-22' AS Date), CAST(N'2018-04-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2018-02-01' AS Date), CAST(N'2018-01-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (15, 22, 3, CAST(N'2018-09-12' AS Date), CAST(N'2018-12-12' AS Date), CAST(N'2018-12-30' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2018-09-22' AS Date), CAST(N'2018-09-18' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (16, 10, 1, CAST(N'2018-10-20' AS Date), CAST(N'2019-01-20' AS Date), CAST(N'2019-01-18' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2018-10-30' AS Date), CAST(N'2018-10-26' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (17, 22, 2, CAST(N'2018-09-27' AS Date), CAST(N'2018-12-27' AS Date), CAST(N'2018-12-26' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2018-10-07' AS Date), CAST(N'2018-10-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (18, 39, 1, CAST(N'2018-09-07' AS Date), CAST(N'2018-12-07' AS Date), CAST(N'2018-12-06' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2018-09-17' AS Date), CAST(N'2018-09-13' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (19, 40, 3, CAST(N'2018-12-07' AS Date), CAST(N'2019-03-07' AS Date), CAST(N'2019-03-07' AS Date), NULL, 1, CAST(N'2018-12-17' AS Date), CAST(N'2018-12-13' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (20, 30, 3, CAST(N'2018-08-09' AS Date), CAST(N'2018-11-09' AS Date), CAST(N'2018-11-07' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2018-08-19' AS Date), CAST(N'2018-08-15' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (21, 4, 2, CAST(N'2018-01-16' AS Date), CAST(N'2018-04-16' AS Date), CAST(N'2018-04-16' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2018-01-26' AS Date), CAST(N'2018-01-22' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (22, 13, 2, CAST(N'2018-08-13' AS Date), CAST(N'2018-11-13' AS Date), CAST(N'2018-11-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2018-08-23' AS Date), CAST(N'2018-08-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (23, 18, 2, CAST(N'2018-06-12' AS Date), CAST(N'2018-09-12' AS Date), CAST(N'2018-09-10' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2018-06-22' AS Date), CAST(N'2018-06-18' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (24, 3, 2, CAST(N'2018-04-02' AS Date), CAST(N'2018-07-02' AS Date), CAST(N'2018-07-01' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2018-04-12' AS Date), CAST(N'2018-04-08' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (25, 24, 1, CAST(N'2019-03-18' AS Date), CAST(N'2019-06-18' AS Date), CAST(N'2019-06-16' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-28' AS Date), CAST(N'2019-03-24' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (26, 15, 2, CAST(N'2019-10-21' AS Date), CAST(N'2020-01-21' AS Date), CAST(N'2020-01-19' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-10-31' AS Date), CAST(N'2019-10-27' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (27, 7, 2, CAST(N'2019-12-02' AS Date), CAST(N'2020-03-02' AS Date), CAST(N'2020-03-01' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-12-12' AS Date), CAST(N'2019-12-08' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (28, 27, 1, CAST(N'2019-06-08' AS Date), CAST(N'2019-09-08' AS Date), CAST(N'2019-09-06' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-06-18' AS Date), CAST(N'2019-06-14' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (29, 19, 3, CAST(N'2019-01-10' AS Date), CAST(N'2019-04-10' AS Date), CAST(N'2019-04-10' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-01-20' AS Date), CAST(N'2019-01-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (30, 16, 2, CAST(N'2019-08-06' AS Date), CAST(N'2019-11-06' AS Date), CAST(N'2019-11-04' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-08-16' AS Date), CAST(N'2019-08-12' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (31, 36, 3, CAST(N'2019-02-22' AS Date), CAST(N'2019-05-22' AS Date), CAST(N'2019-05-23' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-04' AS Date), CAST(N'2019-02-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (32, 24, 1, CAST(N'2019-06-11' AS Date), CAST(N'2019-09-11' AS Date), CAST(N'2019-09-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-06-21' AS Date), CAST(N'2019-06-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (33, 27, 1, CAST(N'2019-02-01' AS Date), CAST(N'2019-05-01' AS Date), CAST(N'2019-05-02' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-02-11' AS Date), CAST(N'2019-02-07' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (34, 25, 1, CAST(N'2019-03-14' AS Date), CAST(N'2019-06-14' AS Date), CAST(N'2019-06-12' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-24' AS Date), CAST(N'2019-03-20' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (35, 7, 3, CAST(N'2019-07-05' AS Date), CAST(N'2019-10-05' AS Date), CAST(N'2019-10-03' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-07-15' AS Date), CAST(N'2019-07-11' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (36, 12, 3, CAST(N'2019-05-18' AS Date), CAST(N'2019-08-18' AS Date), CAST(N'2019-08-16' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-05-28' AS Date), CAST(N'2019-05-24' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (37, 33, 2, CAST(N'2019-07-23' AS Date), CAST(N'2019-10-23' AS Date), CAST(N'2019-10-21' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-08-02' AS Date), CAST(N'2019-07-29' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (38, 34, 3, CAST(N'2019-03-03' AS Date), CAST(N'2019-06-03' AS Date), CAST(N'2019-06-01' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-13' AS Date), CAST(N'2019-03-09' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (39, 12, 1, CAST(N'2019-05-19' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-17' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-05-29' AS Date), CAST(N'2019-05-25' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (40, 31, 3, CAST(N'2019-03-14' AS Date), CAST(N'2019-06-14' AS Date), CAST(N'2019-06-12' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-24' AS Date), CAST(N'2019-03-20' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (41, 9, 1, CAST(N'2019-04-10' AS Date), CAST(N'2019-07-10' AS Date), CAST(N'2019-07-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-04-20' AS Date), CAST(N'2019-04-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (42, 40, 2, CAST(N'2019-12-08' AS Date), CAST(N'2020-03-08' AS Date), CAST(N'2020-03-07' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-12-18' AS Date), CAST(N'2019-12-14' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (43, 36, 1, CAST(N'2019-06-12' AS Date), CAST(N'2019-09-12' AS Date), CAST(N'2019-09-10' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-06-22' AS Date), CAST(N'2019-06-18' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (44, 1, 3, CAST(N'2019-04-11' AS Date), CAST(N'2019-07-11' AS Date), CAST(N'2019-07-10' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-04-21' AS Date), CAST(N'2019-04-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (45, 3, 3, CAST(N'2019-12-16' AS Date), CAST(N'2020-03-16' AS Date), CAST(N'2020-03-15' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-12-26' AS Date), CAST(N'2019-12-22' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (46, 15, 2, CAST(N'2019-07-12' AS Date), CAST(N'2019-10-12' AS Date), CAST(N'2019-10-10' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-07-22' AS Date), CAST(N'2019-07-18' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (47, 29, 2, CAST(N'2019-11-24' AS Date), CAST(N'2020-02-24' AS Date), CAST(N'2020-02-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-12-04' AS Date), CAST(N'2019-11-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (48, 21, 1, CAST(N'2019-04-06' AS Date), CAST(N'2019-07-06' AS Date), CAST(N'2019-07-05' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-04-16' AS Date), CAST(N'2019-04-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (49, 17, 2, CAST(N'2019-11-03' AS Date), CAST(N'2020-02-03' AS Date), CAST(N'2020-02-01' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-11-13' AS Date), CAST(N'2019-11-09' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (50, 30, 1, CAST(N'2019-10-01' AS Date), CAST(N'2020-01-01' AS Date), CAST(N'2019-12-30' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-10-11' AS Date), CAST(N'2019-10-07' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (51, 40, 1, CAST(N'2019-05-26' AS Date), CAST(N'2019-08-26' AS Date), CAST(N'2019-08-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-06-05' AS Date), CAST(N'2019-06-01' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (52, 6, 3, CAST(N'2019-06-21' AS Date), CAST(N'2019-09-21' AS Date), CAST(N'2019-09-19' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-07-01' AS Date), CAST(N'2019-06-27' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (53, 10, 3, CAST(N'2019-03-07' AS Date), CAST(N'2019-06-07' AS Date), CAST(N'2019-06-05' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-17' AS Date), CAST(N'2019-03-13' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (54, 21, 2, CAST(N'2019-08-17' AS Date), CAST(N'2019-11-17' AS Date), CAST(N'2019-11-15' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-08-27' AS Date), CAST(N'2019-08-23' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (55, 1, 3, CAST(N'2019-11-06' AS Date), CAST(N'2020-02-06' AS Date), CAST(N'2020-02-04' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-11-16' AS Date), CAST(N'2019-11-12' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (56, 7, 2, CAST(N'2019-05-26' AS Date), CAST(N'2019-08-26' AS Date), CAST(N'2019-08-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-06-05' AS Date), CAST(N'2019-06-01' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (57, 8, 1, CAST(N'2019-04-02' AS Date), CAST(N'2019-07-02' AS Date), CAST(N'2019-07-01' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-04-12' AS Date), CAST(N'2019-04-08' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (58, 2, 1, CAST(N'2019-04-28' AS Date), CAST(N'2019-07-28' AS Date), CAST(N'2019-07-27' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-05-08' AS Date), CAST(N'2019-05-04' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (59, 17, 1, CAST(N'2019-02-01' AS Date), CAST(N'2019-05-01' AS Date), CAST(N'2019-05-02' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-02-11' AS Date), CAST(N'2019-02-07' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (60, 6, 2, CAST(N'2019-09-05' AS Date), CAST(N'2019-12-05' AS Date), CAST(N'2019-12-04' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-09-15' AS Date), CAST(N'2019-09-11' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (61, 25, 3, CAST(N'2019-06-02' AS Date), CAST(N'2019-09-02' AS Date), CAST(N'2019-08-31' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-06-12' AS Date), CAST(N'2019-06-08' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (62, 33, 1, CAST(N'2019-01-20' AS Date), CAST(N'2019-04-20' AS Date), CAST(N'2019-04-20' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-01-30' AS Date), CAST(N'2019-01-26' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (63, 22, 2, CAST(N'2019-03-09' AS Date), CAST(N'2019-06-09' AS Date), CAST(N'2019-06-07' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-03-19' AS Date), CAST(N'2019-03-15' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (64, 32, 1, CAST(N'2019-03-05' AS Date), CAST(N'2019-06-05' AS Date), CAST(N'2019-06-03' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-03-15' AS Date), CAST(N'2019-03-11' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (65, 5, 2, CAST(N'2019-07-11' AS Date), CAST(N'2019-10-11' AS Date), CAST(N'2019-10-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-07-21' AS Date), CAST(N'2019-07-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (66, 28, 2, CAST(N'2019-08-11' AS Date), CAST(N'2019-11-11' AS Date), CAST(N'2019-11-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-08-21' AS Date), CAST(N'2019-08-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (67, 36, 2, CAST(N'2019-01-11' AS Date), CAST(N'2019-04-11' AS Date), CAST(N'2019-04-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-01-21' AS Date), CAST(N'2019-01-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (68, 4, 1, CAST(N'2019-07-11' AS Date), CAST(N'2019-10-11' AS Date), CAST(N'2019-10-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-07-21' AS Date), CAST(N'2019-07-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (69, 35, 2, CAST(N'2019-12-03' AS Date), CAST(N'2020-03-03' AS Date), CAST(N'2020-03-02' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-12-13' AS Date), CAST(N'2019-12-09' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (70, 23, 1, CAST(N'2019-01-24' AS Date), CAST(N'2019-04-24' AS Date), CAST(N'2019-04-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-02-03' AS Date), CAST(N'2019-01-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (71, 12, 3, CAST(N'2019-04-26' AS Date), CAST(N'2019-07-26' AS Date), CAST(N'2019-07-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-05-06' AS Date), CAST(N'2019-05-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (72, 15, 2, CAST(N'2019-02-04' AS Date), CAST(N'2019-05-04' AS Date), CAST(N'2019-05-05' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-02-14' AS Date), CAST(N'2019-02-10' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (73, 36, 3, CAST(N'2019-04-13' AS Date), CAST(N'2019-07-13' AS Date), CAST(N'2019-07-12' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-04-23' AS Date), CAST(N'2019-04-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (74, 25, 2, CAST(N'2019-03-21' AS Date), CAST(N'2019-06-21' AS Date), CAST(N'2019-06-19' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-31' AS Date), CAST(N'2019-03-27' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (75, 12, 1, CAST(N'2019-10-25' AS Date), CAST(N'2020-01-25' AS Date), CAST(N'2020-01-23' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-11-04' AS Date), CAST(N'2019-10-31' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (76, 3, 1, CAST(N'2019-09-12' AS Date), CAST(N'2019-12-12' AS Date), CAST(N'2019-12-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-09-22' AS Date), CAST(N'2019-09-18' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (77, 34, 2, CAST(N'2019-10-27' AS Date), CAST(N'2020-01-27' AS Date), CAST(N'2020-01-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-11-06' AS Date), CAST(N'2019-11-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (78, 32, 3, CAST(N'2019-03-23' AS Date), CAST(N'2019-06-23' AS Date), CAST(N'2019-06-21' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-04-02' AS Date), CAST(N'2019-03-29' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (79, 16, 2, CAST(N'2019-01-11' AS Date), CAST(N'2019-04-11' AS Date), CAST(N'2019-04-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-01-21' AS Date), CAST(N'2019-01-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (80, 14, 1, CAST(N'2019-04-05' AS Date), CAST(N'2019-07-05' AS Date), CAST(N'2019-07-04' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-04-15' AS Date), CAST(N'2019-04-11' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (81, 23, 3, CAST(N'2019-05-04' AS Date), CAST(N'2019-08-04' AS Date), CAST(N'2019-08-02' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-05-14' AS Date), CAST(N'2019-05-10' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (82, 35, 1, CAST(N'2019-08-03' AS Date), CAST(N'2019-11-03' AS Date), CAST(N'2019-11-01' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-08-13' AS Date), CAST(N'2019-08-09' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (83, 14, 3, CAST(N'2019-07-25' AS Date), CAST(N'2019-10-25' AS Date), CAST(N'2019-10-23' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-08-04' AS Date), CAST(N'2019-07-31' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (84, 22, 3, CAST(N'2019-05-24' AS Date), CAST(N'2019-08-24' AS Date), CAST(N'2019-08-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-06-03' AS Date), CAST(N'2019-05-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (85, 15, 3, CAST(N'2019-03-10' AS Date), CAST(N'2019-06-10' AS Date), CAST(N'2019-06-08' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-03-20' AS Date), CAST(N'2019-03-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (86, 15, 1, CAST(N'2019-07-04' AS Date), CAST(N'2019-10-04' AS Date), CAST(N'2019-10-02' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-07-14' AS Date), CAST(N'2019-07-10' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (87, 33, 2, CAST(N'2019-10-24' AS Date), CAST(N'2020-01-24' AS Date), CAST(N'2020-01-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-11-03' AS Date), CAST(N'2019-10-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (88, 33, 2, CAST(N'2019-03-14' AS Date), CAST(N'2019-06-14' AS Date), CAST(N'2019-06-12' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-24' AS Date), CAST(N'2019-03-20' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (89, 20, 3, CAST(N'2019-04-26' AS Date), CAST(N'2019-07-26' AS Date), CAST(N'2019-07-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-05-06' AS Date), CAST(N'2019-05-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (90, 3, 3, CAST(N'2019-01-15' AS Date), CAST(N'2019-04-15' AS Date), CAST(N'2019-04-15' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-01-25' AS Date), CAST(N'2019-01-21' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (91, 40, 3, CAST(N'2019-12-11' AS Date), CAST(N'2020-03-11' AS Date), CAST(N'2020-03-10' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-12-21' AS Date), CAST(N'2019-12-23' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (92, 40, 3, CAST(N'2019-11-26' AS Date), CAST(N'2020-02-26' AS Date), CAST(N'2020-02-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-12-06' AS Date), CAST(N'2019-12-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (93, 8, 3, CAST(N'2019-05-06' AS Date), CAST(N'2019-08-06' AS Date), CAST(N'2019-08-04' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-05-16' AS Date), CAST(N'2019-05-12' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (94, 17, 1, CAST(N'2019-01-11' AS Date), CAST(N'2019-04-11' AS Date), CAST(N'2019-04-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-01-21' AS Date), CAST(N'2019-01-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (95, 4, 3, CAST(N'2019-02-06' AS Date), CAST(N'2019-05-06' AS Date), CAST(N'2019-05-07' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-02-16' AS Date), CAST(N'2019-02-12' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (96, 25, 1, CAST(N'2019-07-14' AS Date), CAST(N'2019-10-14' AS Date), CAST(N'2019-10-12' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-07-24' AS Date), CAST(N'2019-07-20' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (97, 39, 1, CAST(N'2019-12-08' AS Date), CAST(N'2020-03-08' AS Date), CAST(N'2020-03-07' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-12-18' AS Date), CAST(N'2019-12-14' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (98, 40, 2, CAST(N'2019-03-10' AS Date), CAST(N'2019-06-10' AS Date), CAST(N'2019-06-08' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-03-20' AS Date), CAST(N'2019-03-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (99, 5, 3, CAST(N'2019-05-24' AS Date), CAST(N'2019-08-24' AS Date), CAST(N'2019-08-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-06-03' AS Date), CAST(N'2019-05-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (100, 15, 3, CAST(N'2019-08-02' AS Date), CAST(N'2019-11-02' AS Date), CAST(N'2019-10-31' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-08-12' AS Date), CAST(N'2019-08-08' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (101, 6, 3, CAST(N'2019-04-17' AS Date), CAST(N'2019-07-17' AS Date), CAST(N'2019-07-16' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-04-27' AS Date), CAST(N'2019-04-23' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (102, 4, 3, CAST(N'2019-08-18' AS Date), CAST(N'2019-11-18' AS Date), CAST(N'2019-11-16' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-08-28' AS Date), CAST(N'2019-08-24' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (103, 28, 3, CAST(N'2019-02-17' AS Date), CAST(N'2019-05-17' AS Date), CAST(N'2019-05-18' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-02-27' AS Date), CAST(N'2019-02-23' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (104, 20, 1, CAST(N'2019-06-22' AS Date), CAST(N'2019-09-22' AS Date), CAST(N'2019-09-20' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-07-02' AS Date), CAST(N'2019-06-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (105, 2, 2, CAST(N'2019-10-10' AS Date), CAST(N'2020-01-10' AS Date), CAST(N'2020-01-08' AS Date), NULL, 1, CAST(N'2019-10-20' AS Date), CAST(N'2019-10-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (106, 13, 1, CAST(N'2019-06-04' AS Date), CAST(N'2019-09-04' AS Date), CAST(N'2019-09-02' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-06-14' AS Date), CAST(N'2019-06-10' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (107, 37, 2, CAST(N'2019-03-08' AS Date), CAST(N'2019-06-08' AS Date), CAST(N'2019-06-06' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-03-18' AS Date), CAST(N'2019-03-14' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (108, 7, 1, CAST(N'2019-06-28' AS Date), CAST(N'2019-09-28' AS Date), CAST(N'2019-09-26' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-07-08' AS Date), CAST(N'2019-07-04' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (109, 3, 2, CAST(N'2019-02-03' AS Date), CAST(N'2019-05-03' AS Date), CAST(N'2019-05-04' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-02-13' AS Date), CAST(N'2019-02-09' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (110, 17, 2, CAST(N'2019-03-09' AS Date), CAST(N'2019-06-09' AS Date), CAST(N'2019-06-07' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-19' AS Date), CAST(N'2019-03-15' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (111, 31, 2, CAST(N'2019-05-15' AS Date), CAST(N'2019-08-15' AS Date), CAST(N'2019-08-13' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-05-25' AS Date), CAST(N'2019-05-21' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (112, 37, 3, CAST(N'2019-04-18' AS Date), CAST(N'2019-07-18' AS Date), CAST(N'2019-07-17' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-04-28' AS Date), CAST(N'2019-04-24' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (113, 12, 1, CAST(N'2019-09-01' AS Date), CAST(N'2019-12-01' AS Date), CAST(N'2019-11-30' AS Date), CAST(2.00 AS Decimal(18, 2)), 1, CAST(N'2019-09-11' AS Date), CAST(N'2019-09-07' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (114, 27, 3, CAST(N'2019-08-28' AS Date), CAST(N'2019-11-28' AS Date), CAST(N'2019-11-26' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-09-07' AS Date), CAST(N'2019-09-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (115, 31, 1, CAST(N'2019-05-19' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-17' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-05-29' AS Date), CAST(N'2019-05-25' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (116, 24, 1, CAST(N'2019-11-10' AS Date), CAST(N'2020-02-10' AS Date), CAST(N'2020-02-08' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-11-20' AS Date), CAST(N'2019-11-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (117, 9, 2, CAST(N'2019-06-15' AS Date), CAST(N'2019-09-15' AS Date), CAST(N'2019-09-13' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-06-25' AS Date), CAST(N'2019-06-21' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (118, 23, 1, CAST(N'2019-07-12' AS Date), CAST(N'2019-10-12' AS Date), CAST(N'2019-10-10' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-07-22' AS Date), CAST(N'2019-07-18' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (119, 24, 2, CAST(N'2019-10-07' AS Date), CAST(N'2020-01-07' AS Date), CAST(N'2020-01-05' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-10-17' AS Date), CAST(N'2019-10-13' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (120, 18, 2, CAST(N'2019-04-25' AS Date), CAST(N'2019-07-25' AS Date), CAST(N'2019-07-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-05-05' AS Date), CAST(N'2019-05-01' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (121, 24, 1, CAST(N'2019-04-18' AS Date), CAST(N'2019-07-18' AS Date), CAST(N'2019-07-17' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-04-28' AS Date), CAST(N'2019-04-24' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (122, 39, 3, CAST(N'2019-05-16' AS Date), CAST(N'2019-08-16' AS Date), CAST(N'2019-08-14' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-05-26' AS Date), CAST(N'2019-05-22' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (123, 5, 3, CAST(N'2019-11-27' AS Date), CAST(N'2020-02-27' AS Date), CAST(N'2020-02-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-12-07' AS Date), CAST(N'2019-12-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (124, 33, 1, CAST(N'2019-03-22' AS Date), CAST(N'2019-06-22' AS Date), CAST(N'2019-06-20' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-04-01' AS Date), CAST(N'2019-03-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (125, 22, 1, CAST(N'2019-09-17' AS Date), CAST(N'2019-12-17' AS Date), CAST(N'2019-12-16' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-09-27' AS Date), CAST(N'2019-09-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (126, 12, 3, CAST(N'2019-08-28' AS Date), CAST(N'2019-11-28' AS Date), CAST(N'2019-11-26' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-09-07' AS Date), CAST(N'2019-09-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (127, 37, 3, CAST(N'2019-05-16' AS Date), CAST(N'2019-08-16' AS Date), CAST(N'2019-08-14' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-05-26' AS Date), CAST(N'2019-05-22' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (128, 32, 2, CAST(N'2019-08-27' AS Date), CAST(N'2019-11-27' AS Date), CAST(N'2019-11-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-09-06' AS Date), CAST(N'2019-09-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (129, 2, 3, CAST(N'2019-10-05' AS Date), CAST(N'2020-01-05' AS Date), CAST(N'2020-01-03' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-10-15' AS Date), CAST(N'2019-10-11' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (130, 34, 2, CAST(N'2019-11-03' AS Date), CAST(N'2020-02-03' AS Date), CAST(N'2020-02-01' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-11-13' AS Date), CAST(N'2019-11-09' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (131, 3, 3, CAST(N'2019-11-27' AS Date), CAST(N'2020-02-27' AS Date), CAST(N'2020-02-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-12-07' AS Date), CAST(N'2019-12-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (132, 40, 3, CAST(N'2019-06-10' AS Date), CAST(N'2019-09-10' AS Date), CAST(N'2019-10-08' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-06-20' AS Date), CAST(N'2019-06-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (133, 38, 3, CAST(N'2019-03-02' AS Date), CAST(N'2019-06-02' AS Date), CAST(N'2019-05-31' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-03-12' AS Date), CAST(N'2019-03-08' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (134, 10, 2, CAST(N'2019-01-06' AS Date), CAST(N'2019-04-06' AS Date), CAST(N'2019-04-06' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-01-16' AS Date), CAST(N'2019-01-12' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (135, 20, 2, CAST(N'2019-09-18' AS Date), CAST(N'2019-12-18' AS Date), CAST(N'2019-12-17' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-09-28' AS Date), CAST(N'2019-09-24' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (136, 23, 1, CAST(N'2019-04-20' AS Date), CAST(N'2019-07-20' AS Date), CAST(N'2019-07-19' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-04-30' AS Date), CAST(N'2019-04-26' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (137, 12, 3, CAST(N'2019-11-23' AS Date), CAST(N'2020-02-23' AS Date), CAST(N'2020-02-21' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-12-03' AS Date), CAST(N'2019-11-29' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (138, 35, 2, CAST(N'2019-08-13' AS Date), CAST(N'2019-11-13' AS Date), CAST(N'2019-11-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-08-23' AS Date), CAST(N'2019-08-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (139, 29, 3, CAST(N'2019-05-22' AS Date), CAST(N'2019-08-22' AS Date), CAST(N'2019-08-20' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-06-01' AS Date), CAST(N'2019-05-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (140, 22, 2, CAST(N'2019-02-05' AS Date), CAST(N'2019-05-05' AS Date), CAST(N'2019-05-06' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-02-15' AS Date), CAST(N'2019-02-11' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (141, 17, 1, CAST(N'2019-02-25' AS Date), CAST(N'2019-05-25' AS Date), CAST(N'2019-05-26' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-03-07' AS Date), CAST(N'2019-03-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (142, 3, 1, CAST(N'2019-11-06' AS Date), CAST(N'2020-02-06' AS Date), CAST(N'2020-02-04' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-11-16' AS Date), CAST(N'2019-11-12' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (143, 38, 1, CAST(N'2019-02-08' AS Date), CAST(N'2019-05-08' AS Date), CAST(N'2019-05-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-02-18' AS Date), CAST(N'2019-02-14' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (144, 18, 2, CAST(N'2019-03-15' AS Date), CAST(N'2019-06-15' AS Date), CAST(N'2019-06-13' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-03-25' AS Date), CAST(N'2019-03-21' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (145, 24, 3, CAST(N'2019-04-09' AS Date), CAST(N'2019-07-09' AS Date), CAST(N'2019-07-08' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-04-19' AS Date), CAST(N'2019-04-15' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (146, 32, 2, CAST(N'2019-09-17' AS Date), CAST(N'2019-12-17' AS Date), CAST(N'2019-12-16' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-09-27' AS Date), CAST(N'2019-09-23' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (147, 32, 1, CAST(N'2019-05-20' AS Date), CAST(N'2019-08-20' AS Date), CAST(N'2019-08-18' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-05-30' AS Date), CAST(N'2019-05-26' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (148, 25, 2, CAST(N'2019-07-28' AS Date), CAST(N'2019-10-28' AS Date), CAST(N'2019-10-26' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-08-07' AS Date), CAST(N'2019-08-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (149, 33, 1, CAST(N'2019-06-20' AS Date), CAST(N'2019-09-20' AS Date), CAST(N'2019-09-18' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-06-30' AS Date), CAST(N'2019-06-26' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (150, 38, 3, CAST(N'2019-11-05' AS Date), CAST(N'2020-02-05' AS Date), CAST(N'2020-02-03' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-11-15' AS Date), CAST(N'2019-11-11' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (151, 35, 2, CAST(N'2019-11-26' AS Date), CAST(N'2020-02-26' AS Date), CAST(N'2020-02-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-12-06' AS Date), CAST(N'2019-12-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (152, 37, 3, CAST(N'2019-09-04' AS Date), CAST(N'2019-12-04' AS Date), CAST(N'2019-12-03' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-09-14' AS Date), CAST(N'2019-09-10' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (153, 39, 1, CAST(N'2019-10-13' AS Date), CAST(N'2020-01-13' AS Date), CAST(N'2020-01-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-10-23' AS Date), CAST(N'2019-10-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (154, 6, 1, CAST(N'2019-02-07' AS Date), CAST(N'2019-05-07' AS Date), CAST(N'2019-05-08' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-02-17' AS Date), CAST(N'2019-02-13' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (155, 32, 2, CAST(N'2019-02-22' AS Date), CAST(N'2019-05-22' AS Date), CAST(N'2019-05-23' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-03-04' AS Date), CAST(N'2019-02-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (156, 11, 1, CAST(N'2019-09-17' AS Date), CAST(N'2019-12-17' AS Date), CAST(N'2019-12-16' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-09-27' AS Date), CAST(N'2019-09-23' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (157, 19, 1, CAST(N'2019-04-23' AS Date), CAST(N'2019-07-23' AS Date), CAST(N'2019-07-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-05-03' AS Date), CAST(N'2019-04-29' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (158, 16, 1, CAST(N'2019-11-23' AS Date), CAST(N'2020-02-23' AS Date), CAST(N'2020-02-21' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-12-03' AS Date), CAST(N'2019-11-29' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (159, 4, 2, CAST(N'2019-11-04' AS Date), CAST(N'2020-02-04' AS Date), CAST(N'2020-02-02' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-11-14' AS Date), CAST(N'2019-11-10' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (160, 11, 2, CAST(N'2019-12-28' AS Date), CAST(N'2020-03-28' AS Date), CAST(N'2020-03-27' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2020-01-07' AS Date), CAST(N'2020-01-09' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (161, 26, 2, CAST(N'2019-10-11' AS Date), CAST(N'2020-01-11' AS Date), CAST(N'2020-01-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-10-21' AS Date), CAST(N'2019-10-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (162, 21, 1, CAST(N'2019-12-27' AS Date), CAST(N'2020-03-27' AS Date), CAST(N'2020-03-26' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2020-01-06' AS Date), CAST(N'2020-01-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (163, 30, 2, CAST(N'2019-04-28' AS Date), CAST(N'2019-07-28' AS Date), CAST(N'2019-07-27' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-05-08' AS Date), CAST(N'2019-05-04' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (164, 20, 3, CAST(N'2019-06-13' AS Date), CAST(N'2019-09-13' AS Date), CAST(N'2019-09-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-06-23' AS Date), CAST(N'2019-06-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (165, 14, 1, CAST(N'2019-11-26' AS Date), CAST(N'2020-02-26' AS Date), CAST(N'2020-02-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-12-06' AS Date), CAST(N'2019-12-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (166, 1, 2, CAST(N'2019-03-11' AS Date), CAST(N'2019-06-11' AS Date), CAST(N'2019-06-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-03-21' AS Date), CAST(N'2019-03-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (167, 15, 1, CAST(N'2019-10-17' AS Date), CAST(N'2020-01-17' AS Date), CAST(N'2020-01-15' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-10-27' AS Date), CAST(N'2019-10-23' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (168, 8, 2, CAST(N'2019-05-24' AS Date), CAST(N'2019-08-24' AS Date), CAST(N'2019-08-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-06-03' AS Date), CAST(N'2019-05-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (169, 3, 3, CAST(N'2019-04-15' AS Date), CAST(N'2019-07-15' AS Date), CAST(N'2019-07-14' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-04-25' AS Date), CAST(N'2019-04-21' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (170, 37, 2, CAST(N'2019-06-04' AS Date), CAST(N'2019-09-04' AS Date), CAST(N'2019-09-02' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-06-14' AS Date), CAST(N'2019-06-10' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (171, 33, 3, CAST(N'2019-06-06' AS Date), CAST(N'2019-09-06' AS Date), CAST(N'2019-09-04' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-06-16' AS Date), CAST(N'2019-06-12' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (172, 19, 2, CAST(N'2019-04-10' AS Date), CAST(N'2019-07-10' AS Date), CAST(N'2019-07-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-04-20' AS Date), CAST(N'2019-04-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (173, 13, 3, CAST(N'2019-10-18' AS Date), CAST(N'2020-01-18' AS Date), CAST(N'2020-01-16' AS Date), CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2019-10-28' AS Date), CAST(N'2019-10-24' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (174, 12, 3, CAST(N'2019-03-15' AS Date), CAST(N'2019-06-15' AS Date), CAST(N'2019-06-13' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-03-25' AS Date), CAST(N'2019-03-21' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (175, 8, 3, CAST(N'2019-03-13' AS Date), CAST(N'2019-06-13' AS Date), CAST(N'2019-06-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-23' AS Date), CAST(N'2019-03-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (176, 32, 2, CAST(N'2019-03-26' AS Date), CAST(N'2019-06-26' AS Date), CAST(N'2019-06-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-04-05' AS Date), CAST(N'2019-04-01' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (177, 25, 1, CAST(N'2019-12-26' AS Date), CAST(N'2020-03-26' AS Date), CAST(N'2020-03-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2020-01-05' AS Date), CAST(N'2020-01-01' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (178, 29, 2, CAST(N'2019-02-25' AS Date), CAST(N'2019-05-25' AS Date), CAST(N'2019-05-26' AS Date), CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-07' AS Date), CAST(N'2019-03-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (179, 7, 3, CAST(N'2019-10-10' AS Date), CAST(N'2020-01-10' AS Date), CAST(N'2020-01-08' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-10-20' AS Date), CAST(N'2019-10-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (180, 1, 1, CAST(N'2019-04-26' AS Date), CAST(N'2019-07-26' AS Date), CAST(N'2019-07-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-05-06' AS Date), CAST(N'2019-05-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (181, 20, 3, CAST(N'2019-07-15' AS Date), CAST(N'2019-10-15' AS Date), CAST(N'2019-10-13' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-07-25' AS Date), CAST(N'2019-07-21' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (182, 37, 3, CAST(N'2019-06-13' AS Date), CAST(N'2019-09-13' AS Date), CAST(N'2019-09-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-06-23' AS Date), CAST(N'2019-06-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (183, 36, 2, CAST(N'2019-07-20' AS Date), CAST(N'2019-10-20' AS Date), CAST(N'2019-10-18' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-07-30' AS Date), CAST(N'2019-07-26' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (184, 20, 3, CAST(N'2019-06-15' AS Date), CAST(N'2019-09-15' AS Date), CAST(N'2019-09-13' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-06-25' AS Date), CAST(N'2019-06-21' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (185, 32, 3, CAST(N'2019-03-17' AS Date), CAST(N'2019-06-17' AS Date), CAST(N'2019-06-15' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-03-27' AS Date), CAST(N'2019-03-23' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (186, 20, 3, CAST(N'2019-06-27' AS Date), CAST(N'2019-09-27' AS Date), CAST(N'2019-09-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-07-07' AS Date), CAST(N'2019-07-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (187, 16, 2, CAST(N'2019-12-15' AS Date), CAST(N'2020-03-15' AS Date), CAST(N'2020-03-14' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-12-25' AS Date), CAST(N'2019-12-21' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (188, 2, 2, CAST(N'2019-08-05' AS Date), CAST(N'2019-11-05' AS Date), CAST(N'2019-11-03' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-08-15' AS Date), CAST(N'2019-08-11' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (189, 31, 2, CAST(N'2019-10-07' AS Date), CAST(N'2020-01-07' AS Date), CAST(N'2020-01-05' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-10-17' AS Date), CAST(N'2019-10-13' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (190, 32, 3, CAST(N'2019-06-06' AS Date), CAST(N'2019-09-06' AS Date), CAST(N'2019-09-04' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-06-16' AS Date), CAST(N'2019-06-12' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (191, 3, 1, CAST(N'2019-01-25' AS Date), CAST(N'2019-04-25' AS Date), CAST(N'2019-04-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-02-04' AS Date), CAST(N'2019-01-31' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (192, 29, 2, CAST(N'2019-10-19' AS Date), CAST(N'2020-01-19' AS Date), CAST(N'2020-01-17' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-10-29' AS Date), CAST(N'2019-10-25' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (193, 10, 2, CAST(N'2019-09-24' AS Date), CAST(N'2019-12-24' AS Date), CAST(N'2019-12-23' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-10-04' AS Date), CAST(N'2019-09-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (194, 4, 2, CAST(N'2019-08-20' AS Date), CAST(N'2019-11-20' AS Date), CAST(N'2019-11-18' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-08-30' AS Date), CAST(N'2019-08-26' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (195, 17, 3, CAST(N'2019-01-19' AS Date), CAST(N'2019-04-19' AS Date), CAST(N'2019-05-19' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-01-29' AS Date), CAST(N'2019-01-25' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (196, 26, 3, CAST(N'2019-06-10' AS Date), CAST(N'2019-09-10' AS Date), CAST(N'2019-09-08' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-06-20' AS Date), CAST(N'2019-06-25' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (197, 20, 2, CAST(N'2019-03-24' AS Date), CAST(N'2019-06-24' AS Date), CAST(N'2019-06-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-04-03' AS Date), CAST(N'2019-03-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (198, 10, 3, CAST(N'2019-06-13' AS Date), CAST(N'2019-09-13' AS Date), CAST(N'2019-09-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-06-23' AS Date), CAST(N'2019-06-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (199, 36, 2, CAST(N'2019-08-18' AS Date), CAST(N'2019-11-18' AS Date), CAST(N'2019-11-16' AS Date), CAST(0.00 AS Decimal(18, 2)), 3, CAST(N'2019-08-28' AS Date), CAST(N'2019-08-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (200, 16, 2, CAST(N'2019-07-14' AS Date), CAST(N'2019-10-14' AS Date), CAST(N'2019-10-12' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-07-24' AS Date), CAST(N'2019-07-20' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (201, 40, 1, CAST(N'2019-03-08' AS Date), CAST(N'2019-06-08' AS Date), CAST(N'2019-06-06' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-18' AS Date), CAST(N'2019-03-14' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (202, 21, 2, CAST(N'2019-12-09' AS Date), CAST(N'2020-03-09' AS Date), CAST(N'2020-03-08' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-12-19' AS Date), CAST(N'2019-12-15' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (203, 17, 3, CAST(N'2019-04-14' AS Date), CAST(N'2019-07-14' AS Date), CAST(N'2019-07-13' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-04-24' AS Date), CAST(N'2019-04-20' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (204, 39, 2, CAST(N'2019-09-20' AS Date), CAST(N'2019-12-20' AS Date), CAST(N'2019-12-19' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-09-30' AS Date), CAST(N'2019-09-26' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (205, 35, 2, CAST(N'2019-10-24' AS Date), CAST(N'2020-01-24' AS Date), CAST(N'2020-01-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-11-03' AS Date), CAST(N'2019-10-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (206, 26, 3, CAST(N'2019-03-07' AS Date), CAST(N'2019-06-07' AS Date), CAST(N'2019-06-05' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-03-17' AS Date), CAST(N'2019-03-13' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (207, 29, 2, CAST(N'2019-06-22' AS Date), CAST(N'2019-09-22' AS Date), CAST(N'2019-09-20' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-07-02' AS Date), CAST(N'2019-06-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (208, 12, 3, CAST(N'2019-12-03' AS Date), CAST(N'2020-03-03' AS Date), CAST(N'2020-03-02' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-12-13' AS Date), CAST(N'2019-12-09' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (209, 9, 2, CAST(N'2019-05-08' AS Date), CAST(N'2019-08-08' AS Date), CAST(N'2019-08-06' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-05-18' AS Date), CAST(N'2019-05-14' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (210, 34, 2, CAST(N'2019-10-08' AS Date), CAST(N'2020-01-08' AS Date), CAST(N'2020-01-06' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-10-18' AS Date), CAST(N'2019-10-14' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (211, 40, 2, CAST(N'2019-10-23' AS Date), CAST(N'2020-01-23' AS Date), CAST(N'2020-01-21' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-11-02' AS Date), CAST(N'2019-10-29' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (212, 36, 2, CAST(N'2019-04-12' AS Date), CAST(N'2019-07-12' AS Date), CAST(N'2019-07-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-04-22' AS Date), CAST(N'2019-04-18' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (213, 40, 1, CAST(N'2019-01-07' AS Date), CAST(N'2019-04-07' AS Date), CAST(N'2019-04-07' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-01-17' AS Date), CAST(N'2019-01-13' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (214, 32, 3, CAST(N'2019-07-24' AS Date), CAST(N'2019-10-24' AS Date), CAST(N'2019-10-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-08-03' AS Date), CAST(N'2019-07-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (215, 5, 1, CAST(N'2019-02-22' AS Date), CAST(N'2019-05-22' AS Date), CAST(N'2019-05-23' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-03-04' AS Date), CAST(N'2019-02-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (216, 18, 3, CAST(N'2019-04-23' AS Date), CAST(N'2019-07-23' AS Date), CAST(N'2019-07-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-05-03' AS Date), CAST(N'2019-04-29' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (217, 30, 3, CAST(N'2019-09-01' AS Date), CAST(N'2019-12-01' AS Date), CAST(N'2019-11-30' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-09-11' AS Date), CAST(N'2019-09-07' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (218, 32, 1, CAST(N'2019-02-21' AS Date), CAST(N'2019-05-21' AS Date), CAST(N'2019-05-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-03-03' AS Date), CAST(N'2019-02-27' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (219, 5, 3, CAST(N'2019-05-19' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-17' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-05-29' AS Date), CAST(N'2019-05-25' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (220, 38, 3, CAST(N'2019-01-23' AS Date), CAST(N'2019-04-23' AS Date), CAST(N'2019-04-23' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-02-02' AS Date), CAST(N'2019-01-29' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (221, 37, 3, CAST(N'2019-04-21' AS Date), CAST(N'2019-07-21' AS Date), CAST(N'2019-07-20' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-05-01' AS Date), CAST(N'2019-04-27' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (222, 23, 1, CAST(N'2019-03-16' AS Date), CAST(N'2019-06-16' AS Date), CAST(N'2019-06-14' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-26' AS Date), CAST(N'2019-03-22' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (223, 16, 1, CAST(N'2019-08-07' AS Date), CAST(N'2019-11-07' AS Date), CAST(N'2019-11-05' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-08-17' AS Date), CAST(N'2019-08-13' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (224, 38, 1, CAST(N'2019-04-25' AS Date), CAST(N'2019-07-25' AS Date), CAST(N'2019-07-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-05-05' AS Date), CAST(N'2019-05-01' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (225, 13, 1, CAST(N'2019-07-22' AS Date), CAST(N'2019-10-22' AS Date), CAST(N'2019-10-20' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-08-01' AS Date), CAST(N'2019-07-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (226, 3, 2, CAST(N'2019-01-25' AS Date), CAST(N'2019-04-25' AS Date), CAST(N'2019-04-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-02-04' AS Date), CAST(N'2019-01-31' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (227, 23, 1, CAST(N'2019-05-27' AS Date), CAST(N'2019-08-27' AS Date), CAST(N'2019-08-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-06-06' AS Date), CAST(N'2019-06-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (228, 5, 3, CAST(N'2019-11-11' AS Date), CAST(N'2020-02-11' AS Date), CAST(N'2020-02-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-11-21' AS Date), CAST(N'2019-11-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (229, 5, 1, CAST(N'2019-04-04' AS Date), CAST(N'2019-07-04' AS Date), CAST(N'2019-07-03' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-04-14' AS Date), CAST(N'2019-04-10' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (230, 15, 3, CAST(N'2019-07-11' AS Date), CAST(N'2019-10-11' AS Date), CAST(N'2019-10-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-07-21' AS Date), CAST(N'2019-07-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (231, 38, 2, CAST(N'2019-11-23' AS Date), CAST(N'2020-02-23' AS Date), CAST(N'2020-02-21' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-12-03' AS Date), CAST(N'2019-11-29' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (232, 19, 2, CAST(N'2019-10-13' AS Date), CAST(N'2020-01-13' AS Date), CAST(N'2020-01-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-10-23' AS Date), CAST(N'2019-10-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (233, 7, 3, CAST(N'2019-07-18' AS Date), CAST(N'2019-10-18' AS Date), CAST(N'2019-10-16' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-07-28' AS Date), CAST(N'2019-07-24' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (234, 30, 3, CAST(N'2019-03-18' AS Date), CAST(N'2019-06-18' AS Date), CAST(N'2019-06-16' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-03-28' AS Date), CAST(N'2019-03-24' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (235, 35, 3, CAST(N'2019-02-25' AS Date), CAST(N'2019-05-25' AS Date), CAST(N'2019-05-26' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-03-07' AS Date), CAST(N'2019-03-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (236, 33, 1, CAST(N'2019-06-04' AS Date), CAST(N'2019-09-04' AS Date), CAST(N'2019-09-02' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-06-14' AS Date), CAST(N'2019-06-10' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (237, 33, 1, CAST(N'2019-01-12' AS Date), CAST(N'2019-04-12' AS Date), CAST(N'2019-04-12' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-01-22' AS Date), CAST(N'2019-01-18' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (238, 5, 3, CAST(N'2019-08-14' AS Date), CAST(N'2019-11-14' AS Date), CAST(N'2019-11-12' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-08-24' AS Date), CAST(N'2019-08-20' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (239, 34, 2, CAST(N'2019-09-28' AS Date), CAST(N'2019-12-28' AS Date), CAST(N'2019-12-27' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-10-08' AS Date), CAST(N'2019-10-04' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (240, 22, 1, CAST(N'2019-05-21' AS Date), CAST(N'2019-08-21' AS Date), CAST(N'2019-08-19' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-05-31' AS Date), CAST(N'2019-05-27' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (241, 4, 3, CAST(N'2019-05-24' AS Date), CAST(N'2019-08-24' AS Date), CAST(N'2019-08-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-06-03' AS Date), CAST(N'2019-05-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (242, 40, 2, CAST(N'2019-08-22' AS Date), CAST(N'2019-11-22' AS Date), CAST(N'2019-11-20' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-09-01' AS Date), CAST(N'2019-08-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (243, 36, 1, CAST(N'2019-08-28' AS Date), CAST(N'2019-11-28' AS Date), CAST(N'2019-11-26' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-09-07' AS Date), CAST(N'2019-09-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (244, 16, 3, CAST(N'2019-06-13' AS Date), CAST(N'2019-09-13' AS Date), CAST(N'2019-09-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-06-23' AS Date), CAST(N'2019-06-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (245, 26, 1, CAST(N'2019-11-10' AS Date), CAST(N'2020-02-10' AS Date), CAST(N'2020-02-08' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-11-20' AS Date), CAST(N'2019-11-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (246, 18, 2, CAST(N'2019-04-13' AS Date), CAST(N'2019-07-13' AS Date), CAST(N'2019-07-12' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-04-23' AS Date), CAST(N'2019-04-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (247, 24, 1, CAST(N'2019-11-16' AS Date), CAST(N'2020-02-16' AS Date), CAST(N'2020-02-14' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-11-26' AS Date), CAST(N'2019-11-22' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (248, 32, 3, CAST(N'2019-12-15' AS Date), CAST(N'2020-03-15' AS Date), CAST(N'2020-03-14' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-12-25' AS Date), CAST(N'2019-12-21' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (249, 2, 2, CAST(N'2019-03-27' AS Date), CAST(N'2019-06-27' AS Date), CAST(N'2019-06-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-04-06' AS Date), CAST(N'2019-04-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (250, 15, 3, CAST(N'2019-08-19' AS Date), CAST(N'2019-11-19' AS Date), CAST(N'2019-11-17' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-08-29' AS Date), CAST(N'2019-08-25' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (251, 18, 3, CAST(N'2019-07-22' AS Date), CAST(N'2019-10-22' AS Date), CAST(N'2019-10-20' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-08-01' AS Date), CAST(N'2019-07-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (252, 4, 2, CAST(N'2019-09-09' AS Date), CAST(N'2019-12-09' AS Date), CAST(N'2019-12-08' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-09-19' AS Date), CAST(N'2019-09-15' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (253, 20, 1, CAST(N'2019-08-21' AS Date), CAST(N'2019-11-21' AS Date), CAST(N'2019-11-19' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-08-31' AS Date), CAST(N'2019-08-27' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (254, 17, 1, CAST(N'2019-03-02' AS Date), CAST(N'2019-06-02' AS Date), CAST(N'2019-05-31' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-03-12' AS Date), CAST(N'2019-03-08' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (255, 31, 2, CAST(N'2019-12-11' AS Date), CAST(N'2020-03-11' AS Date), CAST(N'2020-03-10' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-12-21' AS Date), CAST(N'2019-12-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (256, 23, 3, CAST(N'2019-03-17' AS Date), CAST(N'2019-06-17' AS Date), CAST(N'2019-06-15' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-03-27' AS Date), CAST(N'2019-03-23' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (257, 39, 3, CAST(N'2019-12-14' AS Date), CAST(N'2020-03-14' AS Date), CAST(N'2020-03-13' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-12-24' AS Date), CAST(N'2019-12-20' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (258, 38, 1, CAST(N'2019-11-11' AS Date), CAST(N'2020-02-11' AS Date), CAST(N'2020-02-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-11-21' AS Date), CAST(N'2019-11-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (259, 12, 2, CAST(N'2019-04-07' AS Date), CAST(N'2019-07-07' AS Date), CAST(N'2019-07-06' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-04-17' AS Date), CAST(N'2019-04-13' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (260, 1, 3, CAST(N'2019-12-03' AS Date), CAST(N'2020-03-03' AS Date), CAST(N'2020-03-02' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-12-13' AS Date), CAST(N'2019-12-09' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (261, 19, 3, CAST(N'2019-02-22' AS Date), CAST(N'2019-05-22' AS Date), CAST(N'2019-05-23' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-03-04' AS Date), CAST(N'2019-02-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (262, 26, 2, CAST(N'2019-08-14' AS Date), CAST(N'2019-11-14' AS Date), CAST(N'2019-11-12' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-08-24' AS Date), CAST(N'2019-08-20' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (263, 18, 1, CAST(N'2019-01-01' AS Date), CAST(N'2019-04-01' AS Date), CAST(N'2019-04-01' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-01-11' AS Date), CAST(N'2019-01-07' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (264, 21, 3, CAST(N'2019-09-18' AS Date), CAST(N'2019-12-18' AS Date), CAST(N'2019-12-17' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-09-28' AS Date), CAST(N'2019-09-24' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (265, 30, 1, CAST(N'2019-02-10' AS Date), CAST(N'2019-05-10' AS Date), CAST(N'2019-05-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-02-20' AS Date), CAST(N'2019-02-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (266, 19, 1, CAST(N'2019-05-11' AS Date), CAST(N'2019-08-11' AS Date), CAST(N'2019-08-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-05-21' AS Date), CAST(N'2019-05-17' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (267, 12, 2, CAST(N'2019-09-04' AS Date), CAST(N'2019-12-04' AS Date), CAST(N'2019-12-03' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-09-14' AS Date), CAST(N'2019-09-10' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (268, 18, 1, CAST(N'2019-02-02' AS Date), CAST(N'2019-05-02' AS Date), CAST(N'2019-05-03' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-02-12' AS Date), CAST(N'2019-02-08' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (269, 39, 1, CAST(N'2019-05-26' AS Date), CAST(N'2019-08-26' AS Date), CAST(N'2019-08-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-06-05' AS Date), CAST(N'2019-06-01' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (270, 25, 3, CAST(N'2019-05-16' AS Date), CAST(N'2019-08-16' AS Date), CAST(N'2019-08-14' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-05-26' AS Date), CAST(N'2019-05-22' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (271, 15, 1, CAST(N'2019-05-01' AS Date), CAST(N'2019-08-01' AS Date), CAST(N'2019-07-30' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-05-11' AS Date), CAST(N'2019-05-07' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (272, 16, 3, CAST(N'2019-12-10' AS Date), CAST(N'2020-03-10' AS Date), CAST(N'2020-03-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-12-20' AS Date), CAST(N'2019-12-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (273, 37, 1, CAST(N'2019-12-21' AS Date), CAST(N'2020-03-21' AS Date), CAST(N'2020-03-20' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-12-31' AS Date), CAST(N'2019-12-27' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (274, 2, 3, CAST(N'2019-12-24' AS Date), CAST(N'2020-03-24' AS Date), CAST(N'2020-03-23' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2020-01-03' AS Date), CAST(N'2019-12-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (275, 1, 3, CAST(N'2019-03-01' AS Date), CAST(N'2019-06-01' AS Date), CAST(N'2019-05-30' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-03-11' AS Date), CAST(N'2019-03-07' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (276, 36, 1, CAST(N'2019-10-13' AS Date), CAST(N'2020-01-13' AS Date), CAST(N'2020-01-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-10-23' AS Date), CAST(N'2019-10-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (277, 15, 1, CAST(N'2019-10-14' AS Date), CAST(N'2020-01-14' AS Date), CAST(N'2020-01-12' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-10-24' AS Date), CAST(N'2019-10-20' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (278, 6, 3, CAST(N'2019-11-13' AS Date), CAST(N'2020-02-13' AS Date), CAST(N'2020-02-11' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-11-23' AS Date), CAST(N'2019-11-19' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (279, 29, 3, CAST(N'2019-12-28' AS Date), CAST(N'2020-03-28' AS Date), CAST(N'2020-03-27' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2020-01-07' AS Date), CAST(N'2020-01-03' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (280, 8, 3, CAST(N'2019-02-05' AS Date), CAST(N'2019-05-05' AS Date), CAST(N'2019-05-06' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-02-15' AS Date), CAST(N'2019-02-11' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (281, 31, 3, CAST(N'2019-06-18' AS Date), CAST(N'2019-09-18' AS Date), CAST(N'2019-09-16' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-06-28' AS Date), CAST(N'2019-06-24' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (282, 22, 3, CAST(N'2019-10-25' AS Date), CAST(N'2020-01-25' AS Date), CAST(N'2020-01-23' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-11-04' AS Date), CAST(N'2019-10-31' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (283, 16, 2, CAST(N'2019-04-15' AS Date), CAST(N'2019-07-15' AS Date), CAST(N'2019-07-14' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-04-25' AS Date), CAST(N'2019-04-21' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (284, 21, 1, CAST(N'2019-10-07' AS Date), CAST(N'2020-01-07' AS Date), CAST(N'2020-01-05' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-10-17' AS Date), CAST(N'2019-10-13' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (285, 36, 2, CAST(N'2019-10-24' AS Date), CAST(N'2020-01-24' AS Date), CAST(N'2020-01-22' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-11-03' AS Date), CAST(N'2019-10-30' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (286, 6, 2, CAST(N'2019-09-05' AS Date), CAST(N'2019-12-05' AS Date), CAST(N'2019-12-04' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-09-15' AS Date), CAST(N'2019-09-11' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (287, 31, 2, CAST(N'2019-03-27' AS Date), CAST(N'2019-06-27' AS Date), CAST(N'2019-06-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-04-06' AS Date), CAST(N'2019-04-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (288, 39, 3, CAST(N'2019-03-26' AS Date), CAST(N'2019-06-26' AS Date), CAST(N'2019-06-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-04-05' AS Date), CAST(N'2019-04-01' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (289, 8, 1, CAST(N'2019-12-19' AS Date), CAST(N'2020-03-19' AS Date), CAST(N'2020-03-18' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-12-29' AS Date), CAST(N'2019-12-25' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (290, 16, 2, CAST(N'2019-01-01' AS Date), CAST(N'2019-04-01' AS Date), CAST(N'2019-04-01' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-01-11' AS Date), CAST(N'2019-01-07' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (291, 21, 2, CAST(N'2019-08-23' AS Date), CAST(N'2019-11-23' AS Date), CAST(N'2019-11-21' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-09-02' AS Date), CAST(N'2019-08-29' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (292, 5, 2, CAST(N'2019-09-26' AS Date), CAST(N'2019-12-26' AS Date), CAST(N'2019-12-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-10-06' AS Date), CAST(N'2019-10-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (293, 12, 2, CAST(N'2019-09-10' AS Date), CAST(N'2019-12-10' AS Date), CAST(N'2019-12-09' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-09-20' AS Date), CAST(N'2019-09-16' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (294, 40, 3, CAST(N'2019-05-25' AS Date), CAST(N'2019-08-25' AS Date), CAST(N'2019-08-23' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-06-04' AS Date), CAST(N'2019-05-31' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (295, 14, 1, CAST(N'2019-03-22' AS Date), CAST(N'2019-06-22' AS Date), CAST(N'2019-06-20' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-04-01' AS Date), CAST(N'2019-03-28' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (296, 26, 1, CAST(N'2019-09-25' AS Date), CAST(N'2019-12-25' AS Date), CAST(N'2019-12-24' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-10-05' AS Date), CAST(N'2019-10-01' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (297, 31, 2, CAST(N'2019-06-05' AS Date), CAST(N'2019-09-05' AS Date), CAST(N'2019-09-03' AS Date), CAST(1.00 AS Decimal(18, 2)), 3, CAST(N'2019-06-15' AS Date), CAST(N'2019-06-11' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (298, 29, 2, CAST(N'2019-08-19' AS Date), CAST(N'2019-11-19' AS Date), CAST(N'2019-11-17' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-08-29' AS Date), CAST(N'2019-08-25' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (299, 9, 1, CAST(N'2019-08-27' AS Date), CAST(N'2019-11-27' AS Date), CAST(N'2019-11-25' AS Date), CAST(1.00 AS Decimal(18, 2)), 1, CAST(N'2019-09-06' AS Date), CAST(N'2019-09-02' AS Date))
GO
INSERT INTO dbo.Invoices (InvoiceId, CustomerId, ProviderId, DateInvoice, RequestedDatePayment, DatePayment, Shipment, ShipperId, RequestedArrivalDate, ArrivalDate) VALUES (300, 26, 1, CAST(N'2019-05-01' AS Date), CAST(N'2019-08-01' AS Date), CAST(N'2019-07-30' AS Date), CAST(1.00 AS Decimal(18, 2)), 2, CAST(N'2019-05-11' AS Date), CAST(N'2019-05-07' AS Date))
GO
SET IDENTITY_INSERT dbo.Invoices OFF
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (1, 4, CAST(28.80 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (1, 13, CAST(38.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (2, 1, CAST(7.30 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (2, 3, CAST(14.40 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (2, 9, CAST(12.00 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (2, 10, CAST(7.00 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (2, 29, CAST(4.50 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (3, 1, CAST(23.25 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (3, 13, CAST(39.00 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (3, 22, CAST(36.40 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (4, 2, CAST(27.80 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (4, 7, CAST(18.00 AS Decimal(18, 2)), 29)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (4, 11, CAST(44.00 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (5, 4, CAST(9.65 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (5, 20, CAST(53.00 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (5, 22, CAST(49.30 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (6, 3, CAST(6.20 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (6, 7, CAST(30.40 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (6, 26, CAST(31.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (7, 3, CAST(81.00 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (7, 5, CAST(25.89 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (7, 24, CAST(10.00 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (8, 3, CAST(32.80 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (8, 15, CAST(11.20 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (8, 23, CAST(6.00 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (9, 29, CAST(15.00 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (10, 14, CAST(6.00 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (10, 17, CAST(53.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (10, 18, CAST(27.80 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (11, 8, CAST(33.25 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (11, 11, CAST(7.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (11, 18, CAST(20.70 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (12, 3, CAST(12.50 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (12, 6, CAST(10.00 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (12, 23, CAST(7.00 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (12, 24, CAST(31.23 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (13, 2, CAST(28.50 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (14, 6, CAST(123.79 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (14, 26, CAST(210.80 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (15, 2, CAST(18.00 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (15, 5, CAST(39.00 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (15, 28, CAST(12.00 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (16, 22, CAST(2.50 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (16, 25, CAST(43.90 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (17, 10, CAST(24.00 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (17, 14, CAST(31.23 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (17, 19, CAST(12.50 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (17, 30, CAST(4.50 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (18, 5, CAST(9.00 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (18, 7, CAST(4.80 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (18, 11, CAST(21.50 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (18, 27, CAST(7.45 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (18, 30, CAST(16.00 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (19, 2, CAST(13.00 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (19, 4, CAST(10.00 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (20, 9, CAST(7.75 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (20, 12, CAST(27.80 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (20, 28, CAST(19.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (21, 1, CAST(9.50 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (21, 9, CAST(9.65 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (21, 11, CAST(24.00 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (21, 18, CAST(10.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (21, 22, CAST(10.40 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (21, 27, CAST(7.00 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (22, 11, CAST(19.00 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (22, 14, CAST(25.89 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (22, 19, CAST(38.00 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (23, 6, CAST(13.00 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (23, 25, CAST(16.80 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (23, 27, CAST(12.40 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (24, 8, CAST(27.80 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (24, 19, CAST(4.80 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (25, 6, CAST(14.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (25, 10, CAST(8.00 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (25, 30, CAST(15.00 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (26, 10, CAST(28.50 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (26, 16, CAST(45.60 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (27, 16, CAST(25.89 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (27, 24, CAST(22.80 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (28, 3, CAST(14.00 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (28, 24, CAST(9.50 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (29, 6, CAST(39.40 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (29, 22, CAST(23.25 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (30, 5, CAST(21.50 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (30, 22, CAST(6.00 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (31, 20, CAST(46.00 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (31, 25, CAST(20.00 AS Decimal(18, 2)), 19)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (31, 30, CAST(15.00 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (32, 8, CAST(11.20 AS Decimal(18, 2)), 19)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (32, 11, CAST(14.00 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (34, 1, CAST(16.80 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (34, 2, CAST(18.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (34, 20, CAST(8.00 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (34, 29, CAST(19.00 AS Decimal(18, 2)), 19)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (35, 1, CAST(20.00 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (35, 4, CAST(14.40 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (35, 5, CAST(31.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (35, 25, CAST(14.70 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (36, 7, CAST(38.00 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (36, 12, CAST(18.00 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (36, 16, CAST(13.00 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (36, 19, CAST(12.50 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (36, 29, CAST(9.80 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (37, 14, CAST(12.00 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (38, 18, CAST(23.25 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (39, 9, CAST(17.60 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (39, 11, CAST(49.30 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (40, 29, CAST(7.70 AS Decimal(18, 2)), 21)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (40, 30, CAST(17.60 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (41, 2, CAST(18.00 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (41, 13, CAST(26.20 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (41, 16, CAST(7.00 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (41, 28, CAST(15.60 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (42, 3, CAST(17.60 AS Decimal(18, 2)), 29)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (42, 11, CAST(9.20 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (42, 13, CAST(14.00 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (42, 16, CAST(7.30 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (43, 4, CAST(50.00 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (43, 6, CAST(62.50 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (43, 23, CAST(14.40 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (43, 29, CAST(19.45 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (44, 16, CAST(21.50 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (44, 29, CAST(12.50 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (45, 3, CAST(10.00 AS Decimal(18, 2)), 19)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (45, 20, CAST(14.40 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (45, 26, CAST(31.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (45, 27, CAST(19.00 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (46, 4, CAST(263.50 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (46, 6, CAST(2.50 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (46, 10, CAST(123.79 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (47, 7, CAST(17.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (47, 9, CAST(7.75 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (47, 12, CAST(13.25 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (47, 19, CAST(18.00 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (47, 30, CAST(43.90 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (48, 6, CAST(19.45 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (48, 7, CAST(8.00 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (48, 16, CAST(9.65 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (49, 13, CAST(18.00 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (49, 19, CAST(21.05 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (49, 24, CAST(15.20 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (49, 26, CAST(21.05 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (50, 9, CAST(4.80 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (50, 14, CAST(22.00 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (51, 1, CAST(28.50 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (51, 2, CAST(14.00 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (51, 15, CAST(34.80 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (51, 18, CAST(18.00 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (51, 25, CAST(10.00 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (53, 16, CAST(34.00 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (53, 26, CAST(4.50 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (55, 5, CAST(20.00 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (55, 8, CAST(9.50 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (55, 18, CAST(8.00 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (55, 20, CAST(13.00 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (55, 22, CAST(16.25 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (55, 25, CAST(5.90 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (55, 28, CAST(26.20 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (56, 6, CAST(33.25 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (56, 21, CAST(16.00 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (57, 12, CAST(18.00 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (57, 18, CAST(7.45 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (57, 29, CAST(9.50 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (58, 1, CAST(19.45 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (59, 1, CAST(7.75 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (59, 27, CAST(55.00 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (60, 6, CAST(2.50 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (60, 15, CAST(22.00 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (60, 30, CAST(45.60 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (61, 8, CAST(62.50 AS Decimal(18, 2)), 29)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (61, 10, CAST(49.30 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (61, 11, CAST(6.00 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (61, 13, CAST(35.10 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (61, 17, CAST(38.00 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (62, 9, CAST(210.80 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (62, 23, CAST(49.30 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (62, 26, CAST(17.20 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (63, 25, CAST(38.00 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (64, 1, CAST(9.20 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (64, 4, CAST(7.75 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (64, 6, CAST(5.60 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (64, 12, CAST(5.60 AS Decimal(18, 2)), 19)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (64, 19, CAST(9.20 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (64, 28, CAST(39.00 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (65, 3, CAST(18.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (65, 5, CAST(3.60 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (65, 9, CAST(18.40 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (66, 8, CAST(2.00 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (67, 15, CAST(4.50 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (68, 8, CAST(19.00 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (68, 14, CAST(14.40 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (69, 14, CAST(8.00 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (69, 23, CAST(2.50 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (69, 27, CAST(10.00 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (70, 21, CAST(23.25 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (70, 24, CAST(10.00 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (70, 30, CAST(16.00 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (71, 10, CAST(7.75 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (71, 23, CAST(13.00 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (72, 1, CAST(16.80 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (72, 2, CAST(40.00 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (72, 9, CAST(7.45 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (72, 15, CAST(43.90 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (72, 17, CAST(15.00 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (72, 27, CAST(13.00 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (72, 29, CAST(15.00 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (72, 30, CAST(10.40 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (73, 14, CAST(14.00 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (73, 15, CAST(99.00 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (73, 17, CAST(14.40 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (73, 29, CAST(7.70 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (74, 6, CAST(39.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (74, 20, CAST(22.80 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (74, 21, CAST(38.00 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (75, 19, CAST(11.20 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (75, 22, CAST(24.80 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (76, 1, CAST(21.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (76, 14, CAST(2.50 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (76, 19, CAST(6.00 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (76, 30, CAST(25.89 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (77, 13, CAST(23.25 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (77, 19, CAST(26.60 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (78, 11, CAST(12.00 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (78, 19, CAST(12.50 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (78, 23, CAST(12.50 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (78, 26, CAST(6.00 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (79, 1, CAST(17.45 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (79, 11, CAST(8.00 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (79, 15, CAST(7.75 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (79, 21, CAST(20.80 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (79, 24, CAST(15.00 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (80, 3, CAST(14.00 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (80, 5, CAST(5.90 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (80, 13, CAST(15.50 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (80, 16, CAST(62.50 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (81, 9, CAST(22.00 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (81, 10, CAST(9.65 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (81, 15, CAST(12.50 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (81, 16, CAST(11.20 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (81, 21, CAST(26.20 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (81, 25, CAST(10.00 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (82, 4, CAST(36.80 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (82, 8, CAST(7.75 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (82, 9, CAST(10.40 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (82, 18, CAST(4.50 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (83, 6, CAST(33.25 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (83, 21, CAST(39.00 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (84, 5, CAST(6.20 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (84, 6, CAST(49.30 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (84, 9, CAST(7.30 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (85, 3, CAST(44.00 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (85, 4, CAST(9.50 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (85, 7, CAST(20.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (85, 25, CAST(32.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (85, 27, CAST(9.60 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (86, 5, CAST(33.25 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (86, 11, CAST(36.00 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (86, 15, CAST(10.00 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (86, 16, CAST(263.50 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (87, 9, CAST(14.00 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (87, 11, CAST(8.00 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (88, 4, CAST(55.00 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (88, 5, CAST(7.70 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (88, 24, CAST(20.00 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (89, 4, CAST(2.50 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (89, 13, CAST(123.79 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (90, 14, CAST(8.00 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (90, 22, CAST(9.50 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (90, 25, CAST(44.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (91, 2, CAST(62.50 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (92, 3, CAST(5.60 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (92, 24, CAST(7.75 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (93, 29, CAST(25.89 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (94, 14, CAST(36.00 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (94, 25, CAST(50.00 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (94, 29, CAST(31.00 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (95, 23, CAST(9.60 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (96, 1, CAST(18.00 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (96, 27, CAST(14.00 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (96, 29, CAST(12.00 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (97, 10, CAST(14.40 AS Decimal(18, 2)), 21)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (97, 20, CAST(2.00 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (98, 17, CAST(32.00 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (98, 25, CAST(18.60 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (98, 27, CAST(36.00 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (99, 1, CAST(13.60 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (99, 7, CAST(46.00 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (99, 10, CAST(9.65 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (99, 12, CAST(19.50 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (99, 18, CAST(2.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (99, 19, CAST(9.20 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (100, 19, CAST(2.50 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (101, 13, CAST(32.80 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (101, 18, CAST(32.80 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (101, 26, CAST(62.50 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (101, 29, CAST(263.50 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (102, 8, CAST(19.00 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (102, 24, CAST(39.00 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (103, 3, CAST(7.75 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (104, 3, CAST(28.50 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (104, 4, CAST(12.75 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (104, 13, CAST(16.80 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (104, 24, CAST(6.00 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (104, 26, CAST(10.00 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (104, 28, CAST(12.00 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (104, 29, CAST(18.00 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (105, 22, CAST(53.00 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (105, 23, CAST(33.25 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (106, 20, CAST(12.00 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (107, 26, CAST(9.50 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (108, 13, CAST(263.50 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (108, 16, CAST(39.40 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (108, 29, CAST(13.00 AS Decimal(18, 2)), 45)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (109, 12, CAST(14.40 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (109, 22, CAST(36.40 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (109, 28, CAST(7.45 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (110, 18, CAST(28.80 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (110, 21, CAST(18.00 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (111, 2, CAST(18.00 AS Decimal(18, 2)), 29)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (111, 3, CAST(15.00 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (111, 11, CAST(9.20 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (111, 29, CAST(24.00 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (112, 19, CAST(12.00 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (113, 3, CAST(14.40 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (113, 25, CAST(7.00 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (114, 7, CAST(18.00 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (114, 14, CAST(34.80 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (114, 21, CAST(19.00 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (115, 4, CAST(9.60 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (115, 12, CAST(46.00 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (115, 13, CAST(40.00 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (116, 2, CAST(26.60 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (116, 27, CAST(17.20 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (117, 3, CAST(24.00 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (117, 9, CAST(7.30 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (117, 17, CAST(49.30 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (117, 26, CAST(4.50 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (118, 5, CAST(53.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (118, 21, CAST(6.20 AS Decimal(18, 2)), 45)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (119, 9, CAST(17.45 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (119, 20, CAST(10.40 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (120, 27, CAST(263.50 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (120, 28, CAST(15.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (121, 2, CAST(7.00 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (121, 14, CAST(14.00 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (122, 7, CAST(13.00 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (122, 17, CAST(8.00 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (122, 30, CAST(7.45 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (123, 2, CAST(55.00 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (123, 7, CAST(33.25 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (123, 11, CAST(31.00 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (123, 12, CAST(49.30 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (123, 22, CAST(4.50 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (124, 12, CAST(30.40 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (124, 15, CAST(123.79 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (124, 25, CAST(15.60 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (124, 27, CAST(26.60 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (125, 16, CAST(22.00 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (125, 25, CAST(53.00 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (125, 27, CAST(12.50 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (126, 3, CAST(10.00 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (126, 15, CAST(46.00 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (126, 21, CAST(55.00 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (127, 23, CAST(55.00 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (127, 24, CAST(10.00 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (128, 23, CAST(19.45 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (129, 3, CAST(21.00 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (129, 16, CAST(10.00 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (129, 17, CAST(42.40 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (130, 5, CAST(15.00 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (131, 15, CAST(24.90 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (131, 25, CAST(32.00 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (131, 28, CAST(31.23 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (132, 2, CAST(18.00 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (132, 25, CAST(19.00 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (133, 3, CAST(6.00 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (133, 18, CAST(21.00 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (133, 29, CAST(81.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (134, 30, CAST(64.80 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (135, 9, CAST(30.00 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (135, 13, CAST(17.20 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (135, 17, CAST(21.50 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (135, 20, CAST(15.00 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (136, 20, CAST(28.50 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (137, 10, CAST(38.00 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (137, 15, CAST(4.50 AS Decimal(18, 2)), 19)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (137, 29, CAST(21.05 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (138, 16, CAST(30.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (138, 24, CAST(9.65 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (138, 25, CAST(7.75 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (138, 29, CAST(19.20 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (139, 6, CAST(21.35 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (139, 8, CAST(28.50 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (139, 14, CAST(9.50 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (139, 21, CAST(14.00 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (139, 27, CAST(31.23 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (140, 20, CAST(18.40 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (140, 23, CAST(123.79 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (140, 30, CAST(11.20 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (141, 2, CAST(16.80 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (141, 8, CAST(32.00 AS Decimal(18, 2)), 19)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (141, 13, CAST(18.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (141, 16, CAST(31.00 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (141, 21, CAST(6.00 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (141, 27, CAST(30.00 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (141, 28, CAST(49.30 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (142, 3, CAST(4.50 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (142, 24, CAST(18.00 AS Decimal(18, 2)), 29)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (143, 19, CAST(8.00 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (143, 30, CAST(19.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (144, 1, CAST(53.00 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (144, 2, CAST(62.50 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (144, 7, CAST(4.50 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (144, 8, CAST(49.30 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (144, 10, CAST(4.50 AS Decimal(18, 2)), 45)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (144, 26, CAST(2.50 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (145, 6, CAST(31.00 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (145, 10, CAST(8.00 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (145, 13, CAST(9.65 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (145, 23, CAST(10.00 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (146, 12, CAST(15.00 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (146, 13, CAST(10.40 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (146, 27, CAST(5.90 AS Decimal(18, 2)), 45)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (147, 4, CAST(53.00 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (147, 5, CAST(19.50 AS Decimal(18, 2)), 21)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (147, 9, CAST(9.50 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (147, 16, CAST(4.80 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (147, 23, CAST(9.20 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (147, 27, CAST(10.00 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (148, 1, CAST(14.40 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (148, 2, CAST(21.35 AS Decimal(18, 2)), 19)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (148, 6, CAST(35.10 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (148, 17, CAST(12.00 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (148, 18, CAST(18.00 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (148, 23, CAST(24.90 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (148, 28, CAST(13.00 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (149, 22, CAST(97.00 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (149, 29, CAST(12.00 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (149, 30, CAST(34.80 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (150, 11, CAST(38.00 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (150, 16, CAST(18.40 AS Decimal(18, 2)), 29)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (152, 6, CAST(28.50 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (152, 10, CAST(28.50 AS Decimal(18, 2)), 29)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (152, 18, CAST(25.00 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (152, 20, CAST(62.50 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (152, 22, CAST(55.00 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (153, 3, CAST(49.30 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (153, 10, CAST(81.00 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (153, 15, CAST(39.00 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (153, 26, CAST(12.50 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (153, 29, CAST(11.20 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (153, 30, CAST(43.90 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (154, 13, CAST(18.00 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (154, 20, CAST(39.00 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (154, 21, CAST(9.65 AS Decimal(18, 2)), 21)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (155, 1, CAST(13.25 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (155, 10, CAST(27.20 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (155, 13, CAST(39.40 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (155, 28, CAST(36.00 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (156, 13, CAST(31.23 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (156, 14, CAST(36.00 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (156, 16, CAST(25.89 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (156, 24, CAST(99.00 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (156, 28, CAST(21.00 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (157, 20, CAST(12.50 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (157, 30, CAST(27.20 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (158, 8, CAST(18.60 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (158, 10, CAST(210.80 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (158, 11, CAST(14.40 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (158, 21, CAST(14.00 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (158, 23, CAST(6.00 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (159, 15, CAST(35.10 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (159, 22, CAST(17.45 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (159, 27, CAST(12.00 AS Decimal(18, 2)), 45)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (160, 2, CAST(18.00 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (160, 23, CAST(36.00 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (161, 1, CAST(7.75 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (161, 4, CAST(2.50 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (161, 6, CAST(26.60 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (161, 21, CAST(10.40 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (162, 4, CAST(32.80 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (162, 12, CAST(16.00 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (162, 21, CAST(18.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (163, 2, CAST(27.80 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (163, 23, CAST(7.00 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (164, 2, CAST(62.50 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (164, 8, CAST(31.00 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (164, 11, CAST(30.00 AS Decimal(18, 2)), 29)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (164, 28, CAST(10.00 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (165, 18, CAST(6.20 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (165, 21, CAST(4.50 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (165, 24, CAST(13.25 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (165, 25, CAST(2.50 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (165, 27, CAST(19.45 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (165, 30, CAST(25.89 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (166, 10, CAST(30.40 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (166, 15, CAST(18.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (166, 21, CAST(24.00 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (166, 23, CAST(123.79 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (166, 27, CAST(25.00 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (167, 17, CAST(23.25 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (167, 18, CAST(9.50 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (167, 23, CAST(123.79 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (167, 26, CAST(7.45 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (167, 30, CAST(49.30 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (168, 4, CAST(30.00 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (168, 7, CAST(18.00 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (168, 11, CAST(38.00 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (168, 30, CAST(21.50 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (169, 12, CAST(14.70 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (169, 23, CAST(20.80 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (169, 26, CAST(38.00 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (170, 17, CAST(10.00 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (170, 19, CAST(26.20 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (171, 8, CAST(10.20 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (171, 14, CAST(30.00 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (172, 1, CAST(10.40 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (173, 8, CAST(17.45 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (173, 15, CAST(13.25 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (173, 17, CAST(30.00 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (173, 19, CAST(21.50 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (173, 29, CAST(9.50 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (174, 13, CAST(34.00 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (174, 15, CAST(27.20 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (175, 1, CAST(8.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (175, 2, CAST(4.50 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (175, 4, CAST(17.20 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (175, 9, CAST(210.80 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (175, 17, CAST(49.30 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (175, 25, CAST(30.00 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (176, 5, CAST(31.00 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (176, 20, CAST(24.90 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (176, 24, CAST(53.00 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (177, 16, CAST(36.00 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (177, 22, CAST(53.00 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (177, 24, CAST(15.00 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (177, 25, CAST(17.00 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (177, 27, CAST(43.90 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (178, 2, CAST(10.00 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (178, 11, CAST(18.00 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (178, 26, CAST(18.60 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (179, 6, CAST(53.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (179, 21, CAST(15.20 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (179, 26, CAST(34.00 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (180, 20, CAST(21.05 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (181, 6, CAST(30.00 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (181, 9, CAST(97.00 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (181, 10, CAST(32.00 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (181, 11, CAST(31.20 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (181, 13, CAST(32.80 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (181, 17, CAST(34.80 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (181, 24, CAST(38.00 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (181, 30, CAST(9.00 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (182, 1, CAST(14.00 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (182, 23, CAST(62.50 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (183, 16, CAST(17.45 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (183, 29, CAST(26.60 AS Decimal(18, 2)), 29)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (183, 30, CAST(25.00 AS Decimal(18, 2)), 19)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (184, 3, CAST(53.00 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (184, 21, CAST(25.89 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (185, 8, CAST(21.00 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (185, 21, CAST(30.40 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (185, 25, CAST(38.00 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (186, 5, CAST(14.40 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (186, 16, CAST(16.80 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (186, 19, CAST(4.80 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (186, 29, CAST(7.45 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (188, 8, CAST(5.90 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (188, 22, CAST(53.00 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (189, 9, CAST(22.00 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (189, 21, CAST(12.40 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (189, 27, CAST(7.45 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (190, 27, CAST(11.20 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (191, 3, CAST(11.20 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (191, 16, CAST(7.45 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (191, 18, CAST(14.40 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (191, 28, CAST(39.40 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (192, 24, CAST(9.20 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (193, 12, CAST(9.65 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (193, 17, CAST(18.00 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (193, 28, CAST(34.80 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (193, 30, CAST(19.20 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (194, 2, CAST(7.75 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (194, 17, CAST(3.60 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (194, 20, CAST(45.60 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (194, 23, CAST(36.40 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (196, 2, CAST(10.00 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (196, 17, CAST(39.40 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (197, 19, CAST(12.50 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (197, 26, CAST(10.00 AS Decimal(18, 2)), 21)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (197, 27, CAST(34.80 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (197, 29, CAST(7.30 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (198, 3, CAST(10.40 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (198, 5, CAST(39.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (198, 29, CAST(11.20 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (200, 11, CAST(7.45 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (200, 27, CAST(19.00 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (201, 10, CAST(17.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (201, 18, CAST(9.65 AS Decimal(18, 2)), 29)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (201, 19, CAST(62.50 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (201, 27, CAST(7.75 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (202, 1, CAST(46.00 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (202, 7, CAST(32.80 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (202, 8, CAST(20.00 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (202, 12, CAST(25.00 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (202, 14, CAST(18.00 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (203, 5, CAST(49.30 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (203, 8, CAST(26.60 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (203, 10, CAST(21.50 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (203, 27, CAST(19.50 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (204, 1, CAST(14.00 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (204, 9, CAST(18.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (204, 11, CAST(19.00 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (204, 12, CAST(34.00 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (204, 24, CAST(7.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (204, 28, CAST(19.00 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (205, 15, CAST(17.45 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (206, 2, CAST(44.00 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (206, 16, CAST(9.00 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (207, 5, CAST(9.50 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (207, 11, CAST(18.40 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (207, 20, CAST(34.80 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (208, 6, CAST(13.90 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (209, 8, CAST(17.45 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (209, 11, CAST(19.50 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (209, 23, CAST(36.00 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (209, 24, CAST(17.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (210, 3, CAST(35.10 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (210, 6, CAST(30.40 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (210, 12, CAST(19.00 AS Decimal(18, 2)), 21)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (210, 21, CAST(15.50 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (210, 26, CAST(7.30 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (210, 28, CAST(34.00 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (211, 6, CAST(25.60 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (212, 2, CAST(38.00 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (212, 3, CAST(36.80 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (212, 5, CAST(17.00 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (212, 7, CAST(7.75 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (212, 11, CAST(18.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (212, 24, CAST(24.00 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (213, 23, CAST(33.25 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (214, 6, CAST(36.40 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (214, 12, CAST(18.00 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (214, 15, CAST(3.60 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (214, 16, CAST(2.50 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (214, 17, CAST(39.00 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (214, 19, CAST(13.00 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (214, 28, CAST(18.40 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (214, 30, CAST(18.60 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (215, 2, CAST(2.50 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (215, 18, CAST(13.00 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (215, 20, CAST(14.00 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (215, 21, CAST(4.50 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (216, 8, CAST(21.00 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (216, 17, CAST(12.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (216, 20, CAST(55.00 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (216, 26, CAST(4.50 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (218, 13, CAST(43.90 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (218, 21, CAST(36.40 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (219, 6, CAST(15.50 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (219, 14, CAST(12.50 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (219, 18, CAST(19.00 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (220, 18, CAST(19.00 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (220, 21, CAST(81.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (221, 7, CAST(19.50 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (221, 14, CAST(10.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (221, 24, CAST(19.00 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (222, 16, CAST(22.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (222, 21, CAST(20.70 AS Decimal(18, 2)), 45)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (222, 24, CAST(9.65 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (222, 27, CAST(9.20 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (223, 4, CAST(30.00 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (223, 10, CAST(34.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (223, 13, CAST(12.50 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (223, 21, CAST(16.80 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (225, 6, CAST(4.50 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (225, 10, CAST(18.00 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (225, 16, CAST(26.00 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (225, 29, CAST(21.00 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (226, 17, CAST(55.00 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (226, 27, CAST(53.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (227, 5, CAST(18.00 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (227, 12, CAST(15.20 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (227, 18, CAST(38.00 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (227, 20, CAST(9.65 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (227, 22, CAST(19.50 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (228, 19, CAST(45.60 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (229, 2, CAST(10.00 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (229, 8, CAST(36.80 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (229, 9, CAST(21.50 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (229, 21, CAST(21.00 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (229, 27, CAST(5.90 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (229, 28, CAST(19.00 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (230, 8, CAST(10.60 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (230, 20, CAST(18.40 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (230, 29, CAST(24.00 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (231, 9, CAST(38.00 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (231, 10, CAST(6.00 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (231, 12, CAST(10.00 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (231, 15, CAST(50.00 AS Decimal(18, 2)), 45)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (231, 18, CAST(21.50 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (231, 19, CAST(2.50 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (232, 20, CAST(33.25 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (232, 22, CAST(13.00 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (232, 26, CAST(49.30 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (233, 1, CAST(15.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (233, 6, CAST(7.70 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (233, 7, CAST(7.30 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (234, 4, CAST(28.80 AS Decimal(18, 2)), 45)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (235, 1, CAST(24.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (235, 2, CAST(15.20 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (235, 7, CAST(17.45 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (236, 6, CAST(16.80 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (236, 17, CAST(43.90 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (236, 27, CAST(62.50 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (236, 30, CAST(14.00 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (237, 2, CAST(18.00 AS Decimal(18, 2)), 21)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (237, 6, CAST(20.70 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (237, 22, CAST(33.25 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (237, 28, CAST(46.00 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (238, 2, CAST(7.75 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (238, 13, CAST(14.00 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (239, 24, CAST(24.90 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (241, 3, CAST(15.20 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (241, 18, CAST(11.20 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (241, 22, CAST(14.00 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (242, 17, CAST(7.45 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (242, 20, CAST(22.00 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (243, 14, CAST(4.50 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (243, 25, CAST(18.00 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (244, 5, CAST(21.00 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (244, 7, CAST(18.60 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (244, 28, CAST(15.00 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (245, 4, CAST(263.50 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (245, 10, CAST(18.00 AS Decimal(18, 2)), 30)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (245, 13, CAST(21.05 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (245, 16, CAST(14.00 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (245, 22, CAST(27.80 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (245, 28, CAST(17.45 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (246, 6, CAST(14.00 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (246, 15, CAST(9.20 AS Decimal(18, 2)), 37)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (246, 19, CAST(9.50 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (246, 26, CAST(12.00 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (246, 29, CAST(18.00 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (246, 30, CAST(27.20 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (247, 1, CAST(43.90 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (247, 8, CAST(15.00 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (247, 9, CAST(18.00 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (247, 10, CAST(62.50 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (247, 12, CAST(36.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (248, 8, CAST(12.50 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (248, 10, CAST(17.45 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (248, 16, CAST(14.70 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (248, 17, CAST(21.05 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (248, 30, CAST(10.60 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (249, 21, CAST(9.50 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (249, 25, CAST(10.00 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (250, 6, CAST(19.00 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (250, 10, CAST(10.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (250, 15, CAST(46.00 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (251, 3, CAST(21.05 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (251, 7, CAST(39.00 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (251, 14, CAST(11.20 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (251, 16, CAST(34.00 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (252, 4, CAST(13.00 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (252, 28, CAST(2.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (253, 27, CAST(12.50 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (254, 20, CAST(53.00 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (255, 2, CAST(18.00 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (255, 10, CAST(21.50 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (255, 11, CAST(18.40 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (255, 15, CAST(28.50 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (256, 20, CAST(17.00 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (257, 5, CAST(14.70 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (257, 11, CAST(45.60 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (257, 23, CAST(21.00 AS Decimal(18, 2)), 23)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (257, 25, CAST(18.00 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (257, 26, CAST(18.40 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (258, 15, CAST(19.00 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (258, 27, CAST(18.00 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (259, 6, CAST(21.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (259, 16, CAST(19.20 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (259, 23, CAST(43.90 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (259, 25, CAST(44.00 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (259, 28, CAST(30.00 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (259, 30, CAST(97.00 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (261, 5, CAST(25.89 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (261, 6, CAST(15.50 AS Decimal(18, 2)), 45)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (261, 25, CAST(15.00 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (262, 11, CAST(32.80 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (262, 16, CAST(39.00 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (263, 1, CAST(28.80 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (263, 4, CAST(55.00 AS Decimal(18, 2)), 7)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (263, 15, CAST(26.20 AS Decimal(18, 2)), 29)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (263, 28, CAST(9.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (264, 1, CAST(14.00 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (264, 2, CAST(28.80 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (264, 5, CAST(24.90 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (264, 9, CAST(6.00 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (265, 11, CAST(31.23 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (265, 13, CAST(26.60 AS Decimal(18, 2)), 50)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (265, 14, CAST(19.00 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (265, 28, CAST(27.20 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (266, 6, CAST(7.20 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (266, 9, CAST(28.50 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (266, 14, CAST(15.60 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (266, 18, CAST(42.40 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (266, 22, CAST(19.00 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (267, 2, CAST(5.90 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (267, 17, CAST(24.00 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (267, 24, CAST(13.60 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (268, 2, CAST(6.20 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (268, 12, CAST(263.50 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (269, 30, CAST(12.50 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (270, 2, CAST(19.45 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (270, 13, CAST(15.50 AS Decimal(18, 2)), 45)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (270, 29, CAST(34.00 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (273, 26, CAST(12.50 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (274, 1, CAST(14.40 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (274, 3, CAST(45.60 AS Decimal(18, 2)), 46)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (274, 5, CAST(30.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (274, 19, CAST(19.20 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (274, 22, CAST(21.00 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (275, 7, CAST(19.00 AS Decimal(18, 2)), 32)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (275, 10, CAST(10.00 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (275, 14, CAST(55.00 AS Decimal(18, 2)), 8)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (276, 5, CAST(13.25 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (276, 7, CAST(9.50 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (276, 12, CAST(24.00 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (276, 19, CAST(12.50 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (277, 9, CAST(21.00 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (277, 14, CAST(12.75 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (277, 20, CAST(26.60 AS Decimal(18, 2)), 35)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (277, 21, CAST(7.60 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (278, 5, CAST(14.40 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (278, 10, CAST(43.90 AS Decimal(18, 2)), 33)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (278, 27, CAST(18.00 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (278, 29, CAST(24.80 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (279, 4, CAST(263.50 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (279, 9, CAST(25.00 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (279, 11, CAST(18.60 AS Decimal(18, 2)), 1)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (279, 13, CAST(31.00 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (279, 18, CAST(11.20 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (279, 24, CAST(21.05 AS Decimal(18, 2)), 16)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (279, 30, CAST(10.00 AS Decimal(18, 2)), 36)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (280, 3, CAST(31.00 AS Decimal(18, 2)), 42)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (280, 17, CAST(16.80 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (280, 22, CAST(9.00 AS Decimal(18, 2)), 11)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (280, 26, CAST(38.00 AS Decimal(18, 2)), 3)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (281, 21, CAST(10.00 AS Decimal(18, 2)), 12)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (281, 28, CAST(18.00 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (282, 2, CAST(49.30 AS Decimal(18, 2)), 38)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (282, 17, CAST(62.50 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (282, 22, CAST(32.80 AS Decimal(18, 2)), 27)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (283, 4, CAST(21.00 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (283, 14, CAST(46.00 AS Decimal(18, 2)), 41)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (283, 17, CAST(21.00 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (283, 27, CAST(12.50 AS Decimal(18, 2)), 19)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (284, 1, CAST(6.00 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (284, 4, CAST(27.20 AS Decimal(18, 2)), 28)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (284, 7, CAST(18.00 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (284, 13, CAST(18.00 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (284, 18, CAST(9.65 AS Decimal(18, 2)), 47)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (284, 23, CAST(8.00 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (285, 16, CAST(30.40 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (286, 12, CAST(81.00 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (287, 1, CAST(18.00 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (287, 16, CAST(23.25 AS Decimal(18, 2)), 18)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (288, 6, CAST(14.40 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (288, 22, CAST(7.00 AS Decimal(18, 2)), 2)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (289, 7, CAST(11.20 AS Decimal(18, 2)), 9)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (289, 10, CAST(7.00 AS Decimal(18, 2)), 14)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (289, 14, CAST(13.25 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (289, 16, CAST(49.30 AS Decimal(18, 2)), 20)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (289, 20, CAST(62.50 AS Decimal(18, 2)), 34)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (290, 21, CAST(34.00 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (291, 19, CAST(21.50 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (292, 8, CAST(5.90 AS Decimal(18, 2)), 10)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (293, 6, CAST(21.05 AS Decimal(18, 2)), 13)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (293, 24, CAST(18.00 AS Decimal(18, 2)), 19)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (294, 1, CAST(38.00 AS Decimal(18, 2)), 17)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (294, 24, CAST(18.00 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (295, 12, CAST(6.00 AS Decimal(18, 2)), 45)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (295, 14, CAST(13.60 AS Decimal(18, 2)), 21)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (295, 15, CAST(14.00 AS Decimal(18, 2)), 43)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (295, 18, CAST(46.00 AS Decimal(18, 2)), 6)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (295, 26, CAST(23.25 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (296, 15, CAST(19.00 AS Decimal(18, 2)), 49)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (296, 17, CAST(15.20 AS Decimal(18, 2)), 22)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (297, 3, CAST(36.80 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (297, 4, CAST(10.40 AS Decimal(18, 2)), 44)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (297, 13, CAST(21.50 AS Decimal(18, 2)), 24)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (297, 16, CAST(55.00 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (298, 1, CAST(11.20 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (298, 5, CAST(9.50 AS Decimal(18, 2)), 48)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (298, 6, CAST(31.23 AS Decimal(18, 2)), 26)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (298, 24, CAST(24.00 AS Decimal(18, 2)), 4)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (299, 3, CAST(9.20 AS Decimal(18, 2)), 31)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (299, 7, CAST(28.80 AS Decimal(18, 2)), 15)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (299, 12, CAST(30.00 AS Decimal(18, 2)), 39)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (300, 5, CAST(7.00 AS Decimal(18, 2)), 5)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (300, 9, CAST(36.00 AS Decimal(18, 2)), 25)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (300, 11, CAST(9.50 AS Decimal(18, 2)), 40)
GO
INSERT INTO dbo.InvoicesProducts (InvoiceId, ProductId, UnitPrice, Amount) VALUES (300, 12, CAST(53.00 AS Decimal(18, 2)), 25)
GO
SET IDENTITY_INSERT dbo.Products ON 
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (1, N'ADA11', N'Product HLGZA', CAST(5.00 AS Decimal(18, 2)), N'Online')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (2, N'2F0CC', N'Product YHXGE', CAST(141.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (3, N'3EDE5', N'Product CKEDC', CAST(141.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (4, N'7AC57', N'Product YZIXQ', CAST(97.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (5, N'A901D', N'Product CPHFY', CAST(137.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (6, N'76B45', N'Product VAIIV', CAST(98.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (7, N'4E361', N'Product MYNXN', CAST(96.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (8, N'6AE73', N'Product EZZPR', CAST(145.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (9, N'DCF62', N'Product AQOKR', CAST(102.00 AS Decimal(18, 2)), N'Online')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (10, N'A41DC', N'Product JLUDZ', CAST(107.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (11, N'F833A', N'Product LYLNI', CAST(87.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (12, N'9FC42', N'Product TTEEX', CAST(42.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (13, N'32DF9', N'Product EPEIM', CAST(13.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (14, N'1164C', N'Product SMIOH', CAST(108.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (15, N'FF13D', N'Product SWNJY', CAST(92.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (16, N'6492B', N'Product HHYDP', CAST(190.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (17, N'86174', N'Product EVFFA', CAST(109.00 AS Decimal(18, 2)), N'Online')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (18, N'19B40', N'Product XWOXC', CAST(175.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (19, N'B2972', N'Product FPYPN', CAST(152.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (20, N'66313', N'Product ZZZHR', CAST(160.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (21, N'88851', N'Product AOZBW', CAST(64.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (22, N'8A7C4', N'Product HMLNI', CAST(28.00 AS Decimal(18, 2)), N'Online')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (23, N'6AF76', N'Product QDOMO', CAST(137.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (24, N'DB378', N'Product IMEHJ', CAST(123.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (25, N'8057D', N'Product OFBNT', CAST(57.00 AS Decimal(18, 2)), N'Online')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (26, N'B8876', N'Product NEVTJ', CAST(44.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (27, N'A015E', N'Product RECZE', CAST(89.00 AS Decimal(18, 2)), N'Online')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (28, N'C2F49', N'Product VJZZH', CAST(97.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (29, N'4C6B6', N'Product WVJFP', CAST(148.00 AS Decimal(18, 2)), N'Training')
GO
INSERT INTO dbo.Products (ProductId, ProductName, Description, AdvisedPrice, Category) VALUES (30, N'D8044', N'Product KSBRM', CAST(154.00 AS Decimal(18, 2)), N'Training')
GO
SET IDENTITY_INSERT dbo.Products OFF
GO
SET IDENTITY_INSERT dbo.Providers ON 
GO
INSERT INTO dbo.Providers (ProviderId, Name, VatId, Country, Region, Phone) VALUES (1, N'Provider1', N'12043750', N'Italia', N'Lombardia', N'(+39) 333-12321')
GO
INSERT INTO dbo.Providers (ProviderId, Name, VatId, Country, Region, Phone) VALUES (2, N'Provider2', N'120750013', N'Italia', N'Lazio', N'(+39) 333-12325')
GO
INSERT INTO dbo.Providers (ProviderId, Name, VatId, Country, Region, Phone) VALUES (3, N'Provider3', N'43750014', N'Italia', N'Calabria', N'555-0109')
GO
SET IDENTITY_INSERT  dbo.Providers OFF
GO
SET IDENTITY_INSERT  dbo.Shippers ON 
GO
INSERT INTO dbo.Shippers (ShipperId, Name, Vat, FiscalCode, Country, Region, Phone) VALUES (1, N'Shipper1', N'120437500', N'NTMNCL90R17L11', N'Italia', N'Lombardia', N'(+39) 333-2321')
GO
INSERT INTO dbo.Shippers (ShipperId, Name, Vat, FiscalCode, Country, Region, Phone) VALUES (2, N'Shipper2', N'12043750', N'12043750', N'Italia', N'Lazio', N'(+39) 333-12325')
GO
INSERT INTO dbo.Shippers (ShipperId, Name, Vat, FiscalCode, Country, Region, Phone) VALUES (3, N'Shipper3', N'12043753', N'12043753', N'Italia', N'Calabria', N'333-0109')
GO
INSERT INTO dbo.Shippers (ShipperId, Name, Vat, FiscalCode, Country, Region, Phone) VALUES (4, N'Shipper4', N'12043762', N'12043762', N'Italia', N'Piemonte', N'333-0109')
GO
SET IDENTITY_INSERT  dbo.Shippers OFF
GO
ALTER TABLE dbo.Invoices  WITH CHECK ADD  CONSTRAINT FkClienti FOREIGN KEY(CustomerId)
REFERENCES dbo.Customers (CustomerId)
GO
ALTER TABLE dbo.Invoices CHECK CONSTRAINT FkClienti
GO
ALTER TABLE dbo.Invoices  WITH CHECK ADD  CONSTRAINT FkCorrieri FOREIGN KEY(ShipperId)
REFERENCES dbo.Shippers (ShipperId)
GO
ALTER TABLE dbo.Invoices CHECK CONSTRAINT FkCorrieri
GO
ALTER TABLE dbo.Invoices  WITH CHECK ADD  CONSTRAINT FkFornitori FOREIGN KEY(ProviderId)
REFERENCES dbo.Providers (ProviderId)
GO
ALTER TABLE dbo.Invoices CHECK CONSTRAINT FkFornitori
GO
ALTER TABLE dbo.InvoicesProducts  WITH CHECK ADD  CONSTRAINT FkFatture FOREIGN KEY(InvoiceId)
REFERENCES dbo.Invoices (InvoiceId)
GO
ALTER TABLE dbo.InvoicesProducts CHECK CONSTRAINT FkFatture
GO
ALTER TABLE dbo.InvoicesProducts  WITH CHECK ADD  CONSTRAINT FkProdotti FOREIGN KEY(ProductId)
REFERENCES dbo.Products (ProductId)
GO
ALTER TABLE dbo.InvoicesProducts CHECK CONSTRAINT FkProdotti

