/************************
* TRANSAZIONI
************************/
/*ATTENZIONE: QUESTO CAPITOLO FA RIFERIMENTO ALLA GESTIONE
DELLE TRANSAZIONI TRAMITE SQL SERVER MANAGEMENT STUDIO.
LA SITUAZIONE CAMBIA SE CI SI CONNETTE A SQL SERVER
TRAMITE UN LINGUAGGIO DI BACK END E UNA RELATIVA LIBRERIA
*/


/*Transazione con rollback
lanciare un'istruzione alla volta*/
BEGIN TRAN

SELECT @@TRANCOUNT;

DELETE 
FROM  CorsoSQL.query.Prospect
WHERE IdProspect = 6;

SELECT *
FROM  CoroSQL.query.Clienti
WHERE IdCliente = 1


--lanciare in questa e in un'altra sessione le query. Il comportamento dipende dal livello di isolamento!
SELECT * 
FROM query.Prospect; 

SELECT * 
FROM query.Clienti; 

/*Per conoscere il livello di isolamento posso eseguire queste due query (apriamo una terza sessione)*/
SELECT transaction_isolation_level
FROM sys.dm_exec_sessions
--WHERE session_id = @@SPID;

--read committed snapshot
SELECT 
    name AS DatabaseName,
    is_read_committed_snapshot_on
FROM sys.databases
WHERE name = 'corsosql';

--documentazione sul campo transaction_isolation_level
--https://learn.microsoft.com/en-us/sql/relational-databases/system-dynamic-management-views/sys-dm-exec-sessions-transact-sql?view=sql-server-ver17


--Torniamo nella sessione di partenza ed eseguiamo una rollback
ROLLBACK

SELECT @@TRANCOUNT;

/*ATTENZIONE! Come vedremo tra un po', in caso di errori la transazione 
sarà in alcuni casi "rollbackata" (e quindi chiusa) in automatico, in altri no!*/ 

/*Vediamo ora una transazione conclusa con un commit.
lanciare un'istruzione alla volta*/
BEGIN TRAN
SELECT @@TRANCOUNT;

DELETE 
FROM  CorsoSQL.query.Prospect
WHERE IdProspect = 6;

SELECT * 
FROM   query.Prospect; 

--eseguiamo una commit
COMMIT TRAN

SELECT @@TRANCOUNT;
SELECT * 
FROM   query.Prospect; 


/*Commento:
dopo una begin tran, le operazioni di modifica del database NON sono definitive fino al momento in cui viene eseguita 
l'istruzione COMMIT.
Se invece della COMMIT è eseguita l'istruzione ROLLBACK, le modifiche fatte all'interno della transazione vengono annullate. 
L'aggiornamento di una tabella durante una transazione Impatta l'interazione sulla stessa tabella in altre sessioni
di SQL SERVER.
*/


/*Quando ci connettiamo a SQL Server tramite SQL Server Management Studio, il comportamento di DEFAULT in assenza del comando 
BEGIN TRAN è il seguente:
ogni singolo comando DML/DDL  viene considerato come una transazione AUTONOMA. 
Se non ci sono errori, ogni singolo comando viene confermato (committed) al termine della relativa esecuzione.
Se ci sono errori, il comportamento dipende dal tipo di errore.*/

/*Attenzione: non è certo che saremo sempre in questa situazione di DEFAULT. Facciamo sempre attenzione alla documentazione
dei driver di connessione a SQL Server. Ad esempio, in una sessione attiva, posso impostare l'apertura automatica di una transazione
che non sarà confermata in automatico con l'istruzione

SET IMPLICIT_TRANSACTIONS ON

Non c'è un modo per capire se una connessione ha questa impostazione attiva. */


/************************
* GESTIONE ERRORI
************************/

/*blocco TRY-CATCH.
lanciare in un unico comando*/
BEGIN TRY
	
	--eseguito correttamente
	SELECT *
	FROM  query.Clienti
	WHERE IdCliente = 1;

	--genera un errore di conversione
	SELECT *
	FROM   query.Clienti
	WHERE  IdCliente = 'a';

	--NON VIENE ESEGUITO, perchè siamo all'interno di un blocco try e la query precedente
	--ha generato un errore
	SELECT *
	FROM   query.Clienti
	WHERE  IdCliente = 3;

END TRY
BEGIN CATCH
    
	--viene eseguito perchè all'interno del blocco try si è verificato un errore
	SELECT *
	FROM  query.Fatture;

END CATCH

/*Commento:
il blocco try/catch abilita la gestione degli errori su Sql server.
L'esecuzione del codice presente nel blocco try si interrompe al primo errore riscontrato.
Il codice successivo all'errore all'interno del blocco try NON viene eseguito.
Al suo posto sarà eseguito il codice presente nel blocco catch.
Se non ci sono errori nel blocco try, il codice presente nel blocco catch non viene eseguito.
ATTENZIONE! Ci sono delle tipologie di errori che fanno eccezione!!! Le vedremo più in avanti*/

/*blocco TRY-CATCH 
con THROW*/
BEGIN TRY
	
	--eseguito correttamente
	SELECT *
	FROM  query.Clienti
	WHERE IdCliente = 1;

	--genera un errore di conversione
	SELECT *
	FROM   query.Clienti
	WHERE  IdCliente = 'a';

	--NON VIENE ESEGUITO, perchè siamo all'interno di un blocco try e la query precedente
	--ha generato un errore
	SELECT *
	FROM   query.Clienti
	WHERE  IdCliente = 3;

END TRY
BEGIN CATCH
    
	--viene eseguito perchè all'interno del blocco try si è verificato un errore
	SELECT *
	FROM  query.Fatture;
	
	--interrompe l'esecuzione del blocco catch 
	--generando lo stesso errore che ha portato
	--l'interruzione del blocco try
	THROW;

	--non sarà eseguito per via del THROW precedente
	SELECT *
	FROM  query.Clienti;

END CATCH

/*COMMENTO: Per automatizzare le esecuzioni risulta fondamentale
utilizzare in modo congiunto gestione degli errori 
e transazioni perché 
1) non è possibile prevedere se Sql Server blocca l'esecuzione dopo
un errore oppure va avanti
2) non è possibile prevedere se Sql Server esegue o meno il rollback dopo un errore
2) in alcune situazioni sarebbe grave che solo uno dei due 
aggiornamenti programmati su un database vada a buon fine
(ad esempio tabella dei movimenti e dei saldi di un conto,
cancellazione dei dati di una tabella e ripopolazione)
*/


/***********************/
/*TRANSAZIONI ED ERRORI*/
/***********************/
--Analizziamo i nomi dei primi tre clienti 
SELECT * FROM query.Clienti WHERE IdCliente in (1,2,3);

/*Esempio 1:
Lanciamo il codice. L'errore di divisione per zero, non blocca l'esecuzione.
Mi trovo il commit della prima e terza Update!*/
BEGIN TRAN

SELECT 'Step 1. Trancount: ' + CONVERT(varchar(10),@@TRANCOUNT)
UPDATE CorsoSQL.query.Clienti 
SET    Nome='Raffaele'
WHERE  IdCliente = 1;

SELECT 'Step 2. Trancount: ' + CONVERT(varchar(10),@@TRANCOUNT)
UPDATE CorsoSQL.query.Clienti 
SET    Nome='Raffaele'
WHERE  IdCliente=2/0;

