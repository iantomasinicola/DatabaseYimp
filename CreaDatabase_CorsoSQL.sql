/*Lo script seguente crea un database: CorsoSQL.
Eseguilo solo nel tuo ambiente personale di test*/

CREATE DATABASE CorsoSQL

GO
USE CorsoSQL

GO


SET NOCOUNT ON
create table CorsoSQL.dbo.Clienti ( IdCliente int null, Nome varchar(50) null, Cognome varchar(50) null, DataNascita date null, RegioneResidenza varchar(50) null)

create table CorsoSQL.dbo.Prospect ( IdProspect int null, Nome varchar(50), Cognome varchar(50), DataNascita date, Nazione varchar(50), FlagUE bit)

create table CorsoSQL.dbo.Fatture (IdFattura int, Tipologia varchar(1), Importo DECIMAL(18,2), Iva int,  IdCliente int,  DataFattura date, IdFornitore int)

create table CorsoSQL.dbo.Fornitori ( IdFornitore varchar(50), Denominazione varchar(50),  RegioneResidenza varchar(50),  DataPrimaAcquisto date, FornitoreAttivo bit,  DataFineContratto Date)

create table CorsoSQL.dbo.Prodotti (IdProdotto int, Descrizione varchar(50), InProduzione bit, InCommercio bit, RegioneProduzione varchar(50),  DataAttivazione date, DataDisattivazione date, Costo decimal(18,2), CentralitaBusiness int)

INSERT INTO CorsoSQL.dbo.Clienti (IdCliente, Nome, Cognome, DataNascita, RegioneResidenza) VALUES (1, 'Nicola', 'Iantomasi', '19801017 00:00:00', 'Piemonte')

INSERT INTO CorsoSQL.dbo.Clienti (IdCliente, Nome, Cognome, DataNascita, RegioneResidenza) VALUES (2, 'Francesco', 'Rossi', '19821217 00:00:00', 'Molise')

INSERT INTO CorsoSQL.dbo.Clienti (IdCliente, Nome, Cognome, DataNascita, RegioneResidenza) VALUES (3, 'Alberto', 'Verdi', '19830103 00:00:00', 'Campania')

INSERT INTO CorsoSQL.dbo.Clienti (IdCliente, Nome, Cognome, DataNascita, RegioneResidenza) VALUES (4, 'Giovanni ', 'Limone', '19800501 00:00:00', 'Campania')

INSERT INTO CorsoSQL.dbo.Clienti (IdCliente, Nome, Cognome, DataNascita, RegioneResidenza) VALUES (5, 'Angelo', 'Verdi', '19800407 00:00:00', 'Puglia')

INSERT INTO CorsoSQL.dbo.Clienti (IdCliente, Nome, Cognome, DataNascita, RegioneResidenza) VALUES (6, 'Alberto', 'Marino', '19800203 00:00:00', 'Lombardia')

INSERT INTO CorsoSQL.dbo.Clienti (IdCliente, Nome, Cognome, DataNascita, RegioneResidenza) VALUES (7, 'Maria', 'Guarino', '19800108 00:00:00', 'Lombardia')

INSERT INTO CorsoSQL.dbo.Clienti (IdCliente, Nome, Cognome, DataNascita, RegioneResidenza) VALUES (8, 'Giacomo', 'Sacco', '19801011 00:00:00', 'Lombardia')

INSERT INTO CorsoSQL.dbo.Clienti (IdCliente, Nome, Cognome, DataNascita, RegioneResidenza) VALUES (9, 'Giovanni ', 'Botta', '19801211 00:00:00', 'Campania')

INSERT INTO CorsoSQL.dbo.Clienti (IdCliente, Nome, Cognome, DataNascita, RegioneResidenza) VALUES (10, 'Nicola', 'Limone', '19801011 00:00:00', 'Piemonte')

INSERT INTO CorsoSQL.dbo.Prospect (IdProspect , Nome, Cognome, DataNascita, Nazione, FlagUE) VALUES (1, 'Nicolaz', 'Iantomasi', '19801017 00:00:00', 'Germania', 1)

