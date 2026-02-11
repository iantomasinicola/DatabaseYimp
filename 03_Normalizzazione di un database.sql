--***********************************
-- NORMALIZZAZIONE DATABASE
--***********************************
/*Normalizzare il database creato con lo script in basso. 
Sono presenti:
1) una colonna posizionata in una tabella errata
2) un campo che contiene più di un'informazione
3) una tabella senza chiave primaria
4) una relazione molti a molti implementata in maniera non efficiente*/


/*Lo script seguente crea il database EsercizioNormalizzazione
Eseguilo solo nel tuo ambiente personale di test*/

CREATE DATABASE EsercizioNormalizzazione
GO
USE EsercizioNormalizzazione
GO

CREATE TABLE dbo.DIM_CARTE (numero_carta int not null, 
					numero_cliente int not null, 
					residenza_cliente varchar(50) not null, 
					data_apertura date not null, 
					data_chiusura date null, 
					tipologia varchar(10), 
					saldo decimal(18,2));

ALTER TABLE dbo.DIM_CARTE 
ADD CONSTRAINT pk_carte 
PRIMARY KEY (numero_carta,numero_cliente);

INSERT INTO dbo.DIM_CARTE values(1,1,'Molise','20180101',null,'bancomat',100);
INSERT INTO dbo.DIM_CARTE values(1,2,'Puglia','20180101',null,'bancomat',100);
INSERT INTO dbo.DIM_CARTE values(1,3,'Lombardia', '20180101',null,'bancomat',100);
INSERT INTO dbo.DIM_CARTE values(2,4,'Piemente', '20170101',null,'prepagata',80);
INSERT INTO dbo.DIM_CARTE values(2,1,'Molise','20170101',null,'prepagata',80);
INSERT INTO dbo.DIM_CARTE values(3,6,'Lombardia','20170101',null,'Credito',70);

CREATE TABLE dbo.DIM_CLIENTI (Numero_Cliente int, 
						Denominazione varchar(50));

INSERT INTO dbo.DIM_CLIENTI values(1,'Nicola, Iantomasi');
INSERT INTO dbo.DIM_CLIENTI values(2,'Francesca, Guarino');
INSERT INTO dbo.DIM_CLIENTI values(3,'Mario, Rossi');
INSERT INTO dbo.DIM_CLIENTI values(4,'Mario, Verdi');
INSERT INTO dbo.DIM_CLIENTI values(5,'Luca, Gallo');
INSERT INTO dbo.DIM_CLIENTI values(6,'Giovanna, Verdi');


/*Iniziamo a visualizzare il contenuto delle tabelle */
USE EsercizioNormalizzazione
GO

SELECT TOP 50 * 
FROM dbo.DIM_CARTE;

SELECT TOP 50 * 
FROM dbo.DIM_CLIENTI;

/*La colonna Residenza_cliente si trova erroneamente nella 
tabella delle carte. Iniziamo aggiungendo la colonna alla tabella
dei clienti*/
ALTER TABLE dbo.DIM_CLIENTI 
ADD Residenza_cliente VARCHAR(50) NULL;

/*Verifichiamo la JOIN tra le tabelle con una select */
SELECT cl.residenza_cliente, ca.residenza_cliente, *
FROM  dbo.DIM_CLIENTI AS cl
LEFT JOIN dbo.DIM_CARTE AS ca
	ON cl.Numero_Cliente = ca.Numero_Cliente
ORDER BY cl.Numero_Cliente;

/*Verifichiamo che nella tabelle delle carte un cliente non
abbia due residenze diverse*/
SELECT Numero_Cliente
FROM   dbo.DIM_CARTE
GROUP BY Numero_Cliente
HAVING COUNT(DISTINCT residenza_cliente)>1;

/*Aggiorniamo i dati della tabella DIM_CLIENTE*/
UPDATE cl
SET    cl.residenza_cliente = ca.residenza_cliente
FROM   dbo.DIM_CLIENTI as cl
INNER JOIN dbo.DIM_CARTE as ca
	ON cl.Numero_Cliente = ca.Numero_Cliente;

/*Guardo il risultato */
SELECT *
FROM   dbo.DIM_CLIENTI;

/*elimino la colonna dalla tabella DIM_CARTE*/
ALTER TABLE dbo.DIM_CARTE 
DROP COLUMN Residenza_cliente;