SELECT 'Step 3. Trancount: ' + CONVERT(varchar(10),@@TRANCOUNT)
UPDATE CorsoSQL.query.Clienti 
SET    Nome='Raffaele'
WHERE  IdCliente = 3;

COMMIT

/*Controlliamo*/

SELECT 'Trancount finale: ' + CONVERT(varchar(10),@@TRANCOUNT);

SELECT * 
FROM  query.Clienti 
WHERE IdCliente in (1,2,3);

/*Riaggiorniamo i dati*/
UPDATE CorsoSQL.query.Clienti
SET    Nome = 'Nicola'
WHERE  IdCliente in (1,2,3);

/*Esempio 2: errore di conversione blocca l'esecuzione ed esegue il rollback! 
Se eseguo tutto insieme alla fine non ho nessuna modifica. Se eseguo 
no alla volta, alla fine ho la terza modifica committata automaticamente 
il commit o il rollback finale andrebbe in errore)*/
BEGIN TRAN
SELECT 'Step 1. Trancount: ' + CONVERT(varchar(10),@@TRANCOUNT)
UPDATE CorsoSQL.query.Clienti 
SET    Nome='Raffaele'
WHERE  IdCliente = 1;

SELECT 'Step 2. Trancount: ' + CONVERT(varchar(10),@@TRANCOUNT)
UPDATE CorsoSQL.query.Clienti 
SET    Nome='Raffaele'
WHERE  IdCliente='a';

SELECT 'Step 3. Trancount: ' + CONVERT(varchar(10),@@TRANCOUNT)
UPDATE CorsoSQL.query.Clienti 
SET    Nome='Raffaele'
WHERE  IdCliente = 3;

COMMIT

/*Controlliamo*/
SELECT 'Trancount finale: ' + CONVERT(varchar(10),@@TRANCOUNT);

SELECT * 
FROM  query.Clienti 
WHERE IdCliente in (1,2,3);

/*Riaggiorniamo i dati*/
UPDATE CorsoSQL.query.Clienti
SET    Nome = 'Nicola'
WHERE  IdCliente in (1,2,3);

/*Esempio 3:  
errore sul nome di una tabella errata
l'esecuzione viene bloccata ma il rollback non viene effettuato*/
BEGIN TRAN
SELECT 'Step 1. Trancount: ' + CONVERT(varchar(10),@@TRANCOUNT)
UPDATE CorsoSQL.query.Clienti 
SET    Nome='Raffaele'
WHERE  IdCliente = 1;

SELECT 'Step 2. Trancount: ' + CONVERT(varchar(10),@@TRANCOUNT)
UPDATE CorsoSQL.query.Clientiiiii 
SET    Nome='Raffaele'
WHERE  IdCliente=2;

SELECT 'Step 3. Trancount: ' + CONVERT(varchar(10),@@TRANCOUNT)
UPDATE CorsoSQL.query.Clienti 
SET    Nome='Raffaele'
WHERE  IdCliente = 3;

COMMIT

/*Controlliamo*/
SELECT 'Trancount finale: ' + CONVERT(varchar(10),@@TRANCOUNT);

SELECT * 
FROM  query.Clienti 
WHERE IdCliente in (1,2,3);