INSERT INTO CorsoSQL.dbo.Prospect (IdProspect , Nome, Cognome, DataNascita, Nazione, FlagUE) VALUES (2, 'Francescoz', 'Rossi', '19821217 00:00:00', 'Germania', 1)

INSERT INTO CorsoSQL.dbo.Prospect (IdProspect , Nome, Cognome, DataNascita, Nazione, FlagUE) VALUES (3, 'Francescoz', 'Rossi', '19830103 00:00:00', 'Brasile', 0)

INSERT INTO CorsoSQL.dbo.Prospect (IdProspect , Nome, Cognome, DataNascita, Nazione, FlagUE) VALUES (4, 'Nicola', 'Limone', '19800501 00:00:00', 'Germania', 1)

INSERT INTO CorsoSQL.dbo.Prospect (IdProspect , Nome, Cognome, DataNascita, Nazione, FlagUE) VALUES (5, 'Angelos', 'Verdi', '19800407 00:00:00', 'Brasile', 0)

INSERT INTO CorsoSQL.dbo.Prospect (IdProspect , Nome, Cognome, DataNascita, Nazione, FlagUE) VALUES (6, 'Albertotz', 'Marino', '19800203 00:00:00', 'Belgio', 1)

INSERT INTO CorsoSQL.dbo.Prospect (IdProspect , Nome, Cognome, DataNascita, Nazione, FlagUE) VALUES (7, 'Marianne', 'Guarino', '19800108 00:00:00', 'Francia', 1)

INSERT INTO CorsoSQL.dbo.Prospect (IdProspect , Nome, Cognome, DataNascita, Nazione, FlagUE) VALUES (8, 'Giacomoz', 'Sacco', '19801011 00:00:00', 'Germania', 1)

INSERT INTO CorsoSQL.dbo.Prospect (IdProspect , Nome, Cognome, DataNascita, Nazione, FlagUE) VALUES (9, 'Jeanne', 'Botta', '19801211 00:00:00', 'Francia', 1)

INSERT INTO CorsoSQL.dbo.Prospect (IdProspect , Nome, Cognome, DataNascita, Nazione, FlagUE) VALUES (10, 'Nicola', 'Limone', '19801011 00:00:00', NULL, NULL)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (1, 'A', 120, 20, 1, '20180101 00:00:00',1)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (2, 'V', 32, 20, 2, '20170301 00:00:00',1)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (3, 'A', 45, 20, 3, '20170601 00:00:00',1)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (4, 'V', 67, 20, 3,'20190130 00:00:00',1)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (5, 'A', 12, 20, 5,'20180101 00:00:00',1)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (6, 'V', 31, 20, 6, '20170301 00:00:00',2)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (7, 'A', 12, 20, 3,'20170601 00:00:00',2)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (8, 'V', 54, 20, 8, '20190130 00:00:00',2)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (9, 'A', 67, 20, 3,  '20180101 00:00:00',2)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (10, 'A', 51, 20, 8, '20170301 00:00:00',2)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (11, 'A', 21, 20, 2,  '20170601 00:00:00',2)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (12, 'A', 57, 20, 7, '20190130 00:00:00',null)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (13, 'V', 87, 20, 2,  '20160103 00:00:00',null)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (14, 'V', 12, 22, 4, '20170920 00:00:00',3)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (15, 'A', 34, null, 1,  '20170601 00:00:00',3)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (16, 'V', 21, 20, 1,  '20190205 00:00:00',3)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (17, 'V', 1, 20, 5, '20190105 00:00:00',4)

INSERT INTO CorsoSQL.dbo.Fatture (IdFattura, Tipologia, Importo, Iva, IdCliente,  DataFattura, IdFornitore) VALUES (18, 'V', 2, 20, 4, '20180301 00:00:00',5)

INSERT INTO CorsoSQL.dbo.Fornitori (IdFornitore, Denominazione, RegioneResidenza, DataPrimaAcquisto, FornitoreAttivo, DataFineContratto) VALUES ('1', 'Fornitore 1', 'Lombardia', '20170502', 1, '2019-05-01')

INSERT INTO CorsoSQL.dbo.Fornitori (IdFornitore, Denominazione, RegioneResidenza, DataPrimaAcquisto, FornitoreAttivo, DataFineContratto) VALUES ('2', 'Fornitore 2', 'Piemonte', '20140102', 1, '2019-06-30')

