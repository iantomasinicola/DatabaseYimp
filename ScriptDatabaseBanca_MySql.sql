create database Banca;
use Banca;
create table Clienti (
	CodiceFiscale varchar(16) not null,
    Nome varchar(50) not null,
    Cognome varchar(50) not null,
    Eta int not null,
    Residenza varchar(50) not null,
    Impiego varchar(50) not null);
    

create table ContiCorrenti (
	NumeroConto int not null,
    Saldo decimal(18,4) not null,
    Valuta varchar(3) not null,
    DataApertura date not null,
    DataChiusura date null
    );
    
    
Create table ClientiContiCorrenti (
	CodiceFiscale varchar(16) not null,
    NumeroConto int not null
    );
    
Create table CarteCredito (
	 NumeroCarta int not null,
     CodiceFiscale varchar(16) not null,
     Tipologia varchar(30) not null,
     Circuito varchar(30) not null,
     Saldo decimal(18,4) not null,
     Valuta varchar(3) not null
     );
 

INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('AWNNLZ36R05E168T', 'Giovanni', 'Verdi', '45', 'Puglia', 'Impiegato');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('BHLVVP64C64F735E', 'Alice', 'Gianni', '34', 'Sicilia', 'Dirigente');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('BHLVVR64R64F635E', 'Cristina', 'Gianni', '56', 'Lombardia', 'Preside');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('CDPKXR28E62A973B', 'Grazia', 'Fabrizi', '59', 'Toscana', 'Disoccupato');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('DWNNLZ36P05E168T', 'Maria', 'Verdi', '54', 'Toscana', 'Dirigente');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('FLTXCI58H51E295S', 'Mike', 'Moratti', '36', 'Toscana', 'Professore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('FLTXRI58H51E295S', 'Mino', 'Moratti', '56', 'Lombardia', 'Commerciante');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('GMCGYC77C17D591G', 'Nicola', 'Motta', '66', 'Toscana', 'Calciatore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('GMRGYR66R16A591X', 'Luigi', 'Motta', '36', 'Puglia', 'Preside');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('JHLTTS66P17H911Y', 'Nicola', 'Verdi', '54', 'Lazio', 'Impiegato');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('JHLTTS66R16H911W', 'Francesco', 'Verdi', '67', 'Piemonte', 'Disoccupato');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('JTTSNC68A45G196J', 'Giuseppe', 'Bianchi', '31', 'Toscana', 'Preside');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('JTTSNR68A45G196J', 'Maria', 'Bianchi', '51', 'Puglia', 'Calciatore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('KATNTH80H51A264L', 'Nello', 'Marino', '60', 'Puglia', 'Disoccupato');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('KDTNTH80H51A274L', 'Francesco', 'Marino', '34', 'Toscana', 'Calciatore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('LTTLTT63P56Z327R', 'Giovanni', 'Rossi', '34', 'Toscana', 'Commerciante');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('LTTLTT63R56Z326R', 'Seth', 'Rossi', '46', 'Puglia', 'Muratore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('MCGTBC98M31H102O', 'Scott', 'Fabrizi', '48', 'Toscana', 'Commerciante');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('MRGTBR98M31H102S', 'Maria', 'Fabrizi', '65', 'Puglia', 'Muratore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('MRZQAR66R16A281I', 'Giovanni', 'Gianni', '36', 'Lombardia', 'Calciatore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('MRZQDC66P17A281I', 'Giovanni', 'Gianni', '45', 'Toscana', 'Disoccupato');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('MXXHPR88A02D895O', 'Fabrizio', 'Fabrizi', '40', 'Sicilia', 'Calciatore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('MXXHRR88A02A895O', 'Pino', 'Fabrizi', '57', 'Lombardia', 'Professore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('PVPKTO80T64G614O', 'Irene', 'Motta', '31', 'Sicilia', 'Impiegato');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('RARKXR28E62A963B', 'Frank', 'Fabrizi', '63', 'Puglia', 'Dirigente');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('RQMNHF29T53I482R', 'Franca', 'Bianchi', '44', 'Piemonte', 'Commerciante');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('RQMNHF29T53I482T', 'Giovanni', 'Bianchi', '50', 'Lazio', 'Calciatore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('RVRKTO80T64G614O', 'Vera', 'Motta', '57', 'Lombardia', 'Disoccupato');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('SRALZQ40M58A184Q', 'Giovanni', 'Rossi', '67', 'Piemonte', 'Preside');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('SRDLZQ40M58A184Y', 'Fabrizio', 'Rossi', '20', 'Lazio', 'Muratore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('TPPNZN61D47F853F', 'Giovanna', 'Moratti', '61', 'Sicilia', 'Commerciante');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('TRRNZN61A46F853F', 'Marina', 'Moratti', '39', 'Lombardia', 'Muratore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('TYRSGP84A43B866O', 'Maria', 'Paoli', '40', 'Sicilia', 'Preside');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('TYRSGR84A43B866O', 'Milo', 'Paoli', '42', 'Lombardia', 'Commerciante');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('VCNVVF88A50B646H', 'Marco', 'Marino', '53', 'Lazio', 'Preside');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('VLFPHZ48R03L844K', 'Fabio', 'Paoli', '43', 'Toscana', 'Muratore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('VLFRHZ48R03L844R', 'Mario', 'Paoli', '66', 'Toscana', 'Calciatore');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('VRNVVF88A50B646H', 'Maria', 'Marino', '40', 'Piemonte', 'Dirigente');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('XJSRSX66B16A956L', 'Fabrizio', 'Fabrizi', '49', 'Piemonte', 'Impiegato');
INSERT Clienti (CodiceFiscale, Nome, Cognome, Eta, Residenza, Impiego) VALUES ('XJSRSX66B16A956V', 'Maria', 'Fabrizi', '58', 'Toscana', 'Preside');
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('1', CAST(1000.12 AS Decimal(18, 4)), 'EUR', CAST('2018-10-10T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('10', CAST(4001.20 AS Decimal(18, 4)), 'EUR', CAST('2019-02-05T00:00:00.000' AS DateTime), CAST('2019-08-30T00:00:00.000' AS DateTime));
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('11', CAST(412.50 AS Decimal(18, 4)), 'USD', CAST('2018-08-08T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('12', CAST(55.10 AS Decimal(18, 4)), 'EUR', CAST('2019-12-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('13', CAST(5672.20 AS Decimal(18, 4)), 'EUR', CAST('2018-09-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('14', CAST(234.50 AS Decimal(18, 4)), 'EUR', CAST('2019-10-01T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('15', CAST(12.40 AS Decimal(18, 4)), 'EUR', CAST('2018-02-05T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('16', CAST(342.10 AS Decimal(18, 4)), 'EUR', CAST('2019-06-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('17', CAST(1.40 AS Decimal(18, 4)), 'USD', CAST('2020-01-02T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('18', CAST(643.23 AS Decimal(18, 4)), 'EUR', CAST('2019-02-05T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('19', CAST(642.60 AS Decimal(18, 4)), 'EUR', CAST('2017-07-07T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('2', CAST(1020.15 AS Decimal(18, 4)), 'EUR', CAST('2019-02-05T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('20', CAST(123.40 AS Decimal(18, 4)), 'EUR', CAST('2019-12-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('21', CAST(45.20 AS Decimal(18, 4)), 'USD', CAST('2019-12-03T00:00:00.000' AS DateTime), CAST('2020-12-03T00:00:00.000' AS DateTime));
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('22', CAST(1000.12 AS Decimal(18, 4)), 'EUR', CAST('2019-10-01T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('23', CAST(1020.15 AS Decimal(18, 4)), 'EUR', CAST('2017-02-06T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('24', CAST(2014.65 AS Decimal(18, 4)), 'EUR', CAST('2019-06-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('25', CAST(234.32 AS Decimal(18, 4)), 'EUR', CAST('2017-10-10T00:00:00.000' AS DateTime), CAST('2018-05-10T00:00:00.000' AS DateTime));
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('26', CAST(512.31 AS Decimal(18, 4)), 'EUR', CAST('2019-02-06T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('27', CAST(311.23 AS Decimal(18, 4)), 'EUR', CAST('2017-07-07T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('28', CAST(341.32 AS Decimal(18, 4)), 'EUR', CAST('2019-12-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('29', CAST(11.24 AS Decimal(18, 4)), 'EUR', CAST('2017-09-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('3', CAST(2014.65 AS Decimal(18, 4)), 'EUR', CAST('2018-08-08T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('30', CAST(992.21 AS Decimal(18, 4)), 'EUR', CAST('2017-10-10T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('31', CAST(4001.20 AS Decimal(18, 4)), 'EUR', CAST('2019-02-06T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('32', CAST(412.50 AS Decimal(18, 4)), 'EUR', CAST('2017-07-07T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('33', CAST(55.10 AS Decimal(18, 4)), 'EUR', CAST('2019-12-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('34', CAST(5672.20 AS Decimal(18, 4)), 'EUR', CAST('2017-09-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('35', CAST(234.50 AS Decimal(18, 4)), 'EUR', CAST('2019-10-01T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('36', CAST(12.40 AS Decimal(18, 4)), 'EUR', CAST('2017-02-06T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('37', CAST(342.10 AS Decimal(18, 4)), 'EUR', CAST('2019-06-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('38', CAST(1.40 AS Decimal(18, 4)), 'EUR', CAST('2017-10-10T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('39', CAST(643.23 AS Decimal(18, 4)), 'EUR', CAST('2019-02-06T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('4', CAST(234.32 AS Decimal(18, 4)), 'EUR', CAST('2019-12-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('40', CAST(642.60 AS Decimal(18, 4)), 'EUR', CAST('2017-07-07T00:00:00.000' AS DateTime), CAST('2019-12-14T00:00:00.000' AS DateTime));
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('5', CAST(512.31 AS Decimal(18, 4)), 'EUR', CAST('2018-09-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('6', CAST(311.23 AS Decimal(18, 4)), 'EUR', CAST('2019-10-01T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('7', CAST(341.32 AS Decimal(18, 4)), 'EUR', CAST('2018-02-05T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('8', CAST(11.24 AS Decimal(18, 4)), 'EUR', CAST('2019-06-04T00:00:00.000' AS DateTime), NULL);
INSERT ContiCorrenti (NumeroConto, Saldo, Valuta, DataApertura, DataChiusura) VALUES ('9', CAST(992.21 AS Decimal(18, 4)), 'EUR', CAST('2018-10-10T00:00:00.000' AS DateTime), NULL);
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('AWNNLZ36R05E168T', '32');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('BHLVVP64C64F735E', '6');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('BHLVVR64R64F635E', '26');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('BHLVVR64R64F635E', '36');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('CDPKXR28E62A973B', '10');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('DWNNLZ36P05E168T', '12');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('FLTXCI58H51E295S', '15');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('GMCGYC77C17D591G', '18');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('JHLTTS66P17H911Y', '1');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('JHLTTS66P17H911Y', '2');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('JHLTTS66R16H911W', '22');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('JTTSNC68A45G196J', '13');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('JTTSNR68A45G196J', '33');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('JTTSNR68A45G196J', '34');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('KDTNTH80H51A274L', '14');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('LTTLTT63P56Z327R', '11');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('LTTLTT63P56Z327R', '12');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('LTTLTT63R56Z326R', '31');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('MCGTBC98M31H102O', '17');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('MRZQDC66P17A281I', '16');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('MXXHPR88A02D895O', '7');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('MXXHRR88A02A895O', '27');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('MXXHRR88A02A895O', '37');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('PVPKTO80T64G614O', '8');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('RARKXR28E62A963B', '30');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('RARKXR28E62A963B', '40');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('RQMNHF29T53I482R', '23');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('RQMNHF29T53I482T', '3');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('RVRKTO80T64G614O', '28');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('RVRKTO80T64G614O', '38');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('SRALZQ40M58A184Q', '21');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('SRDLZQ40M58A184Y', '1');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('TPPNZN61D47F853F', '5');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('TRRNZN61A46F853F', '23');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('TRRNZN61A46F853F', '25');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('TRRNZN61A46F853F', '35');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('TYRSGP84A43B866O', '9');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('TYRSGR84A43B866O', '29');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('TYRSGR84A43B866O', '39');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('VCNVVF88A50B646H', '4');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('VLFPHZ48R03L844K', '19');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('VRNVVF88A50B646H', '23');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('VRNVVF88A50B646H', '24');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('VRNVVF88A50B646H', '34');
INSERT ClientiContiCorrenti (CodiceFiscale, NumeroConto) VALUES ('XJSRSX66B16A956L', '20');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('1', 'SRDLZQ40M58A184Y', 'Visa', 'Maestro', CAST(12.13 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('10', 'CDPKXR28E62A973B', 'Visa', 'Maestro', CAST(41.20 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('11', 'RQMNHF29T53I482R', 'Visa', 'Maestro', CAST(12.13 AS Decimal(18, 4)), 'USD');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('12', 'VRNVVF88A50B646H', 'Mastercard', 'Maestro', CAST(26.12 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('13', 'TRRNZN61A46F853F', 'Visa', 'Maestro', CAST(12.13 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('14', 'BHLVVR64R64F635E', 'Mastercard', 'Maestro', CAST(53.10 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('15', 'MXXHRR88A02A895O', 'Visa', 'Maestro', CAST(12.13 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('16', 'RVRKTO80T64G614O', 'Mastercard', 'Maestro', CAST(12.99 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('17', 'TYRSGR84A43B866O', 'Mastercard', 'Maestro', CAST(24.12 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('18', 'RARKXR28E62A963B', 'Visa', 'Maestro', CAST(23.53 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('2', 'JHLTTS66P17H911Y', 'Visa', 'Maestro', CAST(26.12 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('3', 'RQMNHF29T53I482T', 'Mastercard', 'Maestro', CAST(24.12 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('4', 'VCNVVF88A50B646H', 'Visa', 'Maestro', CAST(98.12 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('5', 'TPPNZN61D47F853F', 'Mastercard', 'Maestro', CAST(72.10 AS Decimal(18, 4)), 'USD');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('6', 'BHLVVP64C64F735E', 'Visa', 'Maestro', CAST(12.13 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('7', 'MXXHPR88A02D895O', 'Visa', 'Maestro', CAST(26.12 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('8', 'PVPKTO80T64G614O', 'Mastercard', 'Maestro', CAST(24.12 AS Decimal(18, 4)), 'EUR');
INSERT CarteCredito (NumeroCarta, CodiceFiscale, Tipologia, Circuito, Saldo, Valuta) VALUES ('9', 'TYRSGP84A43B866O', 'Visa', 'Maestro', CAST(98.12 AS Decimal(18, 4)), 'EUR');