/*Dobbiamo assolutamente ricordardi di fare il rollback!*/(
rollback;

/*Esempio 4: 
errore sul nome di una colonna 
l'esecuzione non parte*/
BEGIN TRAN
SELECT 'Step 1. Trancount: ' + CONVERT(varchar(10),@@TRANCOUNT)
UPDATE CorsoSQL.query.Clienti 
SET    Nome='Raffaele'
WHERE  IdCliente = 1;

SELECT 'Step 2. Trancount: ' + CONVERT(varchar(10),@@TRANCOUNT)
UPDATE CorsoSQL.query.Clienti
SET    Nomeeee='Raffaele'
WHERE  IdCliente=2;

SELECT 'Step 3. Trancount: ' + CONVERT(varchar(10),@@TRANCOUNT)
UPDATE CorsoSQL.query.Clienti 
SET    Nome='Raffaele'
WHERE  IdCliente = 3;

COMMIT

/*Controlliamo*/
SELECT 'Trancount finale: ' + CONVERT(varchar(10),@@TRANCOUNT);

SELECT * 
FROM  query.Clienti 
WHERE IdCliente in (1,2,3);

/**************************
TRY CATCH E TRANSAZIONI
***************************/
/*Esempio di utilizzo congiunto*/
BEGIN TRY

	SELECT *
	FROM   query.Clienti
	WHERE  IdCliente = 1;

    BEGIN TRAN
	/*aprendo la transazione all'interno del blocco try 
	e mettendo alla fine una commit, 
	quest'ultima verrà eseguita solo nel caso in cui 
	non si sia verificato nessun errore */

	UPDATE CorsoSQL.query.clienti 
	SET    Nome='Raffaele'
	WHERE  IdCliente = 1;

	UPDATE CorsoSQL.clienti 
	SET   Nome='Raffaele'
	WHERE IdCliente = 1/0;  /*la presenza di un errore generato 
	                          dalla divisione per 0, interromperà
							  l'esecuzione del codice nel blocco try
							  di conseguenza NON sarà eseguita la commit 
							  (che è buona norma scrive sempre come
							   l'ultima operazione del blocco try)
							  l'esecuzione passera al blocco catch */
    
	--non eseguita per via dell'errore precedente
	UPDATE CorsoSQL.query.clienti 
	SET    Nome='Raffaele'
	WHERE  IdCliente = 3;

	--non eseguita per via dell'errore precedente
	COMMIT TRAN;

END TRY
BEGIN CATCH
	/*se si è verificato un errore, verrà eseguita una rollback in 
	modo da tale da annullare le operazioni 
	già eseguite e che, a causa dell'errore, risulterebbero parziali */
	IF @@trancount>0 ROLLBACK;
	
	THROW; /*throw genera lo stesso errore che ha portato 
	         il codice a passare dal blocco try al blocco catch
		     throw termina l'esecuzione del codice nel blocco catch */
END CATCH
select * from query.clienti


/*********************************
ERRORI NON GESTITI DAL TRY-CATCH
*********************************/

--Esempio 1: vediamo un primo caso non coperto dal try/catch
BEGIN TRY

 BEGIN TRAN
 
    DELETE FROM CorsoSQL.query.Clienti WHERE IdCliente = 1
    
	DELETE FROM CorsoSQL.query.TabellaCheNonEsiste
 
 COMMIT
END TRY
BEGIN CATCH
  IF @@TRANCOUNT > 0 ROLLBACK;
  THROW;

END CATCH

--Vediamo se ci sono transazioni aperte. La risposta è sì.
SELECT @@TRANCOUNT

--dobbiamo eseguire manualmente il rollback
ROLLBACK

/*Il TRY-CATCH non vede errori come quello generato dall'interrogare
una tabella che non esiste. La transazione dunque non è
stata ancora rollbackata ed è rimasta aperta. Per gestire anche questo
caso possiamo usare l'opzione SET XACT_ABORT ON che vale per l'intera
sessione. 

XACT_ABORT ON effettua (quasi) sempre il ROLLBACK di una 
transazione quando viene sollevato un errore. 

Inoltre con l'opzione di default SET XACT_ABORT OFF alcuni errori
nel blocco TRY potrebbero permetterci teoricamente di eseguire
comunque nel blocco CATCH il COMMIT della transazione (implementazione 
molto rara). Con XACT_ABORT ON (quasi) tutti gli errori
renderanno impossibile eseguire il COMMIT della transazione
nel blocco CATCH */

--lanciamo l'opzione SET XACT_ABORT ON
SET XACT_ABORT ON

--lanciamo ora la query
BEGIN TRY
 BEGIN TRAN
    DELETE FROM CorsoSQL.query.Clienti WHERE IdCliente = 1;
	DELETE FROM CorsoSQL.query.TabellaCheNonEsiste;
 COMMIT
END TRY
BEGIN CATCH
  IF @@TRANCOUNT > 0 ROLLBACK;
  THROW;
END CATCH

--vediamo se ci sono transazioni aperte. La risposta è NO
SELECT @@TRANCOUNT

--valutare se ripristinare il default XACT_ABORT OFF per la sessione 
SET XACT_ABORT OFF

--Esempio 2: vediamo un secondo caso non coperto dal try/catch
--interrompere l'esecuzione dopo qualche secondo tramite l'apposito
--tasto di SQL Server Management Studio
BEGIN TRY
 BEGIN TRAN
    DELETE FROM CorsoSQL.query.Clienti WHERE IdCliente = 1
	
	--la prossima istruzione genera un minuto di attesa
	WAITFOR DELAY '00:01'
	
 COMMIT
END TRY
BEGIN CATCH
  IF @@TRANCOUNT > 0 ROLLBACK;
  THROW;
END CATCH

--vediamo se ci sono transazioni aperte. La risposta è sì
SELECT @@TRANCOUNT;
rollback

--anche in questo caso riproviamo l'esperimento con
--xact_abort ON
SET XACT_ABORT ON
BEGIN TRY
 BEGIN TRAN
    DELETE FROM CorsoSQL.query.Clienti WHERE IdCliente = 1
	WAITFOR DELAY '00:01' 
	
 COMMIT
END TRY
BEGIN CATCH
  IF @@TRANCOUNT > 0 ROLLBACK;
  THROW;
END CATCH

select @@TRANCOUNT

--valutare se ripristinare il default XACT_ABORT OFF per la sessione 
SET XACT_ABORT OFF



/*Ecco un possibile template di stored procedure*/
CREATE/ALTER PROCEDURE <nomeprocedura>  --modifichiamo o creiamo la procedura assegnandole il nome
<dichiarazione variabili>      --dichiariamo i parametri
AS                               
BEGIN                          --begin relativo alla procedura
SET NOCOUNT ON             --eliminiamo i messaggi come "3 righe inserite"
SET XACT_ABORT ON          --per forzare il rollback in caso di errori, anche 
						   --se non gestiti dal try-catch
BEGIN TRY                  --apriamo il blocco try
	.....
	<logiche parziali>         --costruiamo TUTTE le logiche parziali 
	                           --utilizzando cte/tabelle temporanee/ecc..
	....
	BEGIN TRANSACTION          --se occorre aggiornare una o più tabelle fisiche, 
	                           --apriamo una transazione
	...
	<operazioni sul database>  --scriviamo le operazioni di insert/update/Delete
	...
	COMMIT                     --mettiamo subito prima della fine del 
	                           --blocco try una commit (verrà eseguita solo se non 
							   --si è verificato nessun errore) 
END TRY                        --chiudiamo il blocco try
BEGIN CATCH                    --apriamo il blocco catch
	IF @@trancount>0 ROLLBACK; --effettuiamo il rollback della transazione aperta
	<gestione errore>          --creiamo messagi di errore/inviamo una mail 
	THROW;                     --restituiamo l'errore fuori
                               --dalla stored procedure
END CATCH    				   --chiudiamo il blocco catch
END							   --chiudiamo la procedura


/*Evitiamo se possibile di lanciare procedure all'interno di altre procedure, soprattutto se contengono transazioni. 
La gestione diviene ancora più complessa*/


/*Funzioni utili nella gestione di errori*/
BEGIN TRY
    SELECT 1 / 0; 
END TRY
BEGIN CATCH
    SELECT 
        ERROR_NUMBER()   AS NumeroErrore,
        ERROR_SEVERITY() AS Gravita,
        ERROR_STATE()    AS Stato,	
        ERROR_PROCEDURE() AS Procedura,
        ERROR_LINE()     AS Riga,
        ERROR_MESSAGE()  AS Messaggio;
END CATCH;

/*Esempio di validazione dei parametri in T-SQL*/
CREATE OR ALTER PROCEDURE query.TrovaCliente
    @Nome VARCHAR(100),
	@Cognome VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    IF (@Nome IS NULL OR @Cognome IS NULL)
    BEGIN
        THROW 50001, 'Il campo Nome e cognome non può essere vuoto.', 1;
    END;

	SELECT *
	FROM   query.Clienti
	WHERE  Nome = @Nome AND Cognome = @Cognome
END;

EXEC dbo.TrovaCliente @Nome = null, @Cognome = null;

/*Attenzione alle performance! Il piano d'esecuzione (se non in cache) viene costruito sempre per l'intero codice della procedura, 
con il parametro passato in input*/


/*Procedure con parametri di OUTPUT*/
CREATE PROCEDURE query.GetClienteNome
    @IdCliente INT,
    @NomeCliente VARCHAR(100) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        @NomeCliente = Nome
    FROM query.Clienti
    WHERE IdCliente = @IdCliente;
END;
GO

/*Eseguiamo la procedura: ricordiamo di inserire OUTPUT anche in fase di esecuzione! */
DECLARE @Nome VARCHAR(100);

EXEC query.GetClienteNome 
    @IdCliente = 1,
    @NomeCliente = @Nome OUTPUT;

SELECT @Nome;


/*Utilizzo di RETURN*/
CREATE PROCEDURE query.GetClienteNome2
    @IdCliente INT,
    @NomeCliente NVARCHAR(100) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM query.Clienti WHERE IdCliente = @IdCliente)
    BEGIN
        RETURN 1; /*Il codice restante non viene eseguito*/
    END;

	SELECT 'Istruzione dopo return' as Msg

    SELECT 
        @NomeCliente = Nome
    FROM query.Clienti
    WHERE IdCliente = @IdCliente;

    RETURN 0;
END;


/*Esecuzione procedura*/
DECLARE @Nome NVARCHAR(100);
DECLARE @Esito INT;

EXEC @Esito = query.GetClienteNome2 
    @IdCliente = 2,      
    @NomeCliente = @Nome OUTPUT;

SELECT @Nome, @Esito

/*************
MERGE
*************/
/*Guardare questo link
https://www.mssqltips.com/sqlservertip/3074/use-caution-with-sql-servers-merge-statement/
*/