/*Nella DIM_CLIENTI l'informazione su nome e cognome è riportata
in un solo campo. Per risolvere questo problema creo 
due nuove colonne*/
ALTER TABLE dbo.DIM_CLIENTI ADD Nome VARCHAR(50) NULL;
ALTER TABLE dbo.DIM_CLIENTI ADD Cognome VARCHAR(50) NULL;


/*Estraggo Nome e cognome tramite le funzioni SUBSTRING e CHARINDEX*/
SELECT SUBSTRING(
			Denominazione,
			1, 
			CHARINDEX(',',denominazione)-1
			) AS Nome,
	    SUBSTRING(
			Denominazione,
			CHARINDEX(',',denominazione)+2,
			1000) AS Cognome,
		Denominazione
FROM  dbo.DIM_CLIENTI;

/*Una volta verificato il risultato, procedo con l'UPDATE*/
UPDATE dbo.DIM_CLIENTI
SET Nome = SUBSTRING(denominazione,1, CHARINDEX(',',denominazione)-1), 
 cognome = SUBSTRING(denominazione,CHARINDEX(',',denominazione)+2,1000);

/*Elimino la colonna Denominazione e inserisco il vincolo NOT NULL
sulle colonne Nome e Cognome*/
 ALTER TABLE dbo.DIM_CLIENTI DROP COLUMN Denominazione;
 ALTER TABLE dbo.DIM_CLIENTI ALTER COLUMN Nome VARCHAR(50) NOT NULL;
 ALTER TABLE dbo.DIM_CLIENTI ALTER COLUMN Cognome Varchar(50) NOT NULL;

 /*Aggiungo la chiave primaria alla tabella DIM_CLIENTI*/
 ALTER TABLE  dbo.DIM_CLIENTI 
 ALTER COLUMN Numero_Cliente INT NOT NULL;

 ALTER TABLE dbo.DIM_CLIENTI 
 ADD PRIMARY KEY (Numero_Cliente);

 /*Creo la tabella per gestire la relazione molti a molti tra 
 clienti e carte*/
CREATE TABLE dbo.ASSOCIAZIONE_CLIENTI_CARTE (Numero_Cliente INT NOT NULL,
								 Numero_Carta INT NOT NULL);

/*La popolo con i valori presenti nella DIM_CARTE*/
INSERT INTO dbo.ASSOCIAZIONE_CLIENTI_CARTE(
					Numero_Cliente,
					Numero_Carta)
SELECT Numero_Cliente,
	   Numero_Carta 
FROM   dbo.DIM_CARTE;

/*Elimino la chiave primaria dalla DIM CARTE*/
ALTER TABLE dbo.DIM_CARTE DROP [pk_carte]

/*Elimino la colonna Numero_Cliente dalla DIM CARTE*/
ALTER TABLE dbo.DIM_CARTE DROP COLUMN Numero_Cliente;

/*Elimino i duplicati dalla tabella DIM_CARTE*/
WITH cte AS (
    SELECT 
        *, 
        ROW_NUMBER() OVER (
            PARTITION BY numero_carta, data_apertura, data_chiusura,
						 tipologia, saldo
            ORDER BY 
                numero_carta
        ) row_num
     FROM 
        dbo.DIM_CARTE
)
DELETE FROM cte
WHERE row_num > 1;

SELECT * FROM dbo.DIM_CARTE;

/*Inserisco sulla DIM_CARTE la chiave primaria sulla 
sola colonna Numero_carta*/
ALTER TABLE dbo.DIM_CARTE ADD PRIMARY KEY (Numero_carta);

/*Inserisco i vincoli di chiave primaria e chiavi esterne
sulla tabella di associazione*/
ALTER TABLE dbo.ASSOCIAZIONE_CLIENTI_CARTE 
ADD PRIMARY KEY (Numero_Cliente, Numero_Carta);

ALTER TABLE dbo.ASSOCIAZIONE_CLIENTI_CARTE 
ADD FOREIGN KEY (Numero_Cliente)
REFERENCES dbo.DIM_CLIENTI(Numero_Cliente);

ALTER TABLE dbo.ASSOCIAZIONE_CLIENTI_CARTE 
ADD FOREIGN KEY (Numero_Carta)
REFERENCES dbo.DIM_CARTE(Numero_Carta);

SELECT * FROM dbo.DIM_CARTE;
SELECT * FROM dbo.DIM_CLIENTI;
SELECT * FROM dbo.ASSOCIAZIONE_CLIENTI_CARTE;