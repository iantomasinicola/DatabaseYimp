CREATE DATABASE CorsoSQL

GO
USE CorsoSQL

GO

SET DATEFORMAT ymd
GO 

SET NOCOUNT ON
create table [Clienti] ( NumeroCliente int null, Nome varchar(50) null, Cognome varchar(50) null, DataNascita date null, RegioneResidenza varchar(50) null)

create table [ClientiEsteri] ( NumeroCliente int null, Nome varchar(50), Cognome varchar(50), DataNascita date, Nazione varchar(50), FlagUE bit)

create table [Fatture] (NumeroFattura int, Tipologia varchar(1), Importo int,  Iva int,  IdCliente int,  ResidenzaCliente varchar(50),  DataFattura date, NumeroFornitore int)

create table [Fornitori] ( NumeroFornitore varchar(50), Denominazione varchar(50),  RegioneResidenza varchar(50),  DataPrimaAcquisto date, FornitoreAttivo bit,  DataFineContratto Date)

create table [Prodotti] (IdProdotto int, Descrizione varchar(50), InProduzione bit, InCommercio bit, RegioneProduzione varchar(50),  DataAttivazione date, DataDisattivazione date, Costo decimal(18,2), CentralitaBusiness int)

INSERT INTO [Clienti] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [RegioneResidenza]) VALUES (1, 'Nicola', 'Iantomasi', '19801017 00:00:00', 'Piemonte')

INSERT INTO [Clienti] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [RegioneResidenza]) VALUES (2, 'Francesco', 'Rossi', '19821217 00:00:00', 'Molise')

INSERT INTO [Clienti] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [RegioneResidenza]) VALUES (3, 'Alberto', 'Verdi', '19830103 00:00:00', 'Campania')

INSERT INTO [Clienti] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [RegioneResidenza]) VALUES (4, 'Giovanni ', 'Limone', '19800501 00:00:00', 'Campania')

INSERT INTO [Clienti] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [RegioneResidenza]) VALUES (5, 'Angelo', 'Verdi', '19800407 00:00:00', 'Puglia')

INSERT INTO [Clienti] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [RegioneResidenza]) VALUES (6, 'Alberto', 'Marino', '19800203 00:00:00', 'Lombardia')

INSERT INTO [Clienti] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [RegioneResidenza]) VALUES (7, 'Maria', 'Guarino', '19800108 00:00:00', 'Lombardia')

INSERT INTO [Clienti] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [RegioneResidenza]) VALUES (8, 'Giacomo', 'Sacco', '19801011 00:00:00', 'Lombardia')

INSERT INTO [Clienti] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [RegioneResidenza]) VALUES (9, 'Giovanni ', 'Botta', '19801211 00:00:00', 'Campania')

INSERT INTO [Clienti] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [RegioneResidenza]) VALUES (10, 'Nicola', 'Limone', '19801011 00:00:00', 'Piemonte')

INSERT INTO [ClientiEsteri] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [Nazione], [FlagUE]) VALUES (1, 'Nicolaz', 'Iantomasi', '19801017 00:00:00', 'Germania', 1)

INSERT INTO [ClientiEsteri] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [Nazione], [FlagUE]) VALUES (2, 'Francescoz', 'Rossi', '19821217 00:00:00', 'Germania', 1)

INSERT INTO [ClientiEsteri] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [Nazione], [FlagUE]) VALUES (3, 'Albertos', 'Verdi', '19830103 00:00:00', 'Brasile', 0)

INSERT INTO [ClientiEsteri] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [Nazione], [FlagUE]) VALUES (4, 'Giovanniz', 'Limone', '19800501 00:00:00', 'Germania', 1)

INSERT INTO [ClientiEsteri] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [Nazione], [FlagUE]) VALUES (5, 'Angelos', 'Verdi', '19800407 00:00:00', 'Brasile', 0)

INSERT INTO [ClientiEsteri] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [Nazione], [FlagUE]) VALUES (6, 'Albertotz', 'Marino', '19800203 00:00:00', 'Belgio', 1)

INSERT INTO [ClientiEsteri] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [Nazione], [FlagUE]) VALUES (7, 'Marianne', 'Guarino', '19800108 00:00:00', 'Francia', 1)

INSERT INTO [ClientiEsteri] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [Nazione], [FlagUE]) VALUES (8, 'Giacomoz', 'Sacco', '19801011 00:00:00', 'Germania', 1)

INSERT INTO [ClientiEsteri] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [Nazione], [FlagUE]) VALUES (9, 'Jeanne', 'Botta', '19801211 00:00:00', 'Francia', 1)

INSERT INTO [ClientiEsteri] ([NumeroCliente], [Nome], [Cognome], [DataNascita], [Nazione], [FlagUE]) VALUES (10, 'Nicola', 'Limone', '19801011 00:00:00', NULL, NULL)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (1, 'A', 120, 20, 1, 'Molise', '20180101 00:00:00',1)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (2, 'V', 32, 20, 2, 'Puglia', '20170301 00:00:00',1)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (3, 'A', 45, 20, 3, 'Lombardia', '20170601 00:00:00',1)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (4, 'V', 64, 20, 3, 'Lombardia', '20190130 00:00:00',1)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (5, 'A', 12, 20, 5, 'Umbria', '20180101 00:00:00',1)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (6, 'V', 31, 20, 6, 'Trentino', '20170301 00:00:00',2)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (7, 'A', 12, 20, 3, 'Lombardia', '20170601 00:00:00',2)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (8, 'V', 54, 20, 8, 'Abruzzo', '20190130 00:00:00',2)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (9, 'A', 67, 20, 3, 'Lombardia', '20180101 00:00:00',2)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (10, 'A', 51, 20, 8, 'Abruzzo', '20170301 00:00:00',2)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (11, 'A', 21, 20, 2, 'Puglia', '20170601 00:00:00',2)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (12, 'A', 57, 20, 7, 'Marche', '20190130 00:00:00',null)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (13, 'V', 87, 20, 2, 'Puglia', '20160103 00:00:00',null)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (14, 'V', 12, 22, 4, 'Piemonte', '20170920 00:00:00',3)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (15, 'A', 34, null, 1, 'Molise', '20170601 00:00:00',3)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (16, 'V', 21, 20, 1, 'Molise', '20190205 00:00:00',3)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (17, 'V', 1, 20, 5, 'Umbria', '20190105 00:00:00',4)