/**********************************
Interrogare le viste di sistema
**********************************/
/*Query per indici*/
WITH CTE AS (
SELECT 
	SCHEMA_NAME(o.schema_id) as schema_n,
    o.name as tabella,
	i.name as index_name,
	i.type_desc,
	i.is_primary_key,
	i.is_unique,
	i.is_unique_constraint,
	c.name as colonna,
	ic.key_ordinal as posizione,
	ic.is_descending_key,
	ic.is_included_column
FROM sys.indexes AS i 
INNER JOIN sys.objects AS o 
    ON i.OBJECT_ID = o.OBJECT_ID
INNER JOIN sys.index_columns AS ic
	ON i.index_id = ic.index_id
	AND i.object_id = ic.object_id
INNER JOIN sys.columns AS c
    ON ic.object_id = c.object_id
	AND ic.column_id = c.column_id
WHERE o.type='U'
)
SELECT  
	 schema_n,
	 tabella,
	 index_name,
	 type_desc,
	 is_primary_key,
	 is_unique,
	 is_unique_constraint,
	MAX(CASE WHEN posizione = 1 
	     THEN colonna
		 ELSE NULL
    END) AS Col1,
	MAX(CASE WHEN posizione = 2 
	     THEN colonna
		 ELSE NULL
    END) AS Col2,
	MAX(CASE WHEN posizione = 3
	     THEN colonna
		 ELSE NULL
    END) AS Col3,
	MAX(CASE WHEN posizione = 4
	     THEN colonna
		 ELSE NULL
    END) AS Col4,
	MAX(CASE WHEN posizione = 5
	     THEN colonna
		 ELSE NULL
    END) AS Col5,
	MAX(CASE WHEN posizione = 6
	     THEN 1
		 ELSE 0
    END) AS PiùDiCinqueColonne,
	SUM(CASE WHEN is_included_column = 1 
		 THEN 1
	     ELSE 0
		END) AS NumeroColonneIncluse,
	SUM(CASE WHEN is_descending_key = 1 
		 THEN 1
	     ELSE 0
		END) AS NumeroColonneOrdineDecrescente
FROM Cte
GROUP BY 
	 schema_n,
	 tabella,
	 index_name,
	 type_desc,
	 is_primary_key,
	 is_unique,
	 is_unique_constraint
ORDER BY schema_n,
	tabella, 
	type_desc, 
	Col1 desc, 
	Col2 desc, 
	Col3 desc,
	Col4 desc, 
	Col5 desc, 
	index_name;



/**********************************************
Analisi delle performance di una query
***********************************************/
/*Analizziamo i lcontenuto della SYS.dm_exec_query_stats*/
SELECT TOP 1
	   substring(t.text,(q.statement_start_offset/2) + 1, 
				(case q.statement_end_offset 
					when -1 then datalength(t.text)
					else q.statement_end_offset
				  end - q.statement_start_offset)/2 + 1) as query_text,
	   q.*
FROM   SYS.dm_exec_query_stats as q
OUTER APPLY sys.dm_exec_sql_text(q.sql_handle) t

/*Alcune metriche sono visibili dalla scheda Messaggi di SQL Server Management Studio*/
SET STATISTICS TIME ON
SET STATISTICS IO ON

/*Attenzione al tempo necessario per il rendering del risultato su SQL Server Management Studio*/

/*Attenzione alle attese!*/

/*Attenzione alle pagine lette in memoria e sul disco*/

/*Attenzione a IsMemoryGrantFeedbackAdjusted*/

/*Attenzione a Reason For Early Termination of Statement Optimization
https://learn.microsoft.com/en-us/troubleshoot/sql/database-engine/performance/troubleshoot-optimizer-timeout-performance
*/

/*********************************
Warning dei piani d'esecuzione
*********************************/
/*SQL Server ha chiesto eccessiva memoria RAM in relazione 
a quella effettivamente utilizzata*/
SELECT f2.IdCliente, c.Regione, f2.DataFattura
FROM   dbo.Clienti as c
CROSS APPLY (SELECT TOP 1
                 f.IdCliente, f.DataFattura
             FROM  dbo.Fatture as f
			 WHERE F.IdCliente = C.IdCliente
			 ORDER BY DataFattura
    ) AS f2;
	
/*Facciamo attenzione all'operatore Eagager Spool. 
Molto spesso potremmo prendere in considerazione
l'idea di creare l'indice oggetto dell'operatore*/


/*SQL Server ha chiesto un quantitativo di memoria RAM 
non sufficiente per l'esecuzione della query. Ha dovuto
usare memoria fisica sul TempDB */
CREATE OR ALTER PROCEDURE dbo.test_spill 
@nome VARCHAR(255)
AS
BEGIN
	SELECT * 
	FROM   qep.clienti 
	WHERE  nome=@nome
	ORDER BY cognome;
END

EXEC CorsoSQL.dbo.test_spill 'Alberto';

/*Si genera il warning*/
EXEC CorsoSQL.dbo.test_spill 'Nicola';


/*Una conversione di formato impatta la stima delle statistiche*/
SELECT *
FROM   dbo.fatture
WHERE  CONVERT(VARCHAR(50),DataFattura,112) = '20240101';

/*Osserviamo che la stima precedente non è corretta come 
interrogando direttamente la colonna */
SELECT *
FROM   dbo.fatture
WHERE  DataFattura = '20240101';

/*Attenzione ai falsi positivi. In questo caso
il warning non è motivo di preoccupazione */
SELECT CONVERT(VARCHAR(50),DataFattura,101) AS Data
FROM   dbo.fatture
WHERE  DataFattura = '20240101';


/*Join senza predicato.
In questo caso il warning è segnalato
anche dal piano d'esecuzione stimato.
Per i nostri fini di test
la top 10 è fondamentale altrimenti
le query sarebbero lentissime*/
SELECT TOP 10 *
FROM   Fatture AS F,
   Clienti AS C;
   
SELECT TOP 10 *
FROM   Fatture AS F
INNER JOIN Clienti AS C
	ON F.IdCliente = F.IdCliente;
   
   
/**********************************
PIANI D'ESECUZIONE IN PARALLELO
**********************************/
/*Alla prima esecuzione otteniamo un hint se è attiva la
feature dei piani d'esecuzione in parallelo.
Osserviamo i valori delle proprietà in memory grant Info*/
SELECT *
FROM   dbo.Fatture as f
ORDER BY DataPagamento


/*Tuttavia eseguendo nuovamente la query vediamo come
la memoria richiesta sia stata adattata*/
SELECT *
FROM   dbo.Fatture as f
ORDER BY DataPagamento


/*Comunque non è detto che le performance
siano sempre migliori con il parallelismo.
Generalmente ci aspettiamo di sì*/
SET STATISTICS TIME ON

SELECT *
FROM   dbo.Fatture as f
ORDER BY DataPagamento

SELECT *
FROM   dbo.Fatture as f
ORDER BY DataPagamento
OPTION (maxdop 1)

SET STATISTICS TIME OFF


/*Vediamo come l'utilizzo di una funzione
può impedire il parallelismo*/
CREATE or alter FUNCTION dbo.Test(@input int)
RETURNS DECIMAL(18,2)
AS
BEGIN
DECLARE @Valore DECIMAL(18,2)

IF @input > 0
	set @Valore = (SELECT MAX(@input) FROM Fatture WHERE IDFATTURA = @INPUT) * 2

RETURN @Valore
END

/*Eseguiamo questa query*/
SELECT *, DBO.Test(IdFattura)
FROM   dbo.Fatture as f
ORDER BY DataPagamento

/*Solo nelle ultime versioni SQL Server riesce a parallelizzare
alcune funzioni, ad esempio se in precedenza togliamo 
il MAX, la funzione viene parallelizzata. */


/**************************
DCL
**************************/
/*Posizioniamoci sul database master*/
USE master;

/*Creiamo un account di accesso con autenticazione SQL Server*/
CREATE LOGIN sviluppatore WITH PASSWORD = 'ciao';

/*Posizioniamoci sul database corsosql*/
USE CorsoSQL;

/*Creiamo un utente del database collegato al login precedente*/
CREATE USER sviluppatore_CorsoSQL FOR LOGIN sviluppatore;

