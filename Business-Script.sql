if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabKakomArtikelFrequenz]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabKakomArtikelFrequenz]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabKakomArtikelumsatz]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabKakomArtikelumsatz]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabKakomFrequenz]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabKakomFrequenz]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabKakomKassierer]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabKakomKassierer]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabKakomTransaktion]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabKakomTransaktion]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabKakomWarengruppen]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabKakomWarengruppen]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabParadoxArtikelBezeichnung]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabParadoxArtikelBezeichnung]
GO

CREATE TABLE [dbo].[TabKakomArtikelFrequenz] (
	[Tag] [datetime] NOT NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Kasse] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Artikelnummer] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Artikelbezeichnung] [nchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[VonZeit] [nchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[BisZeit] [nchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Verkaufsmenge] [numeric](18, 3) NOT NULL ,
	[Datum] [nchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Zeit] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Artikel] [nchar] (22) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TabKakomArtikelumsatz] (
	[Tag] [datetime] NOT NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Kasse] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Artikelnummer] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Artikelbezeichnung] [nchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[VerkMenge] [numeric](18, 3) NULL ,
	[DM_Umsatz] [money] NULL ,
	[Umsatz] [money] NULL ,
	[BestellMenge] [numeric](18, 3) NULL ,
	[Retour] [numeric](18, 3) NULL ,
	[InventurMenge] [numeric](18, 3) NULL ,
	[Gutschrift] [numeric](18, 3) NULL ,
	[Datum] [nchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Zeit] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Artikel] [nchar] (22) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TabKakomFrequenz] (
	[Tag] [datetime] NOT NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Kasse] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[VonZeit] [nchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[BisZeit] [nchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Verkaufsmenge] [numeric](18, 3) NOT NULL ,
	[DM_Umsatzbetrag] [money] NULL ,
	[Umsatzbetrag] [money] NULL ,
	[Datum] [nchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Zeit] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TabKakomKassierer] (
	[Tag] [datetime] NOT NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Kasse] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Kassierer] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TransaktionCode] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TransaktBez] [nchar] (38) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[VerkaufsMenge] [numeric](18, 3) NOT NULL ,
	[DM_UmsatzBetrag] [money] NULL ,
	[UmsatzBetrag] [money] NULL ,
	[PersonalNr] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[KassiererName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Datum] [nchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Zeit] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Transaktion] [nchar] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TabKakomTransaktion] (
	[Tag] [datetime] NOT NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Kasse] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TransaktCode] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TransaktBez] [nchar] (38) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[VerkaufsMenge] [numeric](18, 3) NOT NULL ,
	[DM_Umsatzbetrag] [money] NULL ,
	[Umsatzbetrag] [money] NULL ,
	[Datum] [nchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Zeit] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Transaktion] [nchar] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TabKakomWarengruppen] (
	[Tag] [datetime] NOT NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Kasse] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Warengruppe] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[WarengruppeBez] [nchar] (38) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Verkaufsmenge] [numeric](18, 3) NOT NULL ,
	[DM_Umsatz] [money] NULL ,
	[Umsatz] [money] NULL ,
	[Datum] [nchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Zeit] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[WG] [nchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TabParadoxArtikelBezeichnung] (
	[STPL-PLNR] [float] NOT NULL ,
	[Arti-Nr#] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Arti-Beze#] [nvarchar] (22) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