INSERT INTO CorsoSQL.dbo.Fornitori (IdFornitore, Denominazione, RegioneResidenza, DataPrimaAcquisto, FornitoreAttivo, DataFineContratto) VALUES ('3', 'Fornitore 3', 'Lombardia', '20180302', 0, '2018-05-30')

INSERT INTO CorsoSQL.dbo.Fornitori (IdFornitore, Denominazione, RegioneResidenza, DataPrimaAcquisto, FornitoreAttivo, DataFineContratto) VALUES ('4', 'Fornitore 4', 'Puglia', '20190102', 1, '2018-08-30')

INSERT INTO CorsoSQL.dbo.Fornitori (IdFornitore, Denominazione, RegioneResidenza, DataPrimaAcquisto, FornitoreAttivo, DataFineContratto) VALUES ('5', 'Fornitore 5', 'Marche', '20180602', 0, '2018-05-30')

INSERT INTO CorsoSQL.dbo.Fornitori (IdFornitore, Denominazione, RegioneResidenza, DataPrimaAcquisto, FornitoreAttivo, DataFineContratto) VALUES ('6', 'Fornitore 6', 'Lombardia', '20140102', 1, '2019-06-30')

INSERT INTO CorsoSQL.dbo.Prodotti (IdProdotto, Descrizione, InProduzione, InCommercio, RegioneProduzione, DataAttivazione, DataDisattivazione, Costo, CentralitaBusiness) VALUES (1, 'carrelli', 1, 1, 'Lombardia', '20100101 00:00:00', NULL, 1000.00, 5)

INSERT INTO CorsoSQL.dbo.Prodotti (IdProdotto, Descrizione, InProduzione, InCommercio, RegioneProduzione, DataAttivazione, DataDisattivazione, Costo, CentralitaBusiness) VALUES (2, 'auto', 1, 0, 'Lombardia', '20170101 00:00:00', NULL, 20000.00, 3)

INSERT INTO CorsoSQL.dbo.Prodotti (IdProdotto, Descrizione, InProduzione, InCommercio, RegioneProduzione, DataAttivazione, DataDisattivazione, Costo, CentralitaBusiness) VALUES (3, 'camion', 1, 0, 'Lombardia', '20170101 00:00:00', NULL, 50000.00, 2)

INSERT INTO CorsoSQL.dbo.Prodotti (IdProdotto, Descrizione, InProduzione, InCommercio, RegioneProduzione, DataAttivazione, DataDisattivazione, Costo, CentralitaBusiness) VALUES (4, 'pick up', 1, 1, 'Piemoente', '20110101 00:00:00', NULL, 20000.00, 5)

INSERT INTO CorsoSQL.dbo.Prodotti (IdProdotto, Descrizione, InProduzione, InCommercio, RegioneProduzione, DataAttivazione, DataDisattivazione, Costo, CentralitaBusiness) VALUES (5, 'moto', 0, 0, NULL, '20110101 00:00:00', '20150101 00:00:00', 8000.00, 1)

INSERT INTO CorsoSQL.dbo.Prodotti (IdProdotto, Descrizione, InProduzione, InCommercio, RegioneProduzione, DataAttivazione, DataDisattivazione, Costo, CentralitaBusiness) VALUES (6, 'scooter', 1, 1, 'Puglia', '20120101 00:00:00', NULL, 4000.00, 3)

INSERT INTO CorsoSQL.dbo.Prodotti (IdProdotto, Descrizione, InProduzione, InCommercio, RegioneProduzione, DataAttivazione, DataDisattivazione, Costo, CentralitaBusiness) VALUES (7, 'navi', 1, 1, 'puglia', '20120101 00:00:00', NULL, 100000.00, 5)

INSERT INTO CorsoSQL.dbo.Prodotti (IdProdotto, Descrizione, InProduzione, InCommercio, RegioneProduzione, DataAttivazione, DataDisattivazione, Costo, CentralitaBusiness) VALUES (8, 'ascensori', 1, 1, 'puglia', '20150101 00:00:00', NULL, 30000.00, 1)