/*Con la prossima istruzione sviluppatore_CorsoSQL 
può interrogare solo la tabella dbo.Clienti.
Non può però modificarla.
*/
GRANT SELECT ON dbo.Clienti TO sviluppatore_CorsoSQL;


/*Con la prossima istruzione sviluppatore_CorsoSQL può interrogare tutte 
le tabelle dello schema dbo */
GRANT SELECT ON SCHEMA::dbo TO sviluppatore_CorsoSQL;


/*Revocando i permessi a livello di schema, sviluppatore_CorsoSQL torna a poter 
interrogare soltanto la tabella dbo.Clienti */
REVOKE SELECT ON SCHEMA::dbo TO sviluppatore_CorsoSQL;


/*Assegniamo nuovamente i permessi di SELECT a tutte le tabelle dello schema dbo*/
GRANT SELECT ON SCHEMA::dbo TO sviluppatore_CorsoSQL;


/*Vietiamo esplicitamente la SELECT della tabella Fatture. sviluppatore_CorsoSQL
potrà ora interrogare tutte le tabelle dello schema dbo ad eccezione di dbo.Fatture
*/
DENY SELECT ON dbo.Fatture TO sviluppatore_CorsoSQL;


/*Con questa REVOKE revochiamo la DENY esplicita su dbo.Fatture. sviluppatore_CorsoSQL
potrà interrogare di nuovo tutte le tabelle dello schema dbo
*/
REVOKE SELECT ON dbo.Fatture TO sviluppatore_CorsoSQL;


/*Vietiamo espressamente la SELECT su tutte le tabelle dello schema dbo.
sviluppatore_CorsoSQL NON potrà interrogare nessuna tabella dello schema dbo*/
DENY SELECT ON SCHEMA::dbo TO sviluppatore_CorsoSQL;


/*Assegniamo i diritti di lettura direttamente sulla tabella dbo.Clienti.
Tuttavia sviluppatore_CorsoSQL NON potrà comunque interrogare la tabella
dbo.Clienti per via della DENY a livello di schema. La DENY "ha precedenza"
sul GRANT*/
GRANT SELECT ON dbo.Clienti TO sviluppatore_CorsoSQL;


/*Con le stored procedure/viste il comportamento è più complicato
https://www.mssqltips.com/sqlservertip/6394/understanding-sql-server-ownership-chaining/
*/


/*******************************************************
Esempio di utilizzo di cursori e costrutti iterativi
*******************************************************/

CREATE OR ALTER PROCEDURE dbo.Perceptron
 @epoche INT = 10, 
 @eta DECIMAL(18,4) = 0.1
AS
BEGIN
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRY
	/*inizializziamo il vettore w*/
	CREATE TABLE #w (w0 decimal(18,4), 
		w1 decimal(18,4), 
		w2 decimal(18,4), 
		w3 decimal(18,4), 
		w4 decimal(18,4));
		
	INSERT INTO #w(w0, w1, w2, w3, w4)
	VALUES(0,0,0,0,0);

	/*creiamo una variabile I per iterare il procedimento un certo numero di volte*/
	DECLARE @I INT = 1

	/*ciclo while*/
	WHILE @I < @epoche
	BEGIN
	
		DECLARE @predizione DECIMAL(18,2);
		DECLARE @class DECIMAL(18,2);
		DECLARE @RowNumber INT;
		DECLARE @sepal_length DECIMAL(18,4);
		DECLARE @sepal_width DECIMAL(18,4);
		DECLARE @petal_length DECIMAL(18,4);
		DECLARE @petal_width DECIMAL(18,4);
		DECLARE @bias DECIMAL(18,4);

		/*dichiariamo un cursore contenente le righe del dataset di Training
		ordinate in modo randomico*/
		DECLARE cursore CURSOR
		FOR SELECT RowNumber,sepal_length,sepal_width,petal_length,petal_width,bias,class
		    FROM dbo.IrisTraining
		    ORDER BY NEWID();

		/*apriamo il cursore */
		OPEN cursore;

		/*inseriamo il valore corrente del cursore nelle variabili*/
		FETCH NEXT FROM cursore 
		INTO @RowNumber, @sepal_length, @sepal_width, @petal_length, @petal_width, @bias, @class;
		
		/*ciclo while sulle righe del cursore*/
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
			/*calcoliamo la predizione */			
			SELECT @predizione = 
				CASE WHEN @sepal_length * w0 + 
						  @sepal_width * w1 + 
						  @petal_length* w2 + 
						  @petal_width* w3 + 
						  @bias * w4 > 0
						THEN 1 
						ELSE -1 
				END
			FROM #w;

			/*aggiornamento il vettore w*/
			UPDATE #w
			SET w0 = w0 + @eta*(@class-@predizione)*@sepal_length,
				w1 = w1 + @eta*(@class-@predizione)*@sepal_width,
				w2 = w2 + @eta*(@class-@predizione)*@petal_length,
				w3 = w3 + @eta*(@class-@predizione)*@petal_width,
				w4 = w4 + @eta*(@class-@predizione)*@bias

			/*valorizziamo le variabili con la riga seguente del cursore*/
			FETCH NEXT FROM cursore 
			INTO @RowNumber, @sepal_length, @sepal_width, @petal_length, @petal_width, @bias, @class;
		END

		/*chiudiamo e deallochiamo il cursore*/
		CLOSE cursore
		DEALLOCATE cursore

		/*incrementiamo il numero di iterazioni*/
		SET @I = @I + 1
	END
	BEGIN TRAN
		DELETE FROM CorsoSQL.dbo.W;

		INSERT INTO CorsoSQL.dbo.W(w0,w1,w2,w3,w4)
		SELECT w0,w1,w2,w3,w4
		FROM   #w;

	COMMIT
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK;

	THROW
END CATCH
END

/*Eseguiamo la procedura*/
EXEC dbo.Perceptron;


/*Guardiamo il vettore delle predizioni*/
SELECT * 
FROM   dbo.W;


/*Calcoliamo le predizioni sui dati di test*/
SELECT IrisTest.*, 
	CASE WHEN sepal_length * w0 + 
			  sepal_width * w1 + 
			  petal_length* w2 + 
			  petal_width* w3 + 
			 bias * w4 > 0
		 THEN 1 
		 ELSE -1 
	END AS Predizione
FROM   dbo.IrisTest
CROSS JOIN dbo.W;


/****************
LOCKING
****************/
/*Lanciare nella prima sessione*/
BEGIN TRAN
	UPDATE CorsoSQL.dbo.clienti
	SET    nome='a'

/*Lanciare nella seconda sessione*/
BEGIN TRAN
	UPDATE CorsoSQL.dbo.clienti
	SET    nome='B'

/*Lanciare nella terza sessione*/
select w.session_id,
       w.blocking_session_id,
	   s.last_request_start_time,
       w.wait_duration_ms/1000 as attesa_in_secondi,
	   resource_description,
	   w.*,
	   s.*
from sys.dm_os_waiting_tasks as w
inner join sys.dm_exec_sessions AS s
   on w.session_id = s.session_id  
where s.is_user_process = 1
order by s.last_request_start_time;

/*Il campo resource description contiene
xactlock xdesIdLow=121819 xdesIdHigh=0 dbid=5 id=lock1f0fd0b0f00 mode=X UnderlyingResource  keylock hobtid=72057594047168512 dbid=5
*/
SELECT OBJECT_NAME(object_id), 
       *
FROM sys.partitions 
WHERE hobt_id = 72057594047168512;

