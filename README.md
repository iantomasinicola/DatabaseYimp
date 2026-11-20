# DatabaseYimp: database di esempio in italiano per esercitarsi con SQL

Script per creare database di esempio **in italiano**, già popolati con dati, su
**SQL Server, MySQL e PostgreSQL**. Li uso nei miei corsi SQL e negli esercizi della
[Guida SQL e Database](https://www.yimp.it/guida-sql-database/).
Su SQL Server gli script creano un database, su MySQL e PostgreSQL uno schema.

> Usali solo su un'installazione personale e di test.

## Contenuto

| File | Cosa contiene |
| --- | --- |
| Gestionale_SqlServer.txt, Gestionale_MySql.txt, Gestionale_PostgreSQL.txt | Database Gestionale: Clienti, Corrieri, Fatture, FattureProdotti, Fornitori e Prodotti |
| ScriptDatabaseBanca_SqlServer.sql, ScriptDatabaseBanca_MySql.sql | Database Banca: Clienti, ContoCorrente, ClientiContiCorrente, CarteCredito e Servizi |
| CreaDatabase_CorsoSQL.sql | Database CorsoSQL usato nelle lezioni del corso SQL |
| Create Management Database.sql | Database Management per SQL Server |
| 03_Normalizzazione di un database.sql, CodiceDbNonNormalizzato.txt | Esercizio sulla normalizzazione di un database |
| DWH, Sample - Superstore_1/2/3.csv | Script SQL Server per un Data Warehouse a livelli, a partire dal livello Bronze, sui dati di vendita Superstore |
| Lezioni_settembre_Querying_SQL_Server.sql | Esempi delle lezioni su SQL Server, tra cui transazioni e livelli di isolamento |
| Projectwork_20250904, Workshop_4_settembre.pdf | Workshop su scrittura delle query e tuning delle performance |
| Clienti.csv, Fatture.xlsx, Excel.xlsx | File per esercitarsi con l'importazione dei dati |

## Come usarli

1. Installa in locale SQL Server, MySQL o PostgreSQL.
2. Apri lo script del database che ti interessa, nella versione per il tuo DBMS, ed eseguilo.
3. Esercitati con le lezioni della [Guida SQL e Database](https://www.yimp.it/guida-sql-database/)
   e, per le performance, con la guida [T-SQL avanzato](https://www.yimp.it/tsql-avanzato-performance-sql-server/).

## Autore

[Nicola Iantomasi](https://www.yimp.it/nicola-iantomasi/), formatore e consulente di Intelligenza
Artificiale e Data Analysis. [Corso SQL](https://www.yimp.it/corso-sql-academy/) ·
[Consulenza SQL](https://www.yimp.it/consulenza-sql/) ·
[Consulenza performance SQL Server](https://www.yimp.it/consulenza-performance-sql-server/)