INSERT INTO [Fatture] ([NumeroFattura], [Tipologia], [Importo], [Iva], [IdCliente], [ResidenzaCliente], [DataFattura], NumeroFornitore) VALUES (18, 'V', 2, 20, 4, 'Piemonte', '20180301 00:00:00',5)

INSERT INTO [Fornitori] ([NumeroFornitore], [Denominazione], [RegioneResidenza], [DataPrimaAcquisto], [FornitoreAttivo], [DataFineContratto]) VALUES ('1', 'Bartolini', 'Lombardia', '20170502 00:00:00', 1, '2019-05-01')

INSERT INTO [Fornitori] ([NumeroFornitore], [Denominazione], [RegioneResidenza], [DataPrimaAcquisto], [FornitoreAttivo], [DataFineContratto]) VALUES ('2', 'Pirelli', 'Piemonte', '20140102 00:00:00', 1, '2019-06-30')

INSERT INTO [Fornitori] ([NumeroFornitore], [Denominazione], [RegioneResidenza], [DataPrimaAcquisto], [FornitoreAttivo], [DataFineContratto]) VALUES ('3', 'Fiat', 'Lombardia', '20180302 00:00:00', 0, '2018-05-30')

INSERT INTO [Fornitori] ([NumeroFornitore], [Denominazione], [RegioneResidenza], [DataPrimaAcquisto], [FornitoreAttivo], [DataFineContratto]) VALUES ('4', 'Mercedes', 'Puglia', '20190102 00:00:00', 1, '2018-08-30')

INSERT INTO [Fornitori] ([NumeroFornitore], [Denominazione], [RegioneResidenza], [DataPrimaAcquisto], [FornitoreAttivo], [DataFineContratto]) VALUES ('5', 'Tenaris', 'Marche', '20180602 00:00:00', 0, '2018-05-30')

INSERT INTO [Prodotti] ([IdProdotto], [Descrizione], [InProduzione], [InCommercio], [RegioneProduzione], [DataAttivazione], [DataDisattivazione], [Costo], [CentralitaBusiness]) VALUES (1, 'carrelli', 1, 1, 'Lombardia', '20100101 00:00:00', NULL, 1000.00, 5)

INSERT INTO [Prodotti] ([IdProdotto], [Descrizione], [InProduzione], [InCommercio], [RegioneProduzione], [DataAttivazione], [DataDisattivazione], [Costo], [CentralitaBusiness]) VALUES (2, 'auto', 1, 0, 'Lombardia', '20170101 00:00:00', NULL, 20000.00, 3)

INSERT INTO [Prodotti] ([IdProdotto], [Descrizione], [InProduzione], [InCommercio], [RegioneProduzione], [DataAttivazione], [DataDisattivazione], [Costo], [CentralitaBusiness]) VALUES (3, 'camion', 1, 0, 'Lombardia', '20170101 00:00:00', NULL, 50000.00, 2)

INSERT INTO [Prodotti] ([IdProdotto], [Descrizione], [InProduzione], [InCommercio], [RegioneProduzione], [DataAttivazione], [DataDisattivazione], [Costo], [CentralitaBusiness]) VALUES (4, 'pick up', 1, 1, 'Piemoente', '20110101 00:00:00', NULL, 20000.00, 5)

INSERT INTO [Prodotti] ([IdProdotto], [Descrizione], [InProduzione], [InCommercio], [RegioneProduzione], [DataAttivazione], [DataDisattivazione], [Costo], [CentralitaBusiness]) VALUES (5, 'moto', 0, 0, NULL, '20110101 00:00:00', '20150101 00:00:00', 8000.00, 1)

INSERT INTO [Prodotti] ([IdProdotto], [Descrizione], [InProduzione], [InCommercio], [RegioneProduzione], [DataAttivazione], [DataDisattivazione], [Costo], [CentralitaBusiness]) VALUES (6, 'scooter', 1, 1, 'Puglia', '20120101 00:00:00', NULL, 4000.00, 3)

INSERT INTO [Prodotti] ([IdProdotto], [Descrizione], [InProduzione], [InCommercio], [RegioneProduzione], [DataAttivazione], [DataDisattivazione], [Costo], [CentralitaBusiness]) VALUES (7, 'navi', 1, 1, 'puglia', '20120101 00:00:00', NULL, 100000.00, 5)

INSERT INTO [Prodotti] ([IdProdotto], [Descrizione], [InProduzione], [InCommercio], [RegioneProduzione], [DataAttivazione], [DataDisattivazione], [Costo], [CentralitaBusiness]) VALUES (8, 'ascensori', 1, 1, 'puglia', '20150101 00:00:00', NULL, 30000.00, 1)

alter table [fornitori] alter column DataFineContratto varchar(10)