/*Ricordiamoci di fare rollback sulle varie sessioni*/

/*Query in esecuzione su una particolare sessione*/
SELECT text,
       substring(text,(statement_start_offset/2) + 1, 
				(case statement_end_offset 
					when -1 then datalength(text)
					else statement_end_offset
				  end - statement_start_offset)/2 + 1) as query_text,
	  transaction_id,
	   *
FROM  sys.dm_exec_requests er
CROSS APPLY sys.dm_exec_sql_text(ER.sql_handle)
WHERE SESSION_ID = 64


/*Se non sta girando niente, query più recente su quella sessione*/
select text,* 
from sys.dm_exec_connections ec
CROSS APPLY sys.dm_exec_sql_text(ec.most_recent_sql_handle)
where session_id = 64


/*********************
ANALISI PERFORMANCE
**********************/
/*ATTENZIONE: molto spesso andrò in CROSS APPLY con la
sys.dm_exec_sql_text che contiene il testo del batch SQL.
Per le query occorrerà analizzare una relativa sottostringa.

ATTENZIONE: sia all'interno delle procedure e sia all'interno 
delle query può essere presente qualsiasi tipologia di codice.
Anche codice contenente ALTER, DROP, TRUNCATE, INSERT, UPDATE...
o codice lanciato in background da SQL Server.
Attenzione a non eseguire per errore ciò che è presente nel campo 
text

ATTENZIONE: se la procedura o la query contiene un commento con
la sintassi del doppio trattino --, non riuscirò più a comprendere
il testo da queste viste.

ATTENZIONE: tramite sys.dm_exec_query_plan posso ricavare il 
piano d'esecuzione stimato della procedura/query. Questo però 
potrebbe allungare i tempi di esecuzione della query di monitoraggio.
*/

/*Ultime 10 procedure eseguite*/
SELECT TOP 10 
	   DB_NAME(s.database_id) AS DatabaseName,
	   t.text,
	   s.total_elapsed_time / s.execution_count / 1000000.0 AS Avg_Elapsed_Time,
	   s.total_worker_time / s.execution_count / 1000000.0 AS Avg_Cpu_Time,
	   s.*
FROM   sys.dm_exec_procedure_stats as s
OUTER APPLY sys.dm_exec_sql_text(s.sql_handle) t
ORDER BY s.last_execution_time DESC;


/*TOP 5 procedure con tempo medio di durata maggiore*/
SELECT TOP 5 
	   DB_NAME(s.database_id) AS DatabaseName,
	   t.text,
	   s.total_elapsed_time / s.execution_count / 1000000.0 AS Avg_Elapsed_Time,
	   s.total_worker_time / s.execution_count / 1000000.0 AS Avg_Cpu_Time,
	   s.*
FROM   sys.dm_exec_procedure_stats as s
OUTER APPLY sys.dm_exec_sql_text(s.sql_handle) t
ORDER BY Avg_Elapsed_Time DESC;


/*Ultime 10 query eseguite*/
SELECT TOP 10 
	   DB_NAME(t.dbid) AS DBName_spesso_non_disponibile,
	   substring(t.text,(q.statement_start_offset/2) + 1, 
				(case q.statement_end_offset 
					when -1 then datalength(t.text)
					else q.statement_end_offset
				  end - q.statement_start_offset)/2 + 1) as query_text,
	   q.total_elapsed_time / q.execution_count / 1000000.0 AS Avg_Elapsed_Time,
	   q.total_worker_time / q.execution_count / 1000000.0 AS Avg_Cpu_Time,
	   q.*
FROM   SYS.dm_exec_query_stats as q
OUTER APPLY sys.dm_exec_sql_text(q.sql_handle) t
ORDER BY q.last_execution_time DESC;


/*TOP 5 query con tempo medio di durata maggiore*/
SELECT TOP 10 
	   DB_NAME(t.dbid) AS DBName_spesso_non_disponibile,
	   substring(t.text,(q.statement_start_offset/2) + 1, 
				(case q.statement_end_offset 
					when -1 then datalength(t.text)
					else q.statement_end_offset
				  end - q.statement_start_offset)/2 + 1) as query_text,
	   q.total_elapsed_time / q.execution_count / 1000000.0 AS Avg_Elapsed_Time,
	   q.total_worker_time / q.execution_count / 1000000.0 AS Avg_Cpu_Time,
	   q.*
FROM   SYS.dm_exec_query_stats as q
OUTER APPLY sys.dm_exec_sql_text(q.sql_handle) t
ORDER BY Avg_Elapsed_Time DESC;


/*Aggiungiamo alla query il piano d'esecuzione.
Attenzione, questa query può richiedere tanto tempo.
Valutare se annullare l'esecuzione*/
SELECT TOP 10 
	   DB_NAME(t.dbid) AS DBName_spesso_non_disponibile,
	   substring(t.text,(q.statement_start_offset/2) + 1, 
				(case q.statement_end_offset 
					when -1 then datalength(t.text)
					else q.statement_end_offset
				  end - q.statement_start_offset)/2 + 1) as query_text,
	   c.query_plan,
	   q.total_elapsed_time / q.execution_count / 1000000.0 AS Avg_Elapsed_Time,
	   q.total_worker_time / q.execution_count / 1000000.0 AS Avg_Cpu_Time,
	   q.*
FROM   SYS.dm_exec_query_stats as q
OUTER APPLY sys.dm_exec_sql_text(q.sql_handle) t
OUTER APPLY sys.dm_exec_query_plan(q.plan_handle) as c  
ORDER BY Avg_Elapsed_Time DESC;


/*********************
DEADLOCK
**********************/
/*Lanciare nella prima sessione*/
BEGIN TRAN
	UPDATE CorsoSQL.query.clienti
	SET    nome='a';
	
/*Lanciare nella seconda sessione*/
BEGIN TRAN
	UPDATE CorsoSQL.query.fatture
	SET    importo=10;

/*Tornare nella prima sessione*/
	UPDATE CorsoSQL.query.fatture
	SET    importo=10;

/*Tornare nella seconda sessione*/
	UPDATE CorsoSQL.query.clienti
	SET    nome='a';

/*Si genera un deadlock!*/
/*Ricordiamo di fare ROLLBACK nelle varie sessioni*/



/************************
Livelli di isolamento
************************/

/*Nolock*/
/*Non andrebbe mai usato
https://www.brentozar.com/archive/2019/08/but-nolock-is-okay-when-the-data-isnt-changing-right/
*/

/*Read Committed (NO Snapshot)*/
/*Nella prima sessione lanciare*/
BEGIN TRAN
	UPDATE CorsoSQL.query.Clienti
	SET    Nome = 'Nicoletta'
	WHERE  IdCliente = 2;

/*Nella seconda sessione lanciamo questa select. Sarà lockata.*/
SELECT * 
FROM   query.Clienti 
WHERE  IdCliente = 2;

/*Lo stesso vale a maggior ragione per le update */
UPDATE CorsoSQL.query.Clienti
SET    Nome = 'Nicoletta'
WHERE  IdCliente = 2;
/*Ricordiamoci di fare rollback nella prima sessione*/


/*Read Committed Snapshot*/
/*Nella prima sessione lanciare*/
BEGIN TRAN
	UPDATE CorsoSQL.query.Clienti
	SET    Nome = 'Nicoletta'
	WHERE  IdCliente = 2;

