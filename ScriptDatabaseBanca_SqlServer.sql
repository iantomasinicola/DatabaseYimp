USE [master]
GO
/****** Object:  Database [BANCA]    Script Date: 07/04/2020 09:59:31 ******/
CREATE DATABASE [BANCA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BANCA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\BANCA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BANCA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\BANCA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BANCA] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BANCA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BANCA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BANCA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BANCA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BANCA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BANCA] SET ARITHABORT OFF 
GO
ALTER DATABASE [BANCA] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BANCA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BANCA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BANCA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BANCA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BANCA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BANCA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BANCA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BANCA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BANCA] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BANCA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BANCA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BANCA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BANCA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BANCA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BANCA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BANCA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BANCA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BANCA] SET  MULTI_USER 
GO
ALTER DATABASE [BANCA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BANCA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BANCA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BANCA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BANCA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BANCA] SET QUERY_STORE = OFF
GO
USE [BANCA]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [BANCA]
GO
/****** Object:  Table [dbo].[CarteCredito]    Script Date: 07/04/2020 09:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarteCredito](
	[Carta] [varchar](16) NOT NULL,
	[CodiceFiscale] [varchar](16) NOT NULL,
	[Tipologia] [varchar](30) NOT NULL,
	[Circuito] [varchar](30) NOT NULL,
	[Saldo] [decimal](18, 2) NOT NULL,
	[Valuta] [varchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Carta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clienti]    Script Date: 07/04/2020 09:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clienti](
	[CodiceFiscale] [varchar](16) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Cognome] [varchar](50) NOT NULL,
	[Eta] [varchar](50) NULL,
	[Residenza] [varchar](50) NOT NULL,
	[Impiego] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodiceFiscale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientiContiCorrente]    Script Date: 07/04/2020 09:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientiContiCorrente](
	[CodiceFiscale] [varchar](16) NOT NULL,
	[Conto] [varchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodiceFiscale] ASC,
	[Conto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContoCorrente]    Script Date: 07/04/2020 09:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContoCorrente](
	[Conto] [varchar](16) NOT NULL,
	[Saldo] [decimal](18, 2) NOT NULL,
	[Valuta] [varchar](3) NOT NULL,
	[DataApertura] [datetime] NOT NULL,
	[DataChiusura] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Conto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servizi]    Script Date: 07/04/2020 09:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servizi](
	[NumeroServizio] [int] NOT NULL,
	[Conto] [varchar](16) NOT NULL,
	[TipologiaServizio] [varchar](30) NOT NULL,
	[DataApertura] [datetime] NOT NULL,
	[DataChiusura] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroServizio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'1', N'SRDLZQ40M58A184Y', N'Credito', N'Visa', CAST(12.13 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'10', N'CDPKXR28E62A973B', N'Prepagata', N'Visa', CAST(41.20 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'11', N'RQMNHF29T53I482R', N'Bancomat', N'Visa', CAST(12.13 AS Decimal(18, 2)), N'USD')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'12', N'VRNVVF88A50B646H', N'Bancomat', N'Mastercard', CAST(26.12 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'13', N'TRRNZN61A46F853F', N'Credito', N'Visa', CAST(12.13 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'14', N'BHLVVR64R64F635E', N'Bancomat', N'Visa', CAST(53.10 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'15', N'MXXHRR88A02A895O', N'Bancomat', N'Visa', CAST(12.13 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'16', N'RVRKTO80T64G614O', N'Credito', N'Mastercard', CAST(12.99 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'17', N'TYRSGR84A43B866O', N'Prepagata', N'Visa', CAST(24.12 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'18', N'RARKXR28E62A963B', N'Prepagata', N'Mastercard', CAST(23.53 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'2', N'JHLTTS66P17H911Y', N'Credito', N'Visa', CAST(26.12 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'3', N'RQMNHF29T53I482T', N'Credito', N'Visa', CAST(24.12 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'4', N'VCNVVF88A50B646H', N'Credito', N'Visa', CAST(98.12 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'5', N'TPPNZN61D47F853F', N'Bancomat', N'Mastercard', CAST(72.10 AS Decimal(18, 2)), N'USD')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'6', N'BHLVVP64C64F735E', N'Bancomat', N'Visa', CAST(12.13 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'7', N'MXXHPR88A02D895O', N'Credito', N'Visa', CAST(26.12 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'8', N'PVPKTO80T64G614O', N'Prepagata', N'Visa', CAST(24.12 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[CarteCredito] ([Carta], [CodiceFiscale], [Tipologia], [Circuito], [Saldo], [Valuta]) VALUES (N'9', N'TYRSGP84A43B866O', N'Prepagata', N'Mastercard', CAST(98.12 AS Decimal(18, 2)), N'EUR')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'AWNNLZ36R05E168T', N'Giovanni', N'Verdi', N'45', N'Puglia', N'Impiegato')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'BHLVVP64C64F735E', N'Alice', N'Gianni', N'34', N'Sicilia', N'Dirigente')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'BHLVVR64R64F635E', N'Cristina', N'Gianni', N'56', N'Lombardia', N'Preside')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'CDPKXR28E62A973B', N'Grazia', N'Fabrizi', N'59', N'Toscana', N'Disoccupato')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'CodiceFiscale', N'Nome', N'Cognome', N'Eta', N'Residenza', N'Impiego')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'DWNNLZ36P05E168T', N'Maria', N'Verdi', N'54', N'Toscana', N'Dirigente')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'FLTXCI58H51E295S', N'Mike', N'Moratti', N'36', N'Toscana', N'Professore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'FLTXRI58H51E295S', N'Mino', N'Moratti', N'56', N'Lombardia', N'Commerciante')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'GMCGYC77C17D591G', N'Nicola', N'Motta', N'66', N'Toscana', N'Calciatore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'GMRGYR66R16A591X', N'Luigi', N'Motta', N'36', N'Puglia', N'Preside')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'JHLTTS66P17H911Y', N'Nicola', N'Verdi', N'54', N'Lazio', N'Impiegato')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'JHLTTS66R16H911W', N'Francesco', N'Verdi', N'67', N'Piemonte', N'Disoccupato')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'JTTSNC68A45G196J', N'Giuseppe', N'Bianchi', N'31', N'Toscana', N'Preside')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'JTTSNR68A45G196J', N'Maria', N'Bianchi', N'51', N'Puglia', N'Calciatore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'KATNTH80H51A264L', N'Nello', N'Marino', N'60', N'Puglia', N'Disoccupato')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'KDTNTH80H51A274L', N'Francesco', N'Marino', N'34', N'Toscana', N'Calciatore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'LTTLTT63P56Z327R', N'Giovanni', N'Rossi', N'34', N'Toscana', N'Commerciante')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'LTTLTT63R56Z326R', N'Seth', N'Rossi', N'46', N'Puglia', N'Muratore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'MCGTBC98M31H102O', N'Scott', N'Fabrizi', N'48', N'Toscana', N'Commerciante')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'MRGTBR98M31H102S', N'Maria', N'Fabrizi', N'65', N'Puglia', N'Muratore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'MRZQAR66R16A281I', N'Giovanni', N'Gianni', N'36', N'Lombardia', N'Calciatore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'MRZQDC66P17A281I', N'Giovanni', N'Gianni', N'45', N'Toscana', N'Disoccupato')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'MXXHPR88A02D895O', N'Fabrizio', N'Fabrizi', N'40', N'Sicilia', N'Calciatore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'MXXHRR88A02A895O', N'Pino', N'Fabrizi', N'57', N'Lombardia', N'Professore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'PVPKTO80T64G614O', N'Irene', N'Motta', N'31', N'Sicilia', N'Impiegato')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'RARKXR28E62A963B', N'Frank', N'Fabrizi', N'63', N'Puglia', N'Dirigente')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'RQMNHF29T53I482R', N'Franca', N'Bianchi', N'44', N'Piemonte', N'Commerciante')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'RQMNHF29T53I482T', N'Giovanni', N'Bianchi', N'50', N'Lazio', N'Calciatore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'RVRKTO80T64G614O', N'Vera', N'Motta', N'57', N'Lombardia', N'Disoccupato')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'SRALZQ40M58A184Q', N'Giovanni', N'Rossi', N'67', N'Piemonte', N'Preside')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'SRDLZQ40M58A184Y', N'Fabrizio', N'Rossi', N'20', N'Lazio', N'Muratore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'TPPNZN61D47F853F', N'Giovanna', N'Moratti', N'61', N'Sicilia', N'Commerciante')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'TRRNZN61A46F853F', N'Marina', N'Moratti', N'39', N'Lombardia', N'Muratore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'TYRSGP84A43B866O', N'Maria', N'Paoli', N'40', N'Sicilia', N'Preside')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'TYRSGR84A43B866O', N'Milo', N'Paoli', N'42', N'Lombardia', N'Commerciante')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'VCNVVF88A50B646H', N'Marco', N'Marino', N'53', N'Lazio', N'Preside')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'VLFPHZ48R03L844K', N'Fabio', N'Paoli', N'43', N'Toscana', N'Muratore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'VLFRHZ48R03L844R', N'Mario', N'Paoli', N'66', N'Toscana', N'Calciatore')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'VRNVVF88A50B646H', N'Maria', N'Marino', N'40', N'Piemonte', N'Dirigente')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'XJSRSX66B16A956L', N'Fabrizio', N'Fabrizi', N'49', N'Piemonte', N'Impiegato')
INSERT [dbo].[Clienti] ([CodiceFiscale], [Nome], [Cognome], [Eta], [Residenza], [Impiego]) VALUES (N'XJSRSX66B16A956V', N'Maria', N'Fabrizi', N'58', N'Toscana', N'Preside')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'AWNNLZ36R05E168T', N'32')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'BHLVVP64C64F735E', N'6')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'BHLVVR64R64F635E', N'26')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'BHLVVR64R64F635E', N'36')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'CDPKXR28E62A973B', N'10')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'CodiceFiscale', N'Conto')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'DWNNLZ36P05E168T', N'12')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'FLTXCI58H51E295S', N'15')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'GMCGYC77C17D591G', N'18')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'JHLTTS66P17H911Y', N'1')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'JHLTTS66P17H911Y', N'2')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'JHLTTS66R16H911W', N'22')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'JTTSNC68A45G196J', N'13')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'JTTSNR68A45G196J', N'33')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'JTTSNR68A45G196J', N'34')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'KDTNTH80H51A274L', N'14')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'LTTLTT63P56Z327R', N'11')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'LTTLTT63P56Z327R', N'12')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'LTTLTT63R56Z326R', N'31')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'LTTLTT63R56Z326R', N'41')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'MCGTBC98M31H102O', N'17')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'MRZQDC66P17A281I', N'16')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'MXXHPR88A02D895O', N'7')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'MXXHRR88A02A895O', N'27')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'MXXHRR88A02A895O', N'37')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'PVPKTO80T64G614O', N'8')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'RARKXR28E62A963B', N'30')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'RARKXR28E62A963B', N'40')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'RQMNHF29T53I482R', N'23')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'RQMNHF29T53I482T', N'3')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'RVRKTO80T64G614O', N'28')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'RVRKTO80T64G614O', N'38')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'SRALZQ40M58A184Q', N'21')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'SRDLZQ40M58A184Y', N'1')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'TPPNZN61D47F853F', N'5')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'TRRNZN61A46F853F', N'23')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'TRRNZN61A46F853F', N'25')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'TRRNZN61A46F853F', N'35')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'TYRSGP84A43B866O', N'9')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'TYRSGR84A43B866O', N'29')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'TYRSGR84A43B866O', N'39')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'VCNVVF88A50B646H', N'4')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'VLFPHZ48R03L844K', N'19')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'VRNVVF88A50B646H', N'23')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'VRNVVF88A50B646H', N'24')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'VRNVVF88A50B646H', N'34')
INSERT [dbo].[ClientiContiCorrente] ([CodiceFiscale], [Conto]) VALUES (N'XJSRSX66B16A956L', N'20')
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'1', CAST(1000.12 AS Decimal(18, 2)), N'EUR', CAST(N'2018-10-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'10', CAST(4001.20 AS Decimal(18, 2)), N'EUR', CAST(N'2019-02-05T00:00:00.000' AS DateTime), CAST(N'2019-08-30T00:00:00.000' AS DateTime))
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'11', CAST(412.50 AS Decimal(18, 2)), N'USD', CAST(N'2018-08-08T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'12', CAST(55.10 AS Decimal(18, 2)), N'EUR', CAST(N'2019-12-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'13', CAST(5672.20 AS Decimal(18, 2)), N'EUR', CAST(N'2018-09-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'14', CAST(234.50 AS Decimal(18, 2)), N'EUR', CAST(N'2019-10-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'15', CAST(12.40 AS Decimal(18, 2)), N'EUR', CAST(N'2018-02-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'16', CAST(342.10 AS Decimal(18, 2)), N'EUR', CAST(N'2019-06-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'17', CAST(1.40 AS Decimal(18, 2)), N'USD', CAST(N'2020-01-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'18', CAST(643.23 AS Decimal(18, 2)), N'EUR', CAST(N'2019-02-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'19', CAST(642.60 AS Decimal(18, 2)), N'EUR', CAST(N'2017-07-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'2', CAST(1020.15 AS Decimal(18, 2)), N'EUR', CAST(N'2019-02-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'20', CAST(123.40 AS Decimal(18, 2)), N'EUR', CAST(N'2019-12-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'21', CAST(45.20 AS Decimal(18, 2)), N'USD', CAST(N'2019-12-03T00:00:00.000' AS DateTime), CAST(N'2020-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'22', CAST(1000.12 AS Decimal(18, 2)), N'EUR', CAST(N'2019-10-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'23', CAST(1020.15 AS Decimal(18, 2)), N'EUR', CAST(N'2017-02-06T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'24', CAST(2014.65 AS Decimal(18, 2)), N'EUR', CAST(N'2019-06-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'25', CAST(234.32 AS Decimal(18, 2)), N'EUR', CAST(N'2017-10-10T00:00:00.000' AS DateTime), CAST(N'2018-05-10T00:00:00.000' AS DateTime))
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'26', CAST(512.31 AS Decimal(18, 2)), N'EUR', CAST(N'2019-02-06T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'27', CAST(311.23 AS Decimal(18, 2)), N'EUR', CAST(N'2017-07-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'28', CAST(341.32 AS Decimal(18, 2)), N'EUR', CAST(N'2019-12-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'29', CAST(11.24 AS Decimal(18, 2)), N'EUR', CAST(N'2017-09-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'3', CAST(2014.65 AS Decimal(18, 2)), N'EUR', CAST(N'2018-08-08T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'30', CAST(992.21 AS Decimal(18, 2)), N'EUR', CAST(N'2017-10-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'31', CAST(4001.20 AS Decimal(18, 2)), N'EUR', CAST(N'2019-02-06T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'32', CAST(412.50 AS Decimal(18, 2)), N'EUR', CAST(N'2017-07-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'33', CAST(55.10 AS Decimal(18, 2)), N'EUR', CAST(N'2019-12-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'34', CAST(5672.20 AS Decimal(18, 2)), N'EUR', CAST(N'2017-09-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'35', CAST(234.50 AS Decimal(18, 2)), N'EUR', CAST(N'2019-10-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'36', CAST(12.40 AS Decimal(18, 2)), N'EUR', CAST(N'2017-02-06T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'37', CAST(342.10 AS Decimal(18, 2)), N'EUR', CAST(N'2019-06-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'38', CAST(1.40 AS Decimal(18, 2)), N'EUR', CAST(N'2017-10-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'39', CAST(643.23 AS Decimal(18, 2)), N'EUR', CAST(N'2019-02-06T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'4', CAST(234.32 AS Decimal(18, 2)), N'EUR', CAST(N'2019-12-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'40', CAST(642.60 AS Decimal(18, 2)), N'EUR', CAST(N'2017-07-07T00:00:00.000' AS DateTime), CAST(N'2019-12-14T00:00:00.000' AS DateTime))
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'5', CAST(512.31 AS Decimal(18, 2)), N'EUR', CAST(N'2018-09-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'6', CAST(311.23 AS Decimal(18, 2)), N'EUR', CAST(N'2019-10-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'7', CAST(341.32 AS Decimal(18, 2)), N'EUR', CAST(N'2018-02-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'8', CAST(11.24 AS Decimal(18, 2)), N'EUR', CAST(N'2019-06-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[ContoCorrente] ([Conto], [Saldo], [Valuta], [DataApertura], [DataChiusura]) VALUES (N'9', CAST(992.21 AS Decimal(18, 2)), N'EUR', CAST(N'2018-10-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (1, N'1', N'Telepass', CAST(N'2018-11-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (2, N'2', N'Pagamento utenze', CAST(N'2019-02-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (3, N'3', N'Telepass', CAST(N'2018-08-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (4, N'4', N'Ricarica cellulare', CAST(N'2019-12-13T00:00:00.000' AS DateTime), CAST(N'2020-01-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (5, N'1', N'Ricarica cellulare', CAST(N'2018-11-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (6, N'6', N'Pagamento utenze', CAST(N'2019-11-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (7, N'7', N'Telepass', CAST(N'2018-03-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (8, N'8', N'Ricarica cellulare', CAST(N'2019-07-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (9, N'9', N'Pagamento utenze', CAST(N'2018-11-10T00:00:00.000' AS DateTime), CAST(N'2019-04-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (10, N'9', N'Ricarica cellulare', CAST(N'2018-11-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (11, N'9', N'Telepass', CAST(N'2019-01-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (12, N'12', N'Ricarica cellulare', CAST(N'2019-12-12T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (13, N'13', N'Ricarica cellulare', CAST(N'2018-10-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (14, N'14', N'Pagamento utenze', CAST(N'2019-11-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (15, N'15', N'Pagamento F24', CAST(N'2018-03-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (16, N'15', N'Telepass', CAST(N'2018-04-05T00:00:00.000' AS DateTime), CAST(N'2019-03-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (17, N'17', N'Pagamento utenze', CAST(N'2020-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (18, N'18', N'Pagamento F24', CAST(N'2019-03-12T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (19, N'19', N'Pagamento F24', CAST(N'2017-08-07T00:00:00.000' AS DateTime), CAST(N'2019-01-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (20, N'20', N'Pagamento F24', CAST(N'2019-12-14T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (21, N'32', N'Ricarica cellulare', CAST(N'2017-08-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (22, N'33', N'Pagamento utenze', CAST(N'2019-12-21T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (23, N'33', N'Ricarica cellulare', CAST(N'2019-12-21T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (24, N'24', N'Telepass', CAST(N'2019-07-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (25, N'25', N'Ricarica cellulare', CAST(N'2017-11-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (26, N'26', N'Ricarica cellulare', CAST(N'2019-03-06T00:00:00.000' AS DateTime), CAST(N'2019-06-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (27, N'27', N'Pagamento utenze', CAST(N'2017-08-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (28, N'27', N'Telepass', CAST(N'2017-08-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (29, N'29', N'Ricarica cellulare', CAST(N'2017-10-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (30, N'30', N'Pagamento utenze', CAST(N'2017-11-10T00:00:00.000' AS DateTime), CAST(N'2018-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Servizi] ([NumeroServizio], [Conto], [TipologiaServizio], [DataApertura], [DataChiusura]) VALUES (31, N'31', N'Ricarica cellulare', CAST(N'2019-02-11T00:00:00.000' AS DateTime), NULL)
ALTER TABLE [dbo].[CarteCredito]  WITH NOCHECK ADD FOREIGN KEY([CodiceFiscale])
REFERENCES [dbo].[Clienti] ([CodiceFiscale])
GO
ALTER TABLE [dbo].[ClientiContiCorrente]  WITH NOCHECK ADD FOREIGN KEY([CodiceFiscale])
REFERENCES [dbo].[Clienti] ([CodiceFiscale])
GO
ALTER TABLE [dbo].[ClientiContiCorrente]  WITH NOCHECK ADD FOREIGN KEY([Conto])
REFERENCES [dbo].[ContoCorrente] ([Conto])
GO
ALTER TABLE [dbo].[Servizi]  WITH NOCHECK ADD FOREIGN KEY([Conto])
REFERENCES [dbo].[ContoCorrente] ([Conto])
GO
ALTER TABLE [dbo].[CarteCredito]  WITH NOCHECK ADD  CONSTRAINT [CheckCircuito] CHECK  (([tipologia]='Mastercard' OR [tipologia]='Visa'))
GO
ALTER TABLE [dbo].[CarteCredito] CHECK CONSTRAINT [CheckCircuito]
GO
ALTER TABLE [dbo].[CarteCredito]  WITH NOCHECK ADD  CONSTRAINT [CheckValuta] CHECK  (([Valuta]='GBP' OR [Valuta]='USD' OR [Valuta]='EUR'))
GO
ALTER TABLE [dbo].[CarteCredito] CHECK CONSTRAINT [CheckValuta]
GO
ALTER TABLE [dbo].[Clienti]  WITH NOCHECK ADD  CONSTRAINT [CheckCodiceFiscale] CHECK  ((len([CodiceFiscale])=(16)))
GO
ALTER TABLE [dbo].[Clienti] CHECK CONSTRAINT [CheckCodiceFiscale]
GO
ALTER TABLE [dbo].[ContoCorrente]  WITH NOCHECK ADD  CONSTRAINT [CheckDataCC] CHECK  (([DataChiusura]>[DataApertura] OR [DataChiusura] IS NULL))
GO
ALTER TABLE [dbo].[ContoCorrente] CHECK CONSTRAINT [CheckDataCC]
GO
ALTER TABLE [dbo].[Servizi]  WITH NOCHECK ADD  CONSTRAINT [CheckDataServizi] CHECK  (([DataChiusura]>[DataApertura] OR [DataChiusura] IS NULL))
GO
ALTER TABLE [dbo].[Servizi] CHECK CONSTRAINT [CheckDataServizi]
GO
USE [master]
GO
ALTER DATABASE [BANCA] SET  READ_WRITE 
GO