/*Nella seconda sessione lanciamo questa select */
SELECT * 
FROM   query.Clienti 
WHERE  IdCliente = 2;
/*Vedo il dato originale. La transazione precedente utilizza il tempdb per avere una versione temporanea.*/

/*Nella seconda sesione le update sono comunque lockate (SQL Server decidera se espandere il lock dalla riga, alla pagina o alla tabella */
UPDATE CorsoSQL.query.Clienti
SET    Nome = 'Nicoletta'
WHERE  IdCliente = 2;
/*Ricordiamoci di fare rollback nella prima sessione*/

/*aTTENZIONE DUNQUE ALLE DIFFERENZE CON IL LIVELLO READ COMMITTED (NO SNAPSHOT)
https://www.brentozar.com/archive/2014/12/read-committed-snapshot-isolation-writers-block-rcsi/
*/


/*Serializable level*/
/*Non abilitiamo il livello di isolamento sull'intera sessione (ben che meno sul DB). Usiamo però un HINT di query
Nella prima sessione lanciare*/
BEGIN TRAN
	SELECT * 
	FROM query.Clienti WITH(HOLDLOCK)
	WHERE IdCliente >= 2;

/*Nella seconda sessione lanciamo questa insert. Resterà in attesa!
Per inserimenti o update che coinvolgono righe fuori dal range, dipenderà dal livello di lock scelto da SQL Server*/
INSERT INTO CorsoSQL.query.Clienti (IdCliente, Nome)
VALUES (2, 'Giovanni'); 

/*Le letture invece restano possibili*/
SELECT * 
FROM  query.Clienti 
WHERE IdCliente >= 2;
/*Ricordiamoci di fare rollback nella prima sessione*/

/*In alcuni contesti particolari, per evitare le race condition potrei necessitare che una select in transazione blocchi addirittura
anche le altre select. Un'idea è inserire nelle select in transazione l'istruzione WITH(HOLDLOCK,UPDLOCK), facendo sempre
attenzione alle differenze tra READ COMMITTED e READ COMMITTED SNAPSHOT*/


/******************
PARTITIONED TABLE
******************/
/*
Si tratta di una tecnica di gestione dei dati, non legata alle performance
https://learn.microsoft.com/it-it/sql/relational-databases/partitions/partitioned-tables-and-indexes?view=sql-server-ver17
*/

/*Creiamo una funzione  di partizione*/
CREATE PARTITION FUNCTION f_anni(DATE)
AS RANGE RIGHT  
FOR VALUES ('20230101','20240101','20250101');

/*In questo modo creo quattro partizioni 
Prima partizione:   <'20230101'
Seconda partizione: >='20230101' and < '20240101'
Terza partizione:   >='20240101' and < '20250101'
Quarta partizione:  >='20250101' 
Viene considerata una buona pratica avere una partizione vuota all'inizio e alla fine
*/

/*Creiamo uno schema di partizione per associare le partizioni ad un Filegroup.
Su Azure ho a disposizione solamente il filegroup PRIMARY.
Il messaggio ci avvisa inoltre che Primary sarà inoltre il filegroup usato per la prossima partizione.
*/
CREATE PARTITION SCHEME s_anni
AS PARTITION f_anni
ALL TO ( [PRIMARY] );

/*Creiamo una tabella che segue questa partizione*/
CREATE TABLE dbo.FatturePartizionate(
	IdFattura INT NOT NULL IDENTITY(1,1),
	DataFattura DATE NOT NULL,
	Importo DECIMAL(18,4) NOT NULL,
	PRIMARY KEY(IdFattura, DataFattura)
	) ON s_anni(DataFattura);

/*Inseriamo un po' di dati*/
INSERT INTO CorsoSQL.dbo.FatturePartizionate(DataFattura, Importo)
SELECT DataFattura, Spedizione
FROM   dbo.Fatture;

/*Lanciamo queste query per vedere la distribuzione dei dati nelle partizioni*/
SELECT 
    $PARTITION.order_by_year_function(DataFattura) AS PartitionNumber,
    COUNT(*) AS NumeroRighe
FROM CorsoSQL.dbo.FatturePartizionate
GROUP BY $PARTITION.order_by_year_function(DataFattura) 
ORDER BY PartitionNumber;

SELECT 
	SCHEMA_NAME(o.schema_id) AS nome_schema,
	o.name AS nome_tabella,
	i.name AS nome_indice,
	p.partition_id,
	p.partition_number,
	p.[rows] as numero_righe
FROM sys.partitions p
INNER JOIN sys.objects o 
	ON o.object_id=p.object_id
INNER JOIN sys.indexes i 
	ON i.object_id=p.object_id 
	AND p.index_id=i.index_id
WHERE o.name LIKE 'FatturePartizionate'
  and SCHEMA_NAME(O.schema_id) = 'dbo';

/*Alcune query possono beneficiare dalla partizione.
Guardiamo l'actual partition count.*/
SELECT *
FROM   dbo.FatturePartizionate
WHERE  DataFattura = '20230723';

/*Altre possono anche avere dei rallentamenti perché devono scorrere tutte le partizioni */
https://kendralittle.com/course/tuning-problem-queries-in-table-partitioning/the-max-min-problem-query-8-minutes/
https://www.brentozar.com/archive/2015/09/why-is-this-partitioned-query-slower/

/*Aggiungiamo una partizione. 
Assicurarsi di splittare all'interno di una partizione vuota,altrimenti
potrebbe richiedere moltissimo tempo!*/
ALTER PARTITION FUNCTION f_anni() 
SPLIT RANGE ('20260101');

/*Se provassi con un'altra data successiva otterrei un errore.
Devo prima modificare il partition schema */
ALTER PARTITION SCHEME s_anni
NEXT USED [PRIMARY];

ALTER PARTITION FUNCTION f_anni() 
SPLIT RANGE ('20270101');

/*L'allineamento degli indici alla partizione è obbligatorio per poter effettuare
operazioni di switch dei dati tra partition */
https://www.brentozar.com/archive/2013/01/sql-server-table-partitioning-tutorial-videos-and-scripts/



/****************
QUERY STORE
****************/
/*Link utili
https://learn.microsoft.com/en-us/sql/relational-databases/system-catalog-views/sys-database-query-store-options-transact-sql?view=sql-server-ver16

https://kendralittle.com/2024/08/12/query-store-failed-forced-plans-general-failure-even-slower-compile-time/
*/

/*Stato del Query Store*/
SELECT *
FROM sys.database_query_store_options;


/*Esempio di query per estrarre le query con più piani*/
SELECT qsq.query_id,
	MAX(txt.query_sql_text) AS Testo_query,
	OBJECT_NAME(MAX(qsq.object_id)) AS Nome_procedura,
	COUNT(qsp.plan_id) as Numero_piani
FROM sys.query_store_query AS qsq
INNER JOIN sys.query_store_query_text AS txt 
	ON qsq.query_TEXT_id = txt.query_TEXT_id
INNER JOIN sys.query_store_plan AS qsp
	ON qsq.query_id = qsp.query_id
GROUP BY qsq.query_id
HAVING COUNT(qsp.plan_id)>1;


/*********************************
* JSON
**********************************/

/*ATTENZIONE! I nomi dei campi JSON sono case sensitive*/

DECLARE @json_string VARCHAR(MAX) = '
{"id_fattura":1,
"nome_prodotto":"Prodotto1",
"tipologia":"A",
"importo":120.12,
"data_fattura":"2018-05-01"}';

SELECT *
FROM   OpenJson(@json_string) AS f;


SELECT *
FROM   OpenJson(@json_string)
WITH (
  id_fattura INT '$.id_fattura',
  nome_prodotto VARCHAR(50) '$.nome_prodotto',
  tipologia VARCHAR(50) '$.tipologia',
  importo DECIMAL(18,4) '$.importo',
  data_fattura DATE '$.data_fattura'
) AS f;
--N.B. Attenzione al datetime. Se ad esempio SELECT @@LANGUAGE restituisce
--italian, valori come 2020-01-05 (con il trattito come separatore)
-- sarebbero letti come 1 maggio 2020 in una colonna datetime

--json più complessi
DECLARE @json_string VARCHAR(max) = '
{"id_fattura":1,
"cliente":{"id_cliente": 2,
           "nome":"nicola",
            "cognome":"Iantomasi"},
"tipologie":["A","V"]
}';

SELECT *
FROM   OpenJson(@json_string)
WITH (
 id_fattura INT '$.id_fattura',
 cliente NVARCHAR(MAX) '$.cliente' AS JSON,
 tipologie NVARCHAR(MAX) '$.tipologie' AS JSON
) AS f;

SELECT 
 f.id_fattura,
 f.id_cliente,
 f.nome,
 f.cognome,
 t.tipologia
FROM   OpenJson(@json_string)
WITH (
 id_fattura INT '$.id_fattura',
 id_cliente INT '$.cliente.id_cliente',
 nome VARCHAR(50) '$.cliente.nome',
 cognome VARCHAR(50) '$.cliente.cognome',
 tipologia NVARCHAR(MAX) '$.tipologie' AS JSON
) AS f 
OUTER APPLY 
OpenJson(f.tipologia)
WITH (
 tipologia VARCHAR(20) '$') AS  t;



--Trasformare una tabella in un JSON
SELECT TOP 2 
  IdFattura, 
  Importo AS [DatiContabili.importo],
  Iva AS [DatiContabili.iva] 
FROM query.Fatture 
FOR JSON PATH;

SELECT
  c.IdCliente,
  (SELECT IdFattura ,
          Importo
   FROM query.Fatture AS f
   WHERE f.IdCliente = c.IdCliente
   FOR JSON PATH) AS Fatture
FROM query.Clienti AS c
FOR JSON PATH;

/*Su Azure SQL posso definire variabili e colonne anche di tipo JSON!*/

CREATE TABLE query.table_with_json (json_column JSON);

INSERT INTO query.table_with_json (json_column)
VALUES 
  ('{"NomeCorso":"Analisi dei dati","NumeroPartecipanti": 6}'),
  ('{"NomeCorso":"Python","NumeroPartecipanti": 8}'),
  ('{"NomeCorso":"SQL","NumeroPartecipanti": 7}')

SELECT *
FROM   query.table_with_json
WHERE  JSON_VALUE(json_column, '$.NumeroPartecipanti')>=7;



/**********
XML
**********/
/*Vediamo il corrispettivo con l'XML*/
/*ATTENZIONE! Anche i nomi delle etichette XML sono case sensitive*/
DECLARE @xml_string XML = '
<fattura>
  <id_fattura>1</id_fattura>
  <nome_prodotto>Prodotto1</nome_prodotto>
  <tipologia>A</tipologia>
  <importo>120.12</importo>
  <data_fattura>2018-05-01</data_fattura>
</fattura>';

SELECT
    f.value('(id_fattura/text())[1]', 'INT')            AS id_fattura,
    f.value('(nome_prodotto/text())[1]', 'VARCHAR(50)') AS nome_prodotto,
    f.value('(tipologia/text())[1]', 'VARCHAR(50)')     AS tipologia,
    f.value('(importo/text())[1]', 'DECIMAL(18,4)')     AS importo,
    f.value('(data_fattura/text())[1]', 'DATE')         AS data_fattura
FROM @xml_string.nodes('/fattura') AS X(f);


SELECT TOP 2 
  IdFattura, 
  Importo      AS "DatiContabili/importo",
  Iva          AS "DatiContabili/iva"
FROM query.Fatture
FOR XML PATH('fattura'), ROOT('Fatture');


SELECT
    c.IdCliente,
    (
        SELECT f.IdFattura, f.Importo
        FROM query.Fatture AS f
        WHERE f.IdCliente = c.IdCliente
        FOR XML PATH('fattura'), ROOT('Fatture'), TYPE
    ) AS Fatture
FROM query.Clienti AS c
FOR XML PATH('Cliente'), ROOT('Clienti');


CREATE TABLE query.table_with_xml (
    xml_column XML
);

INSERT INTO query.table_with_xml (xml_column)
VALUES
('<corso><NomeCorso>Analisi dei dati</NomeCorso><NumeroPartecipanti>6</NumeroPartecipanti></corso>'),
('<corso><NomeCorso>Python</NomeCorso><NumeroPartecipanti>8</NumeroPartecipanti></corso>'),
('<corso><NomeCorso>SQL</NomeCorso><NumeroPartecipanti>7</NumeroPartecipanti></corso>');


SELECT
   t.*
FROM query.table_with_xml AS t
CROSS APPLY xml_column.nodes('/corso') AS X(c)
WHERE c.value('(NumeroPartecipanti/text())[1]', 'INT') >= 7;


/***************
String agg
****************/
SELECT  
   IdFattura,
   STRING_AGG(IdProdotto, 
              ';') AS Prodotti
FROM    dbo.FattureProdotti
GROUP BY IdFattura;

--aggiungiamo un ordinamento
SELECT  
   IdFattura,
   STRING_AGG(IdProdotto, 
              ';') 
		WITHIN GROUP (ORDER BY IdProdotto desc) AS Prodotti
FROM    dbo.FattureProdotti
GROUP BY IdFattura;

--gestione null
SELECT IdFattura,
   STRING_AGG(Sconto,
              ';') WITHIN GROUP (ORDER BY idprodotto ) ,
	STRING_AGG(isnull(Sconto,-999),
              ';') WITHIN GROUP (ORDER BY idprodotto ) ,
	STRING_AGG(isnull(cast(Sconto as varchar(255)),''),
              ';') 
		WITHIN GROUP (ORDER BY idprodotto ) 
FROM dbo.FattureProdotti
WHERE IdFattura = 277
GROUP BY idfattura;

/*Attenzione al tipo in output di string_agg! 
https://learn.microsoft.com/it-it/sql/t-sql/functions/string-agg-transact-sql?view=sql-server-ver17
*/

--************************
--CLAUSOLA OUTPUT
--************************
CREATE TABLE CorsoSQL.query.ClientiLog(
	IdCliente [varchar](50) NULL,
	Nome [varchar](50) NULL,
	Cognome [varchar](50) NULL,
	DataNascita [date] NULL,
	RegioneResidenza [varchar](50) NULL,
	TipologiaModifica varchar(50) NOT NULL,
	data_modifica datetime not null
); 

DELETE FROM CorsoSQL.query.Clienti
	OUTPUT deleted.IdCliente, deleted.Nome,
		deleted.Cognome, deleted.DataNascita,
		deleted.RegioneResidenza, 'cancellazione',
		getdate()
	INTO  CorsoSQL.query.ClientiLog (IdCliente,
						Nome, 
						Cognome,
						DataNascita,
						RegioneResidenza,
						TipologiaModifica ,
						data_modifica) 
WHERE IdCliente = 1;
