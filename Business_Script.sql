/****** Objekt:  Datenbank Business    Skriptdatum: 27.08.2007 15:35:11 ******/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'Business')
	DROP DATABASE [Business]
GO

CREATE DATABASE [Business]  ON (NAME = N'Business_Daten', FILENAME = N'e:\sqldb\business\Business.mdf' , SIZE = 4854, FILEGROWTH = 10%) LOG ON (NAME = N'Business_Protokoll', FILENAME = N'e:\sqldb\business\Business_log.ldf' , SIZE = 1, MAXSIZE = 1500, FILEGROWTH = 10%)
 COLLATE SQL_Latin1_General_CP1_CI_AS
GO

exec sp_dboption N'Business', N'autoclose', N'false'
GO

exec sp_dboption N'Business', N'bulkcopy', N'true'
GO

exec sp_dboption N'Business', N'trunc. log', N'true'
GO

exec sp_dboption N'Business', N'torn page detection', N'false'
GO

exec sp_dboption N'Business', N'read only', N'false'
GO

exec sp_dboption N'Business', N'dbo use', N'false'
GO

exec sp_dboption N'Business', N'single', N'false'
GO

exec sp_dboption N'Business', N'autoshrink', N'true'
GO

exec sp_dboption N'Business', N'ANSI null default', N'false'
GO

exec sp_dboption N'Business', N'recursive triggers', N'false'
GO

exec sp_dboption N'Business', N'ANSI nulls', N'false'
GO

exec sp_dboption N'Business', N'concat null yields null', N'false'
GO

exec sp_dboption N'Business', N'cursor close on commit', N'false'
GO

exec sp_dboption N'Business', N'default to local cursor', N'false'
GO

exec sp_dboption N'Business', N'quoted identifier', N'false'
GO

exec sp_dboption N'Business', N'ANSI warnings', N'false'
GO

exec sp_dboption N'Business', N'auto create statistics', N'true'
GO

exec sp_dboption N'Business', N'auto update statistics', N'true'
GO

if( (@@microsoftversion / power(2, 24) = 8) and (@@microsoftversion & 0xffff >= 724) )
	exec sp_dboption N'Business', N'db chaining', N'false'
GO

use [Business]
GO

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakNrepParamPepKassier    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CpKakNrepParamPepKassier]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CpKakNrepParamPepKassier]
GO

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakNrepPepKassierer    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CpKakNrepPepKassierer]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CpKakNrepPepKassierer]
GO

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakNrepTransaktion    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CpKakNrepTransaktion]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CpKakNrepTransaktion]
GO

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakNrepWarengruppen    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CpKakNrepWarengruppen]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CpKakNrepWarengruppen]
GO

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakPepRmMonatsKaufbLeist    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CpKakPepRmMonatsKaufbLeist]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CpKakPepRmMonatsKaufbLeist]
GO

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakPepRmTagesKaufbLeist    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CpKakPepRmTagesKaufbLeist]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CpKakPepRmTagesKaufbLeist]
GO

/****** Objekt:  Gespeicherte Prozedur dbo.ErrNameCpKakomPepRmMitarbLeist    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ErrNameCpKakomPepRmMitarbLeist]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[ErrNameCpKakomPepRmMitarbLeist]
GO

/****** Objekt:  Gespeicherte Prozedur dbo.Err_parmTest NAME    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Err_parmTest NAME]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Err_parmTest NAME]
GO

/****** Objekt:  Gespeicherte Prozedur dbo.Err_parmTest NAME99    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Err_parmTest NAME99]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[Err_parmTest NAME99]
GO

/****** Objekt:  Gespeicherte Prozedur dbo._CpKakomNRepKassier    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[_CpKakomNRepKassier]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[_CpKakomNRepKassier]
GO

/****** Objekt:  Gespeicherte Prozedur dbo._CpKakomNRepKassierPep    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[_CpKakomNRepKassierPep]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[_CpKakomNRepKassierPep]
GO

/****** Objekt:  Gespeicherte Prozedur dbo._CpKakomPepRmFilialeLeist    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[_CpKakomPepRmFilialeLeist]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[_CpKakomPepRmFilialeLeist]
GO

/****** Objekt:  Gespeicherte Prozedur dbo._cpEuroKassenDiff    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[_cpEuroKassenDiff]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[_cpEuroKassenDiff]
GO

/****** Objekt:  Gespeicherte Prozedur dbo._cpKakRmFilEntwickl    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[_cpKakRmFilEntwickl]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[_cpKakRmFilEntwickl]
GO

/****** Objekt:  Gespeicherte Prozedur dbo.cpArtikelumsatzRetouren    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cpArtikelumsatzRetouren]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cpArtikelumsatzRetouren]
GO

/****** Objekt:  Sicht dbo.vwTabKakomTransZielvereinbarKontrolle13    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwTabKakomTransZielvereinbarKontrolle13]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwTabKakomTransZielvereinbarKontrolle13]
GO

/****** Objekt:  Sicht dbo.VwLL-FilInfo3-4    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VwLL-FilInfo3-4]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[VwLL-FilInfo3-4]
GO

/****** Objekt:  Sicht dbo.VwLL-FilInfo4-4    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VwLL-FilInfo4-4]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[VwLL-FilInfo4-4]
GO

/****** Objekt:  Sicht dbo.VwTabKakomTransaktion_FilEntw2    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VwTabKakomTransaktion_FilEntw2]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[VwTabKakomTransaktion_FilEntw2]
GO

/****** Objekt:  Sicht dbo.VwTabKakomWGSnack2-1Ges    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VwTabKakomWGSnack2-1Ges]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[VwTabKakomWGSnack2-1Ges]
GO

/****** Objekt:  Sicht dbo.vwTabKakomKassierer_Kaufbetrag21    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwTabKakomKassierer_Kaufbetrag21]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwTabKakomKassierer_Kaufbetrag21]
GO

/****** Objekt:  Sicht dbo.vwTabKakomTransZielvereinbarKontrolle12    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwTabKakomTransZielvereinbarKontrolle12]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwTabKakomTransZielvereinbarKontrolle12]
GO

/****** Objekt:  Sicht dbo.VwLL-FilInfo1-1    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VwLL-FilInfo1-1]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[VwLL-FilInfo1-1]
GO

/****** Objekt:  Sicht dbo.VwTabAz01_Leistung    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VwTabAz01_Leistung]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[VwTabAz01_Leistung]
GO

/****** Objekt:  Sicht dbo.VwTabKakomTransaktion_FilEntw1    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VwTabKakomTransaktion_FilEntw1]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[VwTabKakomTransaktion_FilEntw1]
GO

/****** Objekt:  Sicht dbo.VwTabKakomWGSnack1-1BW    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VwTabKakomWGSnack1-1BW]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[VwTabKakomWGSnack1-1BW]
GO

/****** Objekt:  Sicht dbo.VwTabKakomWGSnack1-2SN    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VwTabKakomWGSnack1-2SN]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[VwTabKakomWGSnack1-2SN]
GO

/****** Objekt:  Sicht dbo.VwTabKakomWGSnack1-3Sonst    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VwTabKakomWGSnack1-3Sonst]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[VwTabKakomWGSnack1-3Sonst]
GO

/****** Objekt:  Sicht dbo.VwTabUmsatz02_FilEntw    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VwTabUmsatz02_FilEntw]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[VwTabUmsatz02_FilEntw]
GO

/****** Objekt:  Sicht dbo.vwParadoxBo74Prod    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwParadoxBo74Prod]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwParadoxBo74Prod]
GO

/****** Objekt:  Sicht dbo.vwRetouren%    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwRetouren%]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwRetouren%]
GO

/****** Objekt:  Sicht dbo.vwTabKakomArtikelUmsatzZusammenfBezeichn1    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwTabKakomArtikelUmsatzZusammenfBezeichn1]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwTabKakomArtikelUmsatzZusammenfBezeichn1]
GO

/****** Objekt:  Sicht dbo.vwTabKakomArtikelumsatzZusammenfassung2    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwTabKakomArtikelumsatzZusammenfassung2]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwTabKakomArtikelumsatzZusammenfassung2]
GO

/****** Objekt:  Sicht dbo.vwTabKakomKassierer_Kaufbetrag11    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwTabKakomKassierer_Kaufbetrag11]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwTabKakomKassierer_Kaufbetrag11]
GO

/****** Objekt:  Sicht dbo.vwTabKakomTransZielvereinbarKontrolle11    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwTabKakomTransZielvereinbarKontrolle11]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwTabKakomTransZielvereinbarKontrolle11]
GO

/****** Objekt:  Sicht dbo.vwTabKakomTransZielvereinbarung3    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwTabKakomTransZielvereinbarung3]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwTabKakomTransZielvereinbarung3]
GO

/****** Objekt:  Sicht dbo.vwTabPepPersonalstamm1Name    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwTabPepPersonalstamm1Name]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwTabPepPersonalstamm1Name]
GO

/****** Objekt:  Sicht dbo.vwUmsatzGesternArtikel    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwUmsatzGesternArtikel]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwUmsatzGesternArtikel]
GO

/****** Objekt:  Sicht dbo.vwUmsatzGesternKasse    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwUmsatzGesternKasse]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwUmsatzGesternKasse]
GO

/****** Objekt:  Sicht dbo.vwUmsatzGesternTransaktion    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwUmsatzGesternTransaktion]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwUmsatzGesternTransaktion]
GO

/****** Objekt:  Sicht dbo.vwUmsatzGesternWG    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwUmsatzGesternWG]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwUmsatzGesternWG]
GO

/****** Objekt:  Sicht dbo.vwUmsatzGesternWG2    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwUmsatzGesternWG2]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwUmsatzGesternWG2]
GO

/****** Objekt:  Sicht dbo.vwParadoxArtikelbezeichnung1    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vwParadoxArtikelbezeichnung1]') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view [dbo].[vwParadoxArtikelbezeichnung1]
GO

/****** Objekt:  Tabelle [dbo].[APPDEF00]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[APPDEF00]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[APPDEF00]
GO

/****** Objekt:  Tabelle [dbo].[APPPARAM]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[APPPARAM]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[APPPARAM]
GO

/****** Objekt:  Tabelle [dbo].[DDEF0000]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DDEF0000]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DDEF0000]
GO

/****** Objekt:  Tabelle [dbo].[DDEF0001]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DDEF0001]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DDEF0001]
GO

/****** Objekt:  Tabelle [dbo].[DEF00000]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEF00000]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEF00000]
GO

/****** Objekt:  Tabelle [dbo].[DEF00001]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEF00001]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEF00001]
GO

/****** Objekt:  Tabelle [dbo].[DEF00002]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEF00002]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEF00002]
GO

/****** Objekt:  Tabelle [dbo].[DEF00003]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEF00003]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEF00003]
GO

/****** Objekt:  Tabelle [dbo].[DEF00004]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEF00004]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEF00004]
GO

/****** Objekt:  Tabelle [dbo].[DEF00010]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEF00010]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEF00010]
GO

/****** Objekt:  Tabelle [dbo].[DEV00000]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEV00000]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEV00000]
GO

/****** Objekt:  Tabelle [dbo].[DEV00001]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEV00001]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEV00001]
GO

/****** Objekt:  Tabelle [dbo].[DEV00002]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEV00002]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEV00002]
GO

/****** Objekt:  Tabelle [dbo].[DEV00003]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEV00003]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEV00003]
GO

/****** Objekt:  Tabelle [dbo].[DEV00010]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEV00010]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEV00010]
GO

/****** Objekt:  Tabelle [dbo].[DEV00020]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEV00020]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEV00020]
GO

/****** Objekt:  Tabelle [dbo].[LANG0000]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LANG0000]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[LANG0000]
GO

/****** Objekt:  Tabelle [dbo].[LANG0001]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LANG0001]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[LANG0001]
GO

/****** Objekt:  Tabelle [dbo].[LOG00000]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LOG00000]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[LOG00000]
GO

/****** Objekt:  Tabelle [dbo].[LOG00001]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LOG00001]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[LOG00001]
GO

/****** Objekt:  Tabelle [dbo].[MENU0000]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MENU0000]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MENU0000]
GO

/****** Objekt:  Tabelle [dbo].[NK]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NK]
GO

/****** Objekt:  Tabelle [dbo].[SESSION001]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SESSION001]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SESSION001]
GO

/****** Objekt:  Tabelle [dbo].[SESSION002]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SESSION002]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SESSION002]
GO

/****** Objekt:  Tabelle [dbo].[SESSION003]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SESSION003]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SESSION003]
GO

/****** Objekt:  Tabelle [dbo].[SESSION004]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SESSION004]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SESSION004]
GO

/****** Objekt:  Tabelle [dbo].[SESSION004_1]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SESSION004_1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SESSION004_1]
GO

/****** Objekt:  Tabelle [dbo].[SESSION005]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SESSION005]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SESSION005]
GO

/****** Objekt:  Tabelle [dbo].[SOUND000]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SOUND000]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SOUND000]
GO

/****** Objekt:  Tabelle [dbo].[SRVDEF00]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SRVDEF00]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SRVDEF00]
GO

/****** Objekt:  Tabelle [dbo].[SRVDEF01]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SRVDEF01]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SRVDEF01]
GO

/****** Objekt:  Tabelle [dbo].[SRVDEF02]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SRVDEF02]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SRVDEF02]
GO

/****** Objekt:  Tabelle [dbo].[SRVDEF03]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SRVDEF03]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SRVDEF03]
GO

/****** Objekt:  Tabelle [dbo].[SRVDEF04]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SRVDEF04]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SRVDEF04]
GO

/****** Objekt:  Tabelle [dbo].[TABAZ00]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABAZ00]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABAZ00]
GO

/****** Objekt:  Tabelle [dbo].[TABAZ00_TMP]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABAZ00_TMP]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABAZ00_TMP]
GO

/****** Objekt:  Tabelle [dbo].[TABAZ01]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABAZ01]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABAZ01]
GO

/****** Objekt:  Tabelle [dbo].[TABAZ02]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABAZ02]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABAZ02]
GO

/****** Objekt:  Tabelle [dbo].[TABAZ03]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABAZ03]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABAZ03]
GO

/****** Objekt:  Tabelle [dbo].[TABAZ11]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABAZ11]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABAZ11]
GO

/****** Objekt:  Tabelle [dbo].[TABAZM001]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABAZM001]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABAZM001]
GO

/****** Objekt:  Tabelle [dbo].[TABAZM002]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABAZM002]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABAZM002]
GO

/****** Objekt:  Tabelle [dbo].[TABAZM003]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABAZM003]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABAZM003]
GO

/****** Objekt:  Tabelle [dbo].[TABAZM004]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABAZM004]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABAZM004]
GO

/****** Objekt:  Tabelle [dbo].[TABBO70STAT]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABBO70STAT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABBO70STAT]
GO

/****** Objekt:  Tabelle [dbo].[TABKASS01]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABKASS01]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABKASS01]
GO

/****** Objekt:  Tabelle [dbo].[TABKASS02]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABKASS02]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABKASS02]
GO

/****** Objekt:  Tabelle [dbo].[TABKST01]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABKST01]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABKST01]
GO

/****** Objekt:  Tabelle [dbo].[TABKST02]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABKST02]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABKST02]
GO

/****** Objekt:  Tabelle [dbo].[TABKST03]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABKST03]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABKST03]
GO

/****** Objekt:  Tabelle [dbo].[TABLLLOG]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABLLLOG]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABLLLOG]
GO

/****** Objekt:  Tabelle [dbo].[TABLLOHN01]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABLLOHN01]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABLLOHN01]
GO

/****** Objekt:  Tabelle [dbo].[TABLLPERS01]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABLLPERS01]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABLLPERS01]
GO

/****** Objekt:  Tabelle [dbo].[TABLLPERS02]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABLLPERS02]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABLLPERS02]
GO

/****** Objekt:  Tabelle [dbo].[TABLLUFAKT01]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABLLUFAKT01]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABLLUFAKT01]
GO

/****** Objekt:  Tabelle [dbo].[TABLLWARN]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABLLWARN]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABLLWARN]
GO

/****** Objekt:  Tabelle [dbo].[TABLOHNART00]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABLOHNART00]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABLOHNART00]
GO

/****** Objekt:  Tabelle [dbo].[TABLOHNART01]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABLOHNART01]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABLOHNART01]
GO

/****** Objekt:  Tabelle [dbo].[TABLOHNART02]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABLOHNART02]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABLOHNART02]
GO

/****** Objekt:  Tabelle [dbo].[TABLOHNARTKONVERT]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABLOHNARTKONVERT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABLOHNARTKONVERT]
GO

/****** Objekt:  Tabelle [dbo].[TABLOHNEXP1]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABLOHNEXP1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABLOHNEXP1]
GO

/****** Objekt:  Tabelle [dbo].[TABLOHNPERS]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABLOHNPERS]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABLOHNPERS]
GO

/****** Objekt:  Tabelle [dbo].[TABPEPAZ1]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABPEPAZ1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABPEPAZ1]
GO

/****** Objekt:  Tabelle [dbo].[TABPEPAZ1_TMP]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABPEPAZ1_TMP]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABPEPAZ1_TMP]
GO

/****** Objekt:  Tabelle [dbo].[TABSORTPLANART]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABSORTPLANART]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABSORTPLANART]
GO

/****** Objekt:  Tabelle [dbo].[TABSORTPLANPARA]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABSORTPLANPARA]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABSORTPLANPARA]
GO

/****** Objekt:  Tabelle [dbo].[TABSORTPLANZP]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABSORTPLANZP]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABSORTPLANZP]
GO

/****** Objekt:  Tabelle [dbo].[TABUMSATZ01]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABUMSATZ01]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABUMSATZ01]
GO

/****** Objekt:  Tabelle [dbo].[TABUMSATZ02]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABUMSATZ02]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABUMSATZ02]
GO

/****** Objekt:  Tabelle [dbo].[TABUMSATZ02_ALT]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABUMSATZ02_ALT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABUMSATZ02_ALT]
GO

/****** Objekt:  Tabelle [dbo].[TABWINIPEV01]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABWINIPEV01]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABWINIPEV01]
GO

/****** Objekt:  Tabelle [dbo].[TABWINIPEV02]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABWINIPEV02]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABWINIPEV02]
GO

/****** Objekt:  Tabelle [dbo].[TABWINIPEV03]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABWINIPEV03]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABWINIPEV03]
GO

/****** Objekt:  Tabelle [dbo].[TABWINIPEVAZ1]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TABWINIPEVAZ1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TABWINIPEVAZ1]
GO

/****** Objekt:  Tabelle [dbo].[TabHelpImpKassierName3x1]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabHelpImpKassierName3x1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabHelpImpKassierName3x1]
GO

/****** Objekt:  Tabelle [dbo].[TabHelpImpTypKassiererAnz1x1]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabHelpImpTypKassiererAnz1x1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabHelpImpTypKassiererAnz1x1]
GO

/****** Objekt:  Tabelle [dbo].[TabHelpPLUPREIS]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabHelpPLUPREIS]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabHelpPLUPREIS]
GO

/****** Objekt:  Tabelle [dbo].[TabHelpVerkGr]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabHelpVerkGr]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabHelpVerkGr]
GO

/****** Objekt:  Tabelle [dbo].[TabKakomArtikelFrequenz]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabKakomArtikelFrequenz]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabKakomArtikelFrequenz]
GO

/****** Objekt:  Tabelle [dbo].[TabKakomArtikelumsatz]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabKakomArtikelumsatz]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabKakomArtikelumsatz]
GO

/****** Objekt:  Tabelle [dbo].[TabKakomFrequenz]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabKakomFrequenz]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabKakomFrequenz]
GO

/****** Objekt:  Tabelle [dbo].[TabKakomKassierer]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabKakomKassierer]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabKakomKassierer]
GO

/****** Objekt:  Tabelle [dbo].[TabKakomTransaktion]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabKakomTransaktion]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabKakomTransaktion]
GO

/****** Objekt:  Tabelle [dbo].[TabKakomWarengruppen]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabKakomWarengruppen]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabKakomWarengruppen]
GO

/****** Objekt:  Tabelle [dbo].[TabParadoxArtikelBezeichnung]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabParadoxArtikelBezeichnung]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabParadoxArtikelBezeichnung]
GO

/****** Objekt:  Tabelle [dbo].[TabPepPersonalstamm]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabPepPersonalstamm]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabPepPersonalstamm]
GO

/****** Objekt:  Tabelle [dbo].[TabPepTagZeiten]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabPepTagZeiten]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabPepTagZeiten]
GO

/****** Objekt:  Tabelle [dbo].[TabTempPLUPREIS]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TabTempPLUPREIS]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TabTempPLUPREIS]
GO

/****** Objekt:  Tabelle [dbo].[TapHelpImpAnzTypKasse1x2]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TapHelpImpAnzTypKasse1x2]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TapHelpImpAnzTypKasse1x2]
GO

/****** Objekt:  Tabelle [dbo].[USERDEF01]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[USERDEF01]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[USERDEF01]
GO

/****** Objekt:  Tabelle [dbo].[VDMDRIVEMAP]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VDMDRIVEMAP]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[VDMDRIVEMAP]
GO

/****** Objekt:  Tabelle [dbo].[VDMISAPIDEF]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VDMISAPIDEF]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[VDMISAPIDEF]
GO

/****** Objekt:  Tabelle [dbo].[VDMLOGINS]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VDMLOGINS]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[VDMLOGINS]
GO

/****** Objekt:  Tabelle [dbo].[VDMUPD01]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[VDMUPD01]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[VDMUPD01]
GO

/****** Objekt:  Tabelle [dbo].[WANCC004]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WANCC004]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[WANCC004]
GO

/****** Objekt:  Tabelle [dbo].[tabFilInfo1KalenderDaten]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tabFilInfo1KalenderDaten]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tabFilInfo1KalenderDaten]
GO

/****** Objekt:  Tabelle [dbo].[tabFilInfo22ErfassDaten]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tabFilInfo22ErfassDaten]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tabFilInfo22ErfassDaten]
GO

/****** Objekt:  Tabelle [dbo].[tabFilInfo23FilDaten]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tabFilInfo23FilDaten]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tabFilInfo23FilDaten]
GO

/****** Objekt:  Tabelle [dbo].[tabFilInfo2SollUmsatzFilialeJahr]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tabFilInfo2SollUmsatzFilialeJahr]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tabFilInfo2SollUmsatzFilialeJahr]
GO

/****** Objekt:  Tabelle [dbo].[tabFilInfo3Bemerkung]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tabFilInfo3Bemerkung]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tabFilInfo3Bemerkung]
GO

/****** Objekt:  Tabelle [dbo].[yTemp1_Monatssummen]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[yTemp1_Monatssummen]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[yTemp1_Monatssummen]
GO

/****** Objekt:  Tabelle [dbo].[yTempFilVergl3x1]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[yTempFilVergl3x1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[yTempFilVergl3x1]
GO

/****** Objekt:  Tabelle [Jeannette].[yTempWgFil2x0]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[Jeannette].[yTempWgFil2x0]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [Jeannette].[yTempWgFil2x0]
GO

/****** Objekt:  Tabelle [dbo].[yTempWgFil2x0]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[yTempWgFil2x0]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[yTempWgFil2x0]
GO

/****** Objekt:  Tabelle [Jeannette].[yTempWgGesWg2x5]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[Jeannette].[yTempWgGesWg2x5]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [Jeannette].[yTempWgGesWg2x5]
GO

/****** Objekt:  Tabelle [dbo].[yTempWgGesWg2x5]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[yTempWgGesWg2x5]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[yTempWgGesWg2x5]
GO

/****** Objekt:  Tabelle [Jeannette].[yTempWgVor1_2x2]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[Jeannette].[yTempWgVor1_2x2]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [Jeannette].[yTempWgVor1_2x2]
GO

/****** Objekt:  Tabelle [dbo].[yTempWgVor1_2x2]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[yTempWgVor1_2x2]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[yTempWgVor1_2x2]
GO

/****** Objekt:  Tabelle [Jeannette].[yTempWgVorDetail1x1]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[Jeannette].[yTempWgVorDetail1x1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [Jeannette].[yTempWgVorDetail1x1]
GO

/****** Objekt:  Tabelle [dbo].[yTempWgVorDetail1x1]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[yTempWgVorDetail1x1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[yTempWgVorDetail1x1]
GO

/****** Objekt:  Tabelle [Jeannette].[yTempWgVorges_2x1]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[Jeannette].[yTempWgVorges_2x1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [Jeannette].[yTempWgVorges_2x1]
GO

/****** Objekt:  Tabelle [dbo].[yTempWgVorges_2x1]    Skriptdatum: 27.08.2007 15:35:13 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[yTempWgVorges_2x1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[yTempWgVorges_2x1]
GO

/****** Objekt:  Tabelle [dbo].[APPDEF00]    Skriptdatum: 27.08.2007 15:35:19 ******/
CREATE TABLE [dbo].[APPDEF00] (
	[APPID] [int] NOT NULL ,
	[NAME] [char] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ISDEFAULT] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[APPPARAM]    Skriptdatum: 27.08.2007 15:35:19 ******/
CREATE TABLE [dbo].[APPPARAM] (
	[APPID] [int] NOT NULL ,
	[PID] [int] NOT NULL ,
	[VA] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[VN] [real] NULL ,
	[VI] [int] NULL ,
	[VD] [datetime] NULL ,
	[TYPID] [int] NULL ,
	[NAME] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DDEF0000]    Skriptdatum: 27.08.2007 15:35:20 ******/
CREATE TABLE [dbo].[DDEF0000] (
	[ID] [int] NOT NULL ,
	[BEZEICHNUNG] [varchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ALIAS] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STATUS] [int] NULL ,
	[FLAG_C1] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DDEF0001]    Skriptdatum: 27.08.2007 15:35:20 ******/
CREATE TABLE [dbo].[DDEF0001] (
	[ID] [int] NOT NULL ,
	[NAME] [varchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[V] [varchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DEF00000]    Skriptdatum: 27.08.2007 15:35:20 ******/
CREATE TABLE [dbo].[DEF00000] (
	[ID] [int] NOT NULL ,
	[BESCHREIBUNG] [char] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TYPID] [int] NULL ,
	[DEVDISABLED] [int] NULL ,
	[SZUSER] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SZDOMAIN] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SZPASSWORD] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DEF00001]    Skriptdatum: 27.08.2007 15:35:20 ******/
CREATE TABLE [dbo].[DEF00001] (
	[ID] [int] NOT NULL ,
	[P] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[V] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SORT] [int] NULL ,
	[SORT_] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DEF00002]    Skriptdatum: 27.08.2007 15:35:20 ******/
CREATE TABLE [dbo].[DEF00002] (
	[ID] [int] NOT NULL ,
	[CID] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DEF00003]    Skriptdatum: 27.08.2007 15:35:20 ******/
CREATE TABLE [dbo].[DEF00003] (
	[ID] [int] NOT NULL ,
	[BEZEICHNUNG] [char] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SZCOMPUTER] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SZIP] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[IPORT] [int] NULL ,
	[FC1] [int] NULL ,
	[IPORTR] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DEF00004]    Skriptdatum: 27.08.2007 15:35:20 ******/
CREATE TABLE [dbo].[DEF00004] (
	[ID] [int] NOT NULL ,
	[AVALUE] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[IVALUE] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DEF00010]    Skriptdatum: 27.08.2007 15:35:20 ******/
CREATE TABLE [dbo].[DEF00010] (
	[ID] [int] NOT NULL ,
	[BEZEICHNUNG] [char] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DEVID1] [int] NULL ,
	[DEVID2] [int] NULL ,
	[IPA] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DEV00000]    Skriptdatum: 27.08.2007 15:35:20 ******/
CREATE TABLE [dbo].[DEV00000] (
	[ID] [int] NOT NULL ,
	[BESCHREIBUNG] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[VERSION] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LIBNAME] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[C1] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DEV00001]    Skriptdatum: 27.08.2007 15:35:20 ******/
CREATE TABLE [dbo].[DEV00001] (
	[ID] [int] NOT NULL ,
	[P] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[V] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SORT] [int] NULL ,
	[SORT_] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DEV00002]    Skriptdatum: 27.08.2007 15:35:20 ******/
CREATE TABLE [dbo].[DEV00002] (
	[ID] [int] NOT NULL ,
	[P] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[V] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DEV00003]    Skriptdatum: 27.08.2007 15:35:21 ******/
CREATE TABLE [dbo].[DEV00003] (
	[ID] [int] NOT NULL ,
	[P] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[V] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SORT] [int] NULL ,
	[SORT_] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DEV00010]    Skriptdatum: 27.08.2007 15:35:21 ******/
CREATE TABLE [dbo].[DEV00010] (
	[ID] [int] NOT NULL ,
	[IDM] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[DEV00020]    Skriptdatum: 27.08.2007 15:35:21 ******/
CREATE TABLE [dbo].[DEV00020] (
	[ID0] [int] NOT NULL ,
	[ID1] [int] NOT NULL ,
	[ID2] [int] NOT NULL ,
	[ID3] [int] NOT NULL ,
	[P] [char] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[V] [char] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[LANG0000]    Skriptdatum: 27.08.2007 15:35:21 ******/
CREATE TABLE [dbo].[LANG0000] (
	[COUNTRY] [int] NOT NULL ,
	[APPID] [int] NOT NULL ,
	[MODULID] [int] NOT NULL ,
	[TOKENID] [int] NOT NULL ,
	[DEFAULTTEXT] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DATA] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[LANG0001]    Skriptdatum: 27.08.2007 15:35:21 ******/
CREATE TABLE [dbo].[LANG0001] (
	[COUNTRY] [int] NOT NULL ,
	[VERSION] [int] NULL ,
	[NAME] [char] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[LOG00000]    Skriptdatum: 27.08.2007 15:35:21 ******/
CREATE TABLE [dbo].[LOG00000] (
	[ID] [int] NOT NULL ,
	[JOBID] [int] NOT NULL ,
	[Z] [int] NOT NULL ,
	[MSGTIME] [datetime] NULL ,
	[MSG] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[KAT] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[LOG00001]    Skriptdatum: 27.08.2007 15:35:21 ******/
CREATE TABLE [dbo].[LOG00001] (
	[ID] [int] NOT NULL ,
	[Z] [int] NOT NULL ,
	[SRC] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MSG] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[KAT] [int] NULL ,
	[T] [datetime] NULL ,
	[CID] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[MENU0000]    Skriptdatum: 27.08.2007 15:35:21 ******/
CREATE TABLE [dbo].[MENU0000] (
	[ID] [int] NOT NULL ,
	[SORT] [int] NULL ,
	[PATH] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[IMGINDEX] [int] NULL ,
	[CODE] [int] NULL ,
	[APPID] [int] NULL ,
	[LANGID] [int] NULL ,
	[USERID] [int] NULL ,
	[SORT_] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[NK]    Skriptdatum: 27.08.2007 15:35:21 ******/
CREATE TABLE [dbo].[NK] (
	[ID] [char] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[V] [int] NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[SESSION001]    Skriptdatum: 27.08.2007 15:35:21 ******/
CREATE TABLE [dbo].[SESSION001] (
	[ID] [int] NOT NULL ,
	[UID] [int] NULL ,
	[STARTUP] [datetime] NULL ,
	[LOGOUT] [datetime] NULL ,
	[C1] [int] NULL ,
	[CLIP] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LANGID] [int] NULL ,
	[CID] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[SESSION002]    Skriptdatum: 27.08.2007 15:35:22 ******/
CREATE TABLE [dbo].[SESSION002] (
	[ID] [int] NOT NULL ,
	[APPID] [int] NOT NULL ,
	[MODULID] [int] NOT NULL ,
	[PID] [int] NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[SESSION003]    Skriptdatum: 27.08.2007 15:35:22 ******/
CREATE TABLE [dbo].[SESSION003] (
	[APPID] [int] NOT NULL ,
	[MODULID] [int] NOT NULL ,
	[PID] [int] NOT NULL ,
	[NAME] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[SESSION004]    Skriptdatum: 27.08.2007 15:35:22 ******/
CREATE TABLE [dbo].[SESSION004] (
	[MODULID] [int] NOT NULL ,
	[PID] [int] NOT NULL ,
	[INFOTEXT] [char] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DLEN] [int] NULL ,
	[LINFO] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[SESSION004_1]    Skriptdatum: 27.08.2007 15:35:22 ******/
CREATE TABLE [dbo].[SESSION004_1] (
	[MODULID] [int] NOT NULL ,
	[PID] [int] NOT NULL ,
	[CID] [int] NOT NULL ,
	[INFOTEXT] [char] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DLEN] [int] NULL ,
	[LINFO] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[SESSION005]    Skriptdatum: 27.08.2007 15:35:22 ******/
CREATE TABLE [dbo].[SESSION005] (
	[ID] [int] NOT NULL ,
	[SZCOMPUTER] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[SZKEY] [char] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[SZITEM] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[SZVALUE] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[SOUND000]    Skriptdatum: 27.08.2007 15:35:22 ******/
CREATE TABLE [dbo].[SOUND000] (
	[ID] [int] NOT NULL ,
	[NAME] [char] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DATA] [image] NULL ,
	[DATASIZE] [int] NULL ,
	[CTYPE] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[SRVDEF00]    Skriptdatum: 27.08.2007 15:35:22 ******/
CREATE TABLE [dbo].[SRVDEF00] (
	[ID] [int] NOT NULL ,
	[MID] [int] NULL ,
	[STARTTIME] [datetime] NULL ,
	[INTERVALL] [int] NULL ,
	[JOBID] [int] NULL ,
	[C1] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[SRVDEF01]    Skriptdatum: 27.08.2007 15:35:22 ******/
CREATE TABLE [dbo].[SRVDEF01] (
	[ID] [int] NOT NULL ,
	[NAME] [char] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MODULNAME] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[SRVDEF02]    Skriptdatum: 27.08.2007 15:35:22 ******/
CREATE TABLE [dbo].[SRVDEF02] (
	[ID] [int] NOT NULL ,
	[JOBID] [int] NOT NULL ,
	[PID] [int] NOT NULL ,
	[V] [char] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[SRVDEF03]    Skriptdatum: 27.08.2007 15:35:22 ******/
CREATE TABLE [dbo].[SRVDEF03] (
	[ID] [int] NOT NULL ,
	[PID] [int] NOT NULL ,
	[NAME] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[V] [char] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[SRVDEF04]    Skriptdatum: 27.08.2007 15:35:23 ******/
CREATE TABLE [dbo].[SRVDEF04] (
	[ID] [int] NOT NULL ,
	[Z] [int] NOT NULL ,
	[V] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABAZ00]    Skriptdatum: 27.08.2007 15:35:23 ******/
CREATE TABLE [dbo].[TABAZ00] (
	[JAHR] [int] NOT NULL ,
	[MONAT] [int] NOT NULL ,
	[PERSNR] [int] NOT NULL ,
	[TYP] [int] NOT NULL ,
	[KST] [int] NOT NULL ,
	[LOHNART] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[HLOHN] [float] NULL ,
	[SRC] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABAZ00_TMP]    Skriptdatum: 27.08.2007 15:35:23 ******/
CREATE TABLE [dbo].[TABAZ00_TMP] (
	[JAHR] [int] NOT NULL ,
	[MONAT] [int] NOT NULL ,
	[PERSNR] [int] NOT NULL ,
	[TYP] [int] NOT NULL ,
	[KST] [int] NOT NULL ,
	[LOHNART] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[HLOHN] [float] NULL ,
	[SRC] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABAZ01]    Skriptdatum: 27.08.2007 15:35:23 ******/
CREATE TABLE [dbo].[TABAZ01] (
	[JAHR] [int] NULL ,
	[MONAT] [int] NULL ,
	[PERSNR] [int] NULL ,
	[LOHNART] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[KST] [int] NULL ,
	[HLOHN] [float] NULL ,
	[TYP] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABAZ02]    Skriptdatum: 27.08.2007 15:35:23 ******/
CREATE TABLE [dbo].[TABAZ02] (
	[ID] [int] NOT NULL ,
	[JAHR] [int] NULL ,
	[MONAT] [int] NULL ,
	[PERSNR] [int] NULL ,
	[KST] [int] NULL ,
	[LOHNART] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HLOHN] [float] NULL ,
	[C1] [int] NULL ,
	[BEMERKUNG] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABAZ03]    Skriptdatum: 27.08.2007 15:35:23 ******/
CREATE TABLE [dbo].[TABAZ03] (
	[JAHR] [int] NULL ,
	[MONAT] [int] NULL ,
	[PERSNR] [int] NULL ,
	[LOHNART] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[KST] [int] NULL ,
	[HLOHN] [float] NULL ,
	[SATZART] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TYP] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABAZ11]    Skriptdatum: 27.08.2007 15:35:23 ******/
CREATE TABLE [dbo].[TABAZ11] (
	[JAHR] [int] NULL ,
	[MONAT] [int] NULL ,
	[PERSNR] [int] NULL ,
	[LOHNART] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[KST] [int] NULL ,
	[HLOHN] [float] NULL ,
	[TYP] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABAZM001]    Skriptdatum: 27.08.2007 15:35:23 ******/
CREATE TABLE [dbo].[TABAZM001] (
	[ID] [int] NOT NULL ,
	[BESCHREIBUNG] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SOLL1] [float] NULL ,
	[SOLL2] [float] NULL ,
	[SOLL3] [float] NULL ,
	[SOLL4] [float] NULL ,
	[SOLL5] [float] NULL ,
	[SOLL6] [float] NULL ,
	[SOLL7] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABAZM002]    Skriptdatum: 27.08.2007 15:35:23 ******/
CREATE TABLE [dbo].[TABAZM002] (
	[JAHR] [int] NOT NULL ,
	[AZ] [int] NOT NULL ,
	[M01] [float] NULL ,
	[M02] [float] NULL ,
	[M03] [float] NULL ,
	[M04] [float] NULL ,
	[M05] [float] NULL ,
	[M06] [float] NULL ,
	[M07] [float] NULL ,
	[M08] [float] NULL ,
	[M09] [float] NULL ,
	[M10] [float] NULL ,
	[M11] [float] NULL ,
	[M12] [float] NULL ,
	[T01] [float] NULL ,
	[T02] [float] NULL ,
	[T03] [float] NULL ,
	[T04] [float] NULL ,
	[T05] [float] NULL ,
	[T06] [float] NULL ,
	[T07] [float] NULL ,
	[T08] [float] NULL ,
	[T09] [float] NULL ,
	[T10] [float] NULL ,
	[T11] [float] NULL ,
	[T12] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABAZM003]    Skriptdatum: 27.08.2007 15:35:23 ******/
CREATE TABLE [dbo].[TABAZM003] (
	[ID] [int] NOT NULL ,
	[STICHTAG] [datetime] NOT NULL ,
	[STUNDEN] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABAZM004]    Skriptdatum: 27.08.2007 15:35:24 ******/
CREATE TABLE [dbo].[TABAZM004] (
	[ID] [int] NOT NULL ,
	[DATUM] [datetime] NOT NULL ,
	[SOLLH] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABBO70STAT]    Skriptdatum: 27.08.2007 15:35:24 ******/
CREATE TABLE [dbo].[TABBO70STAT] (
	[KUNDENNR] [int] NULL ,
	[ARTIKELNR] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DATUM] [datetime] NULL ,
	[SATZART] [int] NULL ,
	[LVKBRUTTO] [float] NULL ,
	[LVKNETTO] [float] NULL ,
	[KUNDENPREIS] [float] NULL ,
	[EINSTANDSPREIS] [float] NULL ,
	[MENGE] [float] NULL ,
	[GESAMTNETTO] [float] NULL ,
	[VERTRETERNR] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABKASS01]    Skriptdatum: 27.08.2007 15:35:24 ******/
CREATE TABLE [dbo].[TABKASS01] (
	[ID] [int] NOT NULL ,
	[NAME] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABKASS02]    Skriptdatum: 27.08.2007 15:35:24 ******/
CREATE TABLE [dbo].[TABKASS02] (
	[ID] [int] NOT NULL ,
	[DATUM] [datetime] NOT NULL ,
	[F1] [float] NULL ,
	[F2] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABKST01]    Skriptdatum: 27.08.2007 15:35:24 ******/
CREATE TABLE [dbo].[TABKST01] (
	[ID] [int] NOT NULL ,
	[NAME] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABKST02]    Skriptdatum: 27.08.2007 15:35:24 ******/
CREATE TABLE [dbo].[TABKST02] (
	[ID] [int] NOT NULL ,
	[DATUM] [datetime] NOT NULL ,
	[C1] [int] NULL ,
	[F1] [float] NULL ,
	[F2] [float] NULL ,
	[F3] [float] NULL ,
	[F4] [float] NULL ,
	[F5] [float] NULL ,
	[F6] [float] NULL ,
	[F7] [float] NULL ,
	[F8] [float] NULL ,
	[F9] [float] NULL ,
	[F10] [float] NULL ,
	[F11] [float] NULL ,
	[F12] [float] NULL ,
	[F13] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABKST03]    Skriptdatum: 27.08.2007 15:35:24 ******/
CREATE TABLE [dbo].[TABKST03] (
	[KST1] [int] NOT NULL ,
	[KST2] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABLLLOG]    Skriptdatum: 27.08.2007 15:35:24 ******/
CREATE TABLE [dbo].[TABLLLOG] (
	[ID] [int] NOT NULL ,
	[DATUM] [datetime] NULL ,
	[JAHR] [int] NULL ,
	[MONAT] [int] NULL ,
	[TYP] [int] NULL ,
	[RC] [int] NULL ,
	[MSG] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABLLOHN01]    Skriptdatum: 27.08.2007 15:35:24 ******/
CREATE TABLE [dbo].[TABLLOHN01] (
	[JAHR] [int] NOT NULL ,
	[MONAT] [int] NOT NULL ,
	[PERSNR] [int] NOT NULL ,
	[KST] [int] NOT NULL ,
	[TYP] [int] NOT NULL ,
	[HLOHN] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABLLPERS01]    Skriptdatum: 27.08.2007 15:35:24 ******/
CREATE TABLE [dbo].[TABLLPERS01] (
	[ID] [int] NOT NULL ,
	[DATUM] [datetime] NOT NULL ,
	[C1] [int] NULL ,
	[F1] [float] NULL ,
	[F2] [float] NULL ,
	[SCHICHT] [float] NULL ,
	[ASTATUS] [int] NULL ,
	[ALOHNART] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ELOHNART] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SKST] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABLLPERS02]    Skriptdatum: 27.08.2007 15:35:25 ******/
CREATE TABLE [dbo].[TABLLPERS02] (
	[ID] [int] NOT NULL ,
	[DATUM] [datetime] NOT NULL ,
	[AZ] [int] NULL ,
	[C1] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABLLUFAKT01]    Skriptdatum: 27.08.2007 15:35:25 ******/
CREATE TABLE [dbo].[TABLLUFAKT01] (
	[JAHR] [int] NOT NULL ,
	[MONAT] [int] NOT NULL ,
	[F1] [float] NULL ,
	[F2] [float] NULL ,
	[F3] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABLLWARN]    Skriptdatum: 27.08.2007 15:35:25 ******/
CREATE TABLE [dbo].[TABLLWARN] (
	[ID] [int] NOT NULL ,
	[JAHR] [int] NULL ,
	[MONAT] [int] NULL ,
	[TYP] [int] NULL ,
	[MSG] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABLOHNART00]    Skriptdatum: 27.08.2007 15:35:25 ******/
CREATE TABLE [dbo].[TABLOHNART00] (
	[ID] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[TYP] [int] NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABLOHNART01]    Skriptdatum: 27.08.2007 15:35:25 ******/
CREATE TABLE [dbo].[TABLOHNART01] (
	[ID] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[NAME] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[L_SATZART] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[L_TYP] [int] NULL ,
	[TSTUNDEN] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABLOHNART02]    Skriptdatum: 27.08.2007 15:35:25 ******/
CREATE TABLE [dbo].[TABLOHNART02] (
	[LA1] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[LA2] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[RF] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABLOHNARTKONVERT]    Skriptdatum: 27.08.2007 15:35:25 ******/
CREATE TABLE [dbo].[TABLOHNARTKONVERT] (
	[FZEICHEN] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[LOHNART] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[USEFIELD] [int] NULL ,
	[C1] [int] NULL ,
	[BEMERKUNG] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LOHNART2] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABLOHNEXP1]    Skriptdatum: 27.08.2007 15:35:25 ******/
CREATE TABLE [dbo].[TABLOHNEXP1] (
	[JAHR] [int] NOT NULL ,
	[MONAT] [int] NOT NULL ,
	[LINENR] [int] NOT NULL ,
	[DATA] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABLOHNPERS]    Skriptdatum: 27.08.2007 15:35:25 ******/
CREATE TABLE [dbo].[TABLOHNPERS] (
	[P_NUMMER] [int] NOT NULL ,
	[P_NAME] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_VORNAME] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_GEB_DAT] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABPEPAZ1]    Skriptdatum: 27.08.2007 15:35:25 ******/
CREATE TABLE [dbo].[TABPEPAZ1] (
	[JAHR] [int] NULL ,
	[MONAT] [int] NULL ,
	[PERSNR] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LOHNART] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HLOHN] [float] NULL ,
	[TLOHN] [float] NULL ,
	[KST] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INVALID] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABPEPAZ1_TMP]    Skriptdatum: 27.08.2007 15:35:25 ******/
CREATE TABLE [dbo].[TABPEPAZ1_TMP] (
	[JAHR] [int] NULL ,
	[MONAT] [int] NULL ,
	[PERSNR] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LOHNART] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HLOHN] [float] NULL ,
	[TLOHN] [float] NULL ,
	[KST] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INVALID] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABSORTPLANART]    Skriptdatum: 27.08.2007 15:35:25 ******/
CREATE TABLE [dbo].[TABSORTPLANART] (
	[ARTNR] [int] NOT NULL ,
	[BEZEICHNUNG] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SORTIMENT] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[AKTIV] [int] NULL ,
	[PARAMETER1] [int] NULL ,
	[PARAMETER2] [int] NULL ,
	[PARAMETER3] [int] NULL ,
	[PARAMETER4] [int] NULL ,
	[PARAMETER5] [int] NULL ,
	[PARAMETER6] [int] NULL ,
	[PARAMETER7] [int] NULL ,
	[PARAMETER8] [int] NULL ,
	[PARAMETER9] [int] NULL ,
	[PARAMETER10] [int] NULL ,
	[COLOR] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABSORTPLANPARA]    Skriptdatum: 27.08.2007 15:35:26 ******/
CREATE TABLE [dbo].[TABSORTPLANPARA] (
	[ID] [int] NOT NULL ,
	[BEZEICHNUNG] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SORTIMENT] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABSORTPLANZP]    Skriptdatum: 27.08.2007 15:35:26 ******/
CREATE TABLE [dbo].[TABSORTPLANZP] (
	[ARTNR] [int] NOT NULL ,
	[DATUM_VON] [datetime] NOT NULL ,
	[DATUM_BIS] [datetime] NULL ,
	[TOUR1] [int] NULL ,
	[TOUR2] [int] NULL ,
	[WT1] [int] NULL ,
	[WT2] [int] NULL ,
	[WT3] [int] NULL ,
	[WT4] [int] NULL ,
	[WT5] [int] NULL ,
	[WT6] [int] NULL ,
	[WT7] [int] NULL ,
	[AKTION] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABUMSATZ01]    Skriptdatum: 27.08.2007 15:35:26 ******/
CREATE TABLE [dbo].[TABUMSATZ01] (
	[JAHR] [int] NOT NULL ,
	[MONAT] [int] NOT NULL ,
	[FNR] [int] NOT NULL ,
	[KSP] [int] NOT NULL ,
	[NETTO] [float] NULL ,
	[BRUTTO] [float] NULL ,
	[MWST] [float] NULL ,
	[WICHTUNG] [float] NULL ,
	[LUMSATZ] [float] NULL ,
	[LNETTO] [float] NULL ,
	[LBRUTTO] [float] NULL ,
	[RNETTO] [float] NULL ,
	[RBRUTTO] [float] NULL ,
	[RP] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABUMSATZ02]    Skriptdatum: 27.08.2007 15:35:26 ******/
CREATE TABLE [dbo].[TABUMSATZ02] (
	[JAHR] [int] NOT NULL ,
	[MONAT] [int] NOT NULL ,
	[FNR] [int] NOT NULL ,
	[LUMSATZ] [float] NULL ,
	[LUMSATZH] [float] NULL ,
	[HSATZ] [float] NULL ,
	[PSATZ] [float] NULL ,
	[PH] [float] NULL ,
	[PG] [float] NULL ,
	[PF] [float] NULL ,
	[PGA] [float] NULL ,
	[PS] [float] NULL ,
	[UFAKTOR] [float] NULL ,
	[PG1] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABUMSATZ02_ALT]    Skriptdatum: 27.08.2007 15:35:26 ******/
CREATE TABLE [dbo].[TABUMSATZ02_ALT] (
	[JAHR] [int] NOT NULL ,
	[MONAT] [int] NOT NULL ,
	[FNR] [int] NOT NULL ,
	[LUMSATZ] [float] NULL ,
	[LUMSATZH] [float] NULL ,
	[HSATZ] [float] NULL ,
	[PSATZ] [float] NULL ,
	[PH] [float] NULL ,
	[PG] [float] NULL ,
	[PF] [float] NULL ,
	[PGA] [float] NULL ,
	[PS] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABWINIPEV01]    Skriptdatum: 27.08.2007 15:35:26 ******/
CREATE TABLE [dbo].[TABWINIPEV01] (
	[ID] [int] NOT NULL ,
	[DATUM] [datetime] NULL ,
	[SRC] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[C1] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABWINIPEV02]    Skriptdatum: 27.08.2007 15:35:26 ******/
CREATE TABLE [dbo].[TABWINIPEV02] (
	[ID] [int] NOT NULL ,
	[LINENR] [int] NOT NULL ,
	[DATA] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABWINIPEV03]    Skriptdatum: 27.08.2007 15:35:26 ******/
CREATE TABLE [dbo].[TABWINIPEV03] (
	[ID] [int] NOT NULL ,
	[LINENR] [int] NOT NULL ,
	[DATA] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TABWINIPEVAZ1]    Skriptdatum: 27.08.2007 15:35:26 ******/
CREATE TABLE [dbo].[TABWINIPEVAZ1] (
	[JAHR] [int] NULL ,
	[MONAT] [int] NULL ,
	[PERSNR] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LOHNART] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HLOHN] [float] NULL ,
	[KST] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INVALID] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TabHelpImpKassierName3x1]    Skriptdatum: 27.08.2007 15:35:26 ******/
CREATE TABLE [dbo].[TabHelpImpKassierName3x1] (
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[KasseNr] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[KassiererNr] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[PersonalNr] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PersonalName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TabHelpImpTypKassiererAnz1x1]    Skriptdatum: 27.08.2007 15:35:27 ******/
CREATE TABLE [dbo].[TabHelpImpTypKassiererAnz1x1] (
	[KassTyp] [nchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[KassiererNr] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TabHelpPLUPREIS]    Skriptdatum: 27.08.2007 15:35:27 ******/
CREATE TABLE [dbo].[TabHelpPLUPREIS] (
	[PluNr] [smallint] NOT NULL ,
	[Preis_char] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Bezeichnung] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Datum] [datetime] NOT NULL ,
	[Preis_money] [money] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TabHelpVerkGr]    Skriptdatum: 27.08.2007 15:35:27 ******/
CREATE TABLE [dbo].[TabHelpVerkGr] (
	[Nr] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[GrName] [nchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ErsteArtNr] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LetzteArtNr] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ErsteAktionNr] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LetzteAktionNr] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TabKakomArtikelFrequenz]    Skriptdatum: 27.08.2007 15:35:27 ******/
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

/****** Objekt:  Tabelle [dbo].[TabKakomArtikelumsatz]    Skriptdatum: 27.08.2007 15:35:27 ******/
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

/****** Objekt:  Tabelle [dbo].[TabKakomFrequenz]    Skriptdatum: 27.08.2007 15:35:27 ******/
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

/****** Objekt:  Tabelle [dbo].[TabKakomKassierer]    Skriptdatum: 27.08.2007 15:35:27 ******/
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

/****** Objekt:  Tabelle [dbo].[TabKakomTransaktion]    Skriptdatum: 27.08.2007 15:35:27 ******/
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

/****** Objekt:  Tabelle [dbo].[TabKakomWarengruppen]    Skriptdatum: 27.08.2007 15:35:28 ******/
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

/****** Objekt:  Tabelle [dbo].[TabParadoxArtikelBezeichnung]    Skriptdatum: 27.08.2007 15:35:28 ******/
CREATE TABLE [dbo].[TabParadoxArtikelBezeichnung] (
	[STPL-PLNR] [float] NOT NULL ,
	[Arti-Nr#] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Arti-Beze#] [nvarchar] (22) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TabPepPersonalstamm]    Skriptdatum: 27.08.2007 15:35:28 ******/
CREATE TABLE [dbo].[TabPepPersonalstamm] (
	[Mitarbeiternummer] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Nachname] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Vorname] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Strasse] [nvarchar] (42) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Anrede] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Postleitzahl] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Ort] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Telefon] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Staat] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Religion] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Geburtsdatum] [datetime] NULL ,
	[GebOrt] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Eintritt] [datetime] NULL ,
	[Austritt] [datetime] NULL ,
	[Arbeitserlaubnis_bis] [datetime] NULL ,
	[Sozialversicherungsnummer] [nvarchar] (42) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Finanzamt] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[KrankenkassenNr] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Steuerklasse] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Kinderfreibetraege] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Behinderung] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Familienstand] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Bank] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BLZ] [nvarchar] (22) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Konto] [nvarchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Urlaubsjahr1] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Urlaubsjahr2] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Urlaubsjahr3] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Urlaubsanspruch1] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Urlaubsanspruch2] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Urlaubsanspruch3] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Abrechnungsart] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[StundenlohnAlt] [money] NULL ,
	[GehaltNeu] [money] NULL ,
	[StundenLohnNeu] [money] NULL ,
	[Lohn-NKAlt] [int] NULL ,
	[Lohn-NKNeu] [int] NULL ,
	[MonatszulageAlt] [money] NULL ,
	[MonatszulageNeu] [money] NULL ,
	[JahreszulageAlt] [money] NULL ,
	[JahreszulageNeu] [money] NULL ,
	[ArbeitsstundenNeuAb] [datetime] NULL ,
	[NormalarbeitszeitTagMin] [int] NULL ,
	[NormalarbeitszeitWoMin] [int] NULL ,
	[NormalarbeitszeitMoMin] [int] NULL ,
	[NormalarbeitszeitTagMinNeu] [int] NULL ,
	[NormalarbeitszeitWoMinNeu] [int] NULL ,
	[NormalarbeitszeitMoMinNeu] [int] NULL ,
	[MinArbeitszeitWoMin] [int] NULL ,
	[MinArbeitszeitMoMin] [int] NULL ,
	[MinArbeitszeitWoMinNeu] [int] NULL ,
	[MinArbeitszeitMoMinNeu] [int] NULL ,
	[MaximalArbeitszeitWoMin] [int] NULL ,
	[MaximalArbeitszeitMoMin] [int] NULL ,
	[MaximalArbeitszeitWoMinNeu] [int] NULL ,
	[MaximalArbeitszeitMoMinNeu] [int] NULL ,
	[Status] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[AusweisNummer] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[AblaufPolZeugnis] [datetime] NULL ,
	[AblaufSchufa] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TabPepTagZeiten]    Skriptdatum: 27.08.2007 15:35:28 ******/
CREATE TABLE [dbo].[TabPepTagZeiten] (
	[Tag] [datetime] NOT NULL ,
	[KSNr] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Arb] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ArbbF] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PerNr] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[FZeichen] [nchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DauerMin] [nchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Datum] [nchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[loeschen] [nchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TabTempPLUPREIS]    Skriptdatum: 27.08.2007 15:35:28 ******/
CREATE TABLE [dbo].[TabTempPLUPREIS] (
	[PluNr] [smallint] NOT NULL ,
	[Preis_char] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Bezeichnung] [nchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Datum] AS (convert(datetime,convert(nchar(10),getdate(),104))) ,
	[Preis_money] AS (convert(money,[preis_char])) ,
	[Datum2] [datetime] NULL ,
	[Preis2] [money] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[TapHelpImpAnzTypKasse1x2]    Skriptdatum: 27.08.2007 15:35:28 ******/
CREATE TABLE [dbo].[TapHelpImpAnzTypKasse1x2] (
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[KasseNr] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Kasstyp] [nchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[USERDEF01]    Skriptdatum: 27.08.2007 15:35:28 ******/
CREATE TABLE [dbo].[USERDEF01] (
	[ID] [int] NOT NULL ,
	[LOGINNAME] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LOGINPWD] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DISPLAYNAME] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[C1] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[VDMDRIVEMAP]    Skriptdatum: 27.08.2007 15:35:29 ******/
CREATE TABLE [dbo].[VDMDRIVEMAP] (
	[ID] [int] NOT NULL ,
	[CID] [int] NULL ,
	[MODE] [int] NULL ,
	[LOCALNAME] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[COMPUTER] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FREIGABE] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[USERNAME] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PASSWORD] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LACCOUNT] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[VDMISAPIDEF]    Skriptdatum: 27.08.2007 15:35:29 ******/
CREATE TABLE [dbo].[VDMISAPIDEF] (
	[ID] [int] NOT NULL ,
	[SERVERALIAS] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[URLLIST] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[IP] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PORT] [int] NULL ,
	[TARGETDEV] [int] NULL ,
	[MAXCONTENT] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[VDMLOGINS]    Skriptdatum: 27.08.2007 15:35:29 ******/
CREATE TABLE [dbo].[VDMLOGINS] (
	[ID] [int] NOT NULL ,
	[USERNAME] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PASSWORD] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DOMAIN] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BEMERKUNG] [char] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[VDMUPD01]    Skriptdatum: 27.08.2007 15:35:29 ******/
CREATE TABLE [dbo].[VDMUPD01] (
	[ID] [int] NOT NULL ,
	[ID1] [int] NOT NULL ,
	[STATUS] [int] NULL ,
	[STATUS1] [int] NULL ,
	[USRMSG] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[USRDATE] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[WANCC004]    Skriptdatum: 27.08.2007 15:35:29 ******/
CREATE TABLE [dbo].[WANCC004] (
	[ID] [int] NOT NULL ,
	[ID1] [int] NOT NULL ,
	[Z] [int] NOT NULL ,
	[KAT] [int] NULL ,
	[DATUM] [datetime] NULL ,
	[DATA] [char] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tabFilInfo1KalenderDaten]    Skriptdatum: 27.08.2007 15:35:29 ******/
CREATE TABLE [dbo].[tabFilInfo1KalenderDaten] (
	[Jahr] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Monat] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Oeffnungstage] [float] NULL ,
	[Feiertage] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tabFilInfo22ErfassDaten]    Skriptdatum: 27.08.2007 15:35:29 ******/
CREATE TABLE [dbo].[tabFilInfo22ErfassDaten] (
	[PlanJahr] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Monat] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[StandardOeffnTage] [numeric](18, 0) NULL ,
	[Feiertage] [numeric](18, 0) NULL ,
	[ZentraleAktionen] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Werbemittel] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tabFilInfo23FilDaten]    Skriptdatum: 27.08.2007 15:35:29 ******/
CREATE TABLE [dbo].[tabFilInfo23FilDaten] (
	[PlanJahr] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Monat] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[FilNr] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Oeffnungstage] [decimal](18, 0) NULL ,
	[MonatPassanten] [decimal](18, 0) NULL ,
	[VkPlanKundenTag] [decimal](18, 0) NULL ,
	[VkPlanKaufbetrag] [money] NULL ,
	[GlPlanKundenTag] [decimal](18, 0) NULL ,
	[GlPlanKaufbetrag] [money] NULL ,
	[FilialAktivitaeten] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MinMaxGruende] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tabFilInfo2SollUmsatzFilialeJahr]    Skriptdatum: 27.08.2007 15:35:29 ******/
CREATE TABLE [dbo].[tabFilInfo2SollUmsatzFilialeJahr] (
	[Jahr] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[FilNr] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[JahresumsatzSoll] [float] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tabFilInfo3Bemerkung]    Skriptdatum: 27.08.2007 15:35:29 ******/
CREATE TABLE [dbo].[tabFilInfo3Bemerkung] (
	[Jahr] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Monat] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[FilNr] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Bemerkung] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[yTemp1_Monatssummen]    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE TABLE [dbo].[yTemp1_Monatssummen] (
	[Jahr] [int] NULL ,
	[Monat] [int] NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Kunden] [numeric](38, 3) NULL ,
	[Umsatz] [money] NULL ,
	[VorJahr] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[yTempFilVergl3x1]    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE TABLE [dbo].[yTempFilVergl3x1] (
	[Tag] [datetime] NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Menge1] [numeric](38, 3) NULL ,
	[Umsatz1] [money] NULL ,
	[Umsatz3] [money] NULL ,
	[AnzT] [int] NULL ,
	[AvgUms3] [money] NULL ,
	[AbwFilDM] [money] NULL ,
	[AbwFilPr] [money] NULL ,
	[TagUms] [money] NULL ,
	[UmsAnteil] [money] NULL ,
	[UmsDur] [money] NULL ,
	[AbwTagDM] [money] NULL ,
	[AbwTagPr] [money] NULL ,
	[AbwFilTag] [money] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [Jeannette].[yTempWgFil2x0]    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE TABLE [Jeannette].[yTempWgFil2x0] (
	[VorTag] [datetime] NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Warengruppe] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[WgBez] [nchar] (38) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Wg] [nchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[yTempWgFil2x0]    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE TABLE [dbo].[yTempWgFil2x0] (
	[VorTag] [datetime] NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Warengruppe] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[WgBez] [nchar] (38) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Wg] [nchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [Jeannette].[yTempWgGesWg2x5]    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE TABLE [Jeannette].[yTempWgGesWg2x5] (
	[Vortag] [datetime] NOT NULL ,
	[Warengruppe] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MengeWg] [numeric](38, 3) NULL ,
	[UmsatzWg] [money] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[yTempWgGesWg2x5]    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE TABLE [dbo].[yTempWgGesWg2x5] (
	[Vortag] [datetime] NOT NULL ,
	[Warengruppe] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MengeWg] [numeric](38, 3) NULL ,
	[UmsatzWg] [money] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [Jeannette].[yTempWgVor1_2x2]    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE TABLE [Jeannette].[yTempWgVor1_2x2] (
	[Vortag] [datetime] NOT NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Warengruppe] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Menge1] [numeric](38, 3) NULL ,
	[Umsatz1] [money] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[yTempWgVor1_2x2]    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE TABLE [dbo].[yTempWgVor1_2x2] (
	[Vortag] [datetime] NOT NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Warengruppe] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Menge1] [numeric](38, 3) NULL ,
	[Umsatz1] [money] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [Jeannette].[yTempWgVorDetail1x1]    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE TABLE [Jeannette].[yTempWgVorDetail1x1] (
	[Tag] [datetime] NOT NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Warengruppe] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[WgBez] [nchar] (38) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Wg] [nchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Menge] [numeric](38, 3) NULL ,
	[Umsatz] [money] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[yTempWgVorDetail1x1]    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE TABLE [dbo].[yTempWgVorDetail1x1] (
	[Tag] [datetime] NOT NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Warengruppe] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[WgBez] [nchar] (38) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Wg] [nchar] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Menge] [numeric](38, 3) NULL ,
	[Umsatz] [money] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [Jeannette].[yTempWgVorges_2x1]    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE TABLE [Jeannette].[yTempWgVorges_2x1] (
	[VorTag] [datetime] NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Warengruppe] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Menge3] [numeric](38, 3) NULL ,
	[Umsatz3] [money] NULL ,
	[AnzT] [int] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[yTempWgVorges_2x1]    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE TABLE [dbo].[yTempWgVorges_2x1] (
	[VorTag] [datetime] NULL ,
	[Filiale] [nchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Warengruppe] [nchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Menge3] [numeric](38, 3) NULL ,
	[Umsatz3] [money] NULL ,
	[AnzT] [int] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[APPDEF00] WITH NOCHECK ADD 
	CONSTRAINT [PK_APDEF00] PRIMARY KEY  CLUSTERED 
	(
		[APPID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[APPPARAM] WITH NOCHECK ADD 
	CONSTRAINT [PK_APPPARAM] PRIMARY KEY  CLUSTERED 
	(
		[APPID],
		[PID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DDEF0000] WITH NOCHECK ADD 
	CONSTRAINT [PK_DDEF0000] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DDEF0001] WITH NOCHECK ADD 
	CONSTRAINT [PK_DDEF0001] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[NAME]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DEF00000] WITH NOCHECK ADD 
	CONSTRAINT [PK_DEF00000] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DEF00001] WITH NOCHECK ADD 
	CONSTRAINT [PK_DEF00001] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[P]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DEF00002] WITH NOCHECK ADD 
	CONSTRAINT [PK_DEF00002] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DEF00003] WITH NOCHECK ADD 
	CONSTRAINT [PK_DEF00003] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DEF00004] WITH NOCHECK ADD 
	CONSTRAINT [PK_DEF00004] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DEF00010] WITH NOCHECK ADD 
	CONSTRAINT [PK_DEF00010] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DEV00000] WITH NOCHECK ADD 
	CONSTRAINT [PK_DEV00000] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DEV00001] WITH NOCHECK ADD 
	CONSTRAINT [PK_DEV00001] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[P]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DEV00002] WITH NOCHECK ADD 
	CONSTRAINT [PK_DEV00002] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[P]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DEV00003] WITH NOCHECK ADD 
	CONSTRAINT [PK_DEV00003] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[P]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DEV00010] WITH NOCHECK ADD 
	CONSTRAINT [PK_DEV00010] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DEV00020] WITH NOCHECK ADD 
	CONSTRAINT [PK_DEV00020] PRIMARY KEY  CLUSTERED 
	(
		[ID0],
		[ID1],
		[ID2],
		[ID3]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[LANG0000] WITH NOCHECK ADD 
	CONSTRAINT [PK_LANG0000] PRIMARY KEY  CLUSTERED 
	(
		[COUNTRY],
		[APPID],
		[MODULID],
		[TOKENID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[LANG0001] WITH NOCHECK ADD 
	CONSTRAINT [PK_LANG0001] PRIMARY KEY  CLUSTERED 
	(
		[COUNTRY]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[LOG00000] WITH NOCHECK ADD 
	CONSTRAINT [PK_LOG00000] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[JOBID],
		[Z]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[LOG00001] WITH NOCHECK ADD 
	CONSTRAINT [PK_LOG00001] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[Z]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[MENU0000] WITH NOCHECK ADD 
	CONSTRAINT [PK_MENU0000] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[NK] WITH NOCHECK ADD 
	CONSTRAINT [PK_NK] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SESSION001] WITH NOCHECK ADD 
	CONSTRAINT [PK_SESSION001] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SESSION002] WITH NOCHECK ADD 
	CONSTRAINT [PK_SESSION002] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[APPID],
		[MODULID],
		[PID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SESSION003] WITH NOCHECK ADD 
	CONSTRAINT [PK_SESSION003] PRIMARY KEY  CLUSTERED 
	(
		[APPID],
		[MODULID],
		[PID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SESSION004] WITH NOCHECK ADD 
	CONSTRAINT [PK_SESSION004] PRIMARY KEY  CLUSTERED 
	(
		[MODULID],
		[PID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SESSION004_1] WITH NOCHECK ADD 
	CONSTRAINT [PK_SESSION004_1] PRIMARY KEY  CLUSTERED 
	(
		[MODULID],
		[PID],
		[CID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SESSION005] WITH NOCHECK ADD 
	CONSTRAINT [PK_SESSION005] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[SZCOMPUTER],
		[SZKEY],
		[SZITEM]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SOUND000] WITH NOCHECK ADD 
	CONSTRAINT [PK_SOUND000] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SRVDEF00] WITH NOCHECK ADD 
	CONSTRAINT [PK_SRVDEF00] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SRVDEF01] WITH NOCHECK ADD 
	CONSTRAINT [PK_SRVDEF01] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SRVDEF02] WITH NOCHECK ADD 
	CONSTRAINT [PK_SRVDEF02] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[JOBID],
		[PID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SRVDEF03] WITH NOCHECK ADD 
	CONSTRAINT [PK_SRVDEF03] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[PID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SRVDEF04] WITH NOCHECK ADD 
	CONSTRAINT [PK_SRVDEF04] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[Z]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABAZ00] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABAZ00] PRIMARY KEY  CLUSTERED 
	(
		[JAHR],
		[MONAT],
		[PERSNR],
		[TYP],
		[KST],
		[LOHNART]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABAZ00_TMP] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABAZ00_TMP] PRIMARY KEY  CLUSTERED 
	(
		[JAHR],
		[MONAT],
		[PERSNR],
		[TYP],
		[KST],
		[LOHNART]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABAZ02] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABAZ02] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABAZM001] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABAZM001] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABAZM002] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABAZM002] PRIMARY KEY  CLUSTERED 
	(
		[JAHR],
		[AZ]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABAZM003] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABAZM003] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[STICHTAG]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABAZM004] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABAZM004] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[DATUM]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABKASS01] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABKASS01] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABKASS02] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABKASS02] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[DATUM]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABKST01] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABKST01] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABKST02] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABKST02] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[DATUM]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABKST03] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABKST03] PRIMARY KEY  CLUSTERED 
	(
		[KST1]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABLLLOG] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABLLLOG] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABLLOHN01] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABLLOHN01] PRIMARY KEY  CLUSTERED 
	(
		[JAHR],
		[MONAT],
		[PERSNR],
		[KST],
		[TYP]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABLLPERS01] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABLLPERS01] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[DATUM]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABLLPERS02] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABLLPERS02] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[DATUM]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABLLUFAKT01] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABLLUFAKT01] PRIMARY KEY  CLUSTERED 
	(
		[JAHR],
		[MONAT]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABLLWARN] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABLLWARN] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABLOHNART00] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABLLOHNART00] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[TYP]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABLOHNART01] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABLLOHNART01] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABLOHNART02] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABLLOHNART02] PRIMARY KEY  CLUSTERED 
	(
		[LA1]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABLOHNEXP1] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABLOHNEXP1] PRIMARY KEY  CLUSTERED 
	(
		[JAHR],
		[MONAT],
		[LINENR]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABLOHNPERS] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABLOHNPERS] PRIMARY KEY  CLUSTERED 
	(
		[P_NUMMER]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABSORTPLANART] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABSORTPLANART] PRIMARY KEY  CLUSTERED 
	(
		[ARTNR]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABSORTPLANPARA] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABSORTPLANPARA] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[SORTIMENT]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABSORTPLANZP] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABSORTPLANZP] PRIMARY KEY  CLUSTERED 
	(
		[ARTNR],
		[DATUM_VON]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABUMSATZ01] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABUMSATZ01] PRIMARY KEY  CLUSTERED 
	(
		[JAHR],
		[MONAT],
		[FNR],
		[KSP]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABUMSATZ02_ALT] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABUMSATZ02] PRIMARY KEY  CLUSTERED 
	(
		[JAHR],
		[MONAT],
		[FNR]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABWINIPEV01] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABWINIPEV01] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABWINIPEV02] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABWINIPEV02] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[LINENR]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABWINIPEV03] WITH NOCHECK ADD 
	CONSTRAINT [PK_TABWINIPEV03] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[LINENR]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabHelpImpKassierName3x1] WITH NOCHECK ADD 
	CONSTRAINT [PK_TabHelpImpKassiererName3x1] PRIMARY KEY  CLUSTERED 
	(
		[Filiale],
		[KasseNr],
		[KassiererNr]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabHelpImpTypKassiererAnz1x1] WITH NOCHECK ADD 
	CONSTRAINT [PK_TabHelpImpTypKassiererAnz1x1] PRIMARY KEY  CLUSTERED 
	(
		[KassTyp],
		[KassiererNr]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabHelpPLUPREIS] WITH NOCHECK ADD 
	CONSTRAINT [PK_TabHelpPLUPREIS] PRIMARY KEY  CLUSTERED 
	(
		[PluNr],
		[Datum]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabKakomArtikelFrequenz] WITH NOCHECK ADD 
	CONSTRAINT [PK_TabKakomArtikelFrequenz] PRIMARY KEY  CLUSTERED 
	(
		[Tag],
		[Filiale],
		[Kasse],
		[Artikelnummer],
		[VonZeit]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabKakomArtikelumsatz] WITH NOCHECK ADD 
	CONSTRAINT [PK_TabKakomArtikelumsatz] PRIMARY KEY  CLUSTERED 
	(
		[Tag],
		[Filiale],
		[Kasse],
		[Artikelnummer]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabKakomFrequenz] WITH NOCHECK ADD 
	CONSTRAINT [PK_TabKakomFrequenz] PRIMARY KEY  CLUSTERED 
	(
		[Tag],
		[Filiale],
		[Kasse],
		[VonZeit]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabKakomKassierer] WITH NOCHECK ADD 
	CONSTRAINT [PK_TabKakomKassierer] PRIMARY KEY  CLUSTERED 
	(
		[Tag],
		[Filiale],
		[Kasse],
		[Kassierer],
		[TransaktionCode]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabKakomTransaktion] WITH NOCHECK ADD 
	CONSTRAINT [PK_TabKakomTransaktion] PRIMARY KEY  CLUSTERED 
	(
		[Tag],
		[Filiale],
		[Kasse],
		[TransaktCode]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabKakomWarengruppen] WITH NOCHECK ADD 
	CONSTRAINT [PK_TabKakomWarengruppen_1] PRIMARY KEY  CLUSTERED 
	(
		[Tag],
		[Filiale],
		[Kasse],
		[Warengruppe]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabPepPersonalstamm] WITH NOCHECK ADD 
	CONSTRAINT [PK_TabPepPersonalstamm_1] PRIMARY KEY  CLUSTERED 
	(
		[Mitarbeiternummer]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabPepTagZeiten] WITH NOCHECK ADD 
	CONSTRAINT [PK_TabPepTagZeiten] PRIMARY KEY  CLUSTERED 
	(
		[Tag],
		[KSNr],
		[PerNr],
		[FZeichen]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabTempPLUPREIS] WITH NOCHECK ADD 
	CONSTRAINT [PK_TabTempPLUPREIS] PRIMARY KEY  CLUSTERED 
	(
		[PluNr]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TapHelpImpAnzTypKasse1x2] WITH NOCHECK ADD 
	CONSTRAINT [PK_TapHelpImpAnzTypKasse1x2] PRIMARY KEY  CLUSTERED 
	(
		[Filiale],
		[KasseNr],
		[Kasstyp]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[USERDEF01] WITH NOCHECK ADD 
	CONSTRAINT [PK_USERDEF01] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[VDMDRIVEMAP] WITH NOCHECK ADD 
	CONSTRAINT [PK_VDMDRIVEMAP] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[VDMISAPIDEF] WITH NOCHECK ADD 
	CONSTRAINT [PK_VDMISAPIDEF] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[VDMLOGINS] WITH NOCHECK ADD 
	CONSTRAINT [PK_VDMLOGINS] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[VDMUPD01] WITH NOCHECK ADD 
	CONSTRAINT [PK_VDMUPD01] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[ID1]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[WANCC004] WITH NOCHECK ADD 
	CONSTRAINT [PK_WANCC004] PRIMARY KEY  CLUSTERED 
	(
		[ID],
		[ID1],
		[Z]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tabFilInfo1KalenderDaten] WITH NOCHECK ADD 
	CONSTRAINT [PK_tabFilInfo1KalenderDaten] PRIMARY KEY  CLUSTERED 
	(
		[Jahr],
		[Monat]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tabFilInfo22ErfassDaten] WITH NOCHECK ADD 
	CONSTRAINT [PK_tabFilInfo22ErfassDaten] PRIMARY KEY  CLUSTERED 
	(
		[PlanJahr],
		[Monat]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tabFilInfo23FilDaten] WITH NOCHECK ADD 
	CONSTRAINT [PK_tabFilInfo23FilDaten] PRIMARY KEY  CLUSTERED 
	(
		[PlanJahr],
		[Monat],
		[FilNr]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tabFilInfo2SollUmsatzFilialeJahr] WITH NOCHECK ADD 
	CONSTRAINT [PK_tabSollUmsatzFilialeJahr] PRIMARY KEY  CLUSTERED 
	(
		[Jahr],
		[FilNr]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tabFilInfo3Bemerkung] WITH NOCHECK ADD 
	CONSTRAINT [PK_tabFilInfo3Bemerkung] PRIMARY KEY  CLUSTERED 
	(
		[Jahr],
		[Monat],
		[FilNr]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TABUMSATZ02] ADD 
	CONSTRAINT [PK_TABUMSATZ02_NEU] PRIMARY KEY  NONCLUSTERED 
	(
		[JAHR],
		[MONAT],
		[FNR]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabHelpVerkGr] ADD 
	CONSTRAINT [DF_TabHelpVerkGr_ErsteArtNr] DEFAULT (0) FOR [ErsteArtNr],
	CONSTRAINT [PK_TabHelpVerkGr_1] PRIMARY KEY  NONCLUSTERED 
	(
		[Nr]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TabKakomArtikelFrequenz] ADD 
	CONSTRAINT [DF_TabKakomArtikelFrequenz_VonZeit] DEFAULT ('00:00:00') FOR [VonZeit],
	CONSTRAINT [DF_TabKakomArtikelFrequenz_BisZeit] DEFAULT ('00:00:00') FOR [BisZeit],
	CONSTRAINT [DF_TabKakomArtikelFrequenz_Verkaufsmenge] DEFAULT (0) FOR [Verkaufsmenge]
GO

 CREATE  INDEX [ixTag_TabKakomArtikelFrequenz] ON [dbo].[TabKakomArtikelFrequenz]([Tag]) WITH  FILLFACTOR = 90 ON [PRIMARY]
GO

ALTER TABLE [dbo].[TabKakomArtikelumsatz] ADD 
	CONSTRAINT [DF_TabKakomArtikelumsatz_VerkMenge] DEFAULT (0) FOR [VerkMenge],
	CONSTRAINT [DF_TabKakomArtikelumsatz_Umsatz] DEFAULT (0) FOR [DM_Umsatz],
	CONSTRAINT [DF_TabKakomArtikelumsatz_E_Umsatz] DEFAULT (0) FOR [Umsatz],
	CONSTRAINT [DF_TabKakomArtikelumsatz_BestellMenge] DEFAULT (0) FOR [BestellMenge],
	CONSTRAINT [DF_TabKakomArtikelumsatz_Retour] DEFAULT (0) FOR [Retour],
	CONSTRAINT [DF_TabKakomArtikelumsatz_InventurMenge] DEFAULT (0) FOR [InventurMenge],
	CONSTRAINT [DF_TabKakomArtikelumsatz_Gutschrift] DEFAULT (0) FOR [Gutschrift]
GO

ALTER TABLE [dbo].[TabKakomFrequenz] ADD 
	CONSTRAINT [DF_TabKakomFrequenz_VonZeit] DEFAULT ('00:00:00') FOR [VonZeit],
	CONSTRAINT [DF_TabKakomFrequenz_BisZeit] DEFAULT ('00:00:00') FOR [BisZeit],
	CONSTRAINT [DF_TabKakomFrequenz_Verkaufsmenge] DEFAULT (0) FOR [Verkaufsmenge],
	CONSTRAINT [DF_TabKakomFrequenz_Umsatzbetrag] DEFAULT (0) FOR [DM_Umsatzbetrag],
	CONSTRAINT [DF_TabKakomFrequenz_E_Umsatzbetrag] DEFAULT (0) FOR [Umsatzbetrag]
GO

ALTER TABLE [dbo].[TabKakomKassierer] ADD 
	CONSTRAINT [DF_TabKakomKassierer_UmsatzBetrag] DEFAULT (0) FOR [DM_UmsatzBetrag],
	CONSTRAINT [DF_TabKakomKassierer_E_UmsatzBetrag] DEFAULT (0) FOR [UmsatzBetrag]
GO

 CREATE  INDEX [ixPernr_TabKakomKassierer] ON [dbo].[TabKakomKassierer]([PersonalNr]) WITH  FILLFACTOR = 90 ON [PRIMARY]
GO

ALTER TABLE [dbo].[TabKakomTransaktion] ADD 
	CONSTRAINT [DF_TabKakomTransaktion_VerkaufMenge] DEFAULT (0) FOR [VerkaufsMenge],
	CONSTRAINT [DF_TabKakomTransaktion_Umsatzbetrag] DEFAULT (0) FOR [DM_Umsatzbetrag],
	CONSTRAINT [DF_TabKakomTransaktion_E_Umsatzbetrag] DEFAULT (0) FOR [Umsatzbetrag]
GO

ALTER TABLE [dbo].[TabKakomWarengruppen] ADD 
	CONSTRAINT [DF_TabKakomWarengruppen_Verkaufsmenge] DEFAULT (0) FOR [Verkaufsmenge],
	CONSTRAINT [DF_TabKakomWarengruppen_Umsatz] DEFAULT (0) FOR [DM_Umsatz],
	CONSTRAINT [DF_TabKakomWarengruppen_E_Umsatz] DEFAULT (0) FOR [Umsatz]
GO

ALTER TABLE [dbo].[TabPepTagZeiten] ADD 
	CONSTRAINT [DF_TabPepTagZeiten_Arb] DEFAULT ('00:00') FOR [Arb],
	CONSTRAINT [DF_TabPepTagZeiten_ArbbF] DEFAULT ('00:00') FOR [ArbbF],
	CONSTRAINT [DF_TabPepTagZeiten_DauerMin] DEFAULT ('00:00') FOR [DauerMin]
GO

 CREATE  INDEX [ixPernr_TabPepTagZeiten] ON [dbo].[TabPepTagZeiten]([PerNr]) WITH  FILLFACTOR = 90 ON [PRIMARY]
GO

ALTER TABLE [dbo].[tabFilInfo1KalenderDaten] ADD 
	CONSTRAINT [DF_tabFilInfo1KalenderDaten_Jahr] DEFAULT (2005) FOR [Jahr],
	CONSTRAINT [DF_tabFilInfo1KalenderDaten_Feiertage] DEFAULT (0) FOR [Feiertage]
GO

ALTER TABLE [dbo].[tabFilInfo22ErfassDaten] ADD 
	CONSTRAINT [DF_tabFilInfo22ErfassDaten_StandardOeffnTage] DEFAULT (0) FOR [StandardOeffnTage]
GO

ALTER TABLE [dbo].[tabFilInfo2SollUmsatzFilialeJahr] ADD 
	CONSTRAINT [DF_tabFilInfo2SollUmsatzFilialeJahr_Jahr] DEFAULT (2005) FOR [Jahr]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwParadoxArtikelbezeichnung1    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE VIEW dbo.vwParadoxArtikelbezeichnung1
AS
SELECT     [STPL-PLNR], [Arti-Beze#], [Arti-Nr#], '0' + CAST([Arti-Nr#] AS char(5)) AS DBArtikelNr
FROM         dbo.TabParadoxArtikelBezeichnung

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.VwLL-FilInfo1-1    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE VIEW dbo.[VwLL-FilInfo1-1]
AS
SELECT     TOP 100 PERCENT JAHR, MONAT, FNR, BRUTTO AS MonatsUmsatz
FROM         dbo.TABUMSATZ01
WHERE     (KSP = 0) AND (FNR <> 9080)
ORDER BY JAHR DESC, MONAT DESC, FNR

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.VwTabAz01_Leistung    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE VIEW dbo.VwTabAz01_Leistung
AS
SELECT JAHR, MONAT, KST, HLOHN, TYP
FROM dbo.TABAZ01
WHERE (TYP = 21) AND (JAHR > 2001)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.VwTabKakomTransaktion_FilEntw1    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE VIEW dbo.VwTabKakomTransaktion_FilEntw1
AS
SELECT     DATEPART(yy, Tag) AS Jahr, DATEPART(mm, Tag) AS Monat, CONVERT(Int, Filiale) AS FilNr, SUM(VerkaufsMenge) AS Kunden, SUM(Umsatzbetrag) 
                      AS Umsatz
FROM         dbo.TabKakomTransaktion
WHERE     (TransaktCode = N'0181') AND (Tag > CONVERT(DATETIME, '2002-12-31 00:00:00', 102)) OR
                      (TransaktCode = N'0184') AND (Tag > CONVERT(DATETIME, '2002-12-31 00:00:00', 102))
GROUP BY DATEPART(yy, Tag), DATEPART(mm, Tag), CONVERT(Int, Filiale)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.VwTabKakomWGSnack1-1BW    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE VIEW dbo.[VwTabKakomWGSnack1-1BW]
AS
SELECT DATEPART(yy, Tag) AS Jahr, DATEPART(mm, Tag) 
    AS Monat, Filiale, SUM(Umsatz) AS [M-Umsatz]
FROM dbo.TabKakomWarengruppen
WHERE (Warengruppe = N'01')
GROUP BY Filiale, DATEPART(yy, Tag), DATEPART(mm, Tag)
HAVING (MIN(Tag) > CONVERT(DATETIME, '2000-12-31 00:00:00', 
    102)) AND (Filiale <> N'9030')

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.VwTabKakomWGSnack1-2SN    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE VIEW dbo.[VwTabKakomWGSnack1-2SN]
AS
SELECT DATEPART(yy, Tag) AS Jahr, DATEPART(mm, Tag) 
    AS Monat, Filiale, SUM(Umsatz) AS [M-Umsatz]
FROM dbo.TabKakomWarengruppen
WHERE (Warengruppe = N'04')
GROUP BY Filiale, DATEPART(yy, Tag), DATEPART(mm, Tag)
HAVING (MIN(Tag) > CONVERT(DATETIME, '2000-12-31 00:00:00', 
    102)) AND (Filiale <> N'9030')

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.VwTabKakomWGSnack1-3Sonst    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE VIEW dbo.[VwTabKakomWGSnack1-3Sonst]
AS
SELECT DATEPART(yy, Tag) AS Jahr, DATEPART(mm, Tag) 
    AS Monat, Filiale, SUM(Umsatz) AS [M-Umsatz]
FROM dbo.TabKakomWarengruppen
WHERE (Warengruppe <> N'01') AND (Warengruppe <> N'04')
GROUP BY Filiale, DATEPART(yy, Tag), DATEPART(mm, Tag)
HAVING (MIN(Tag) > CONVERT(DATETIME, '2000-12-31 00:00:00', 
    102)) AND (Filiale <> N'9030')

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.VwTabUmsatz02_FilEntw    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE VIEW dbo.VwTabUmsatz02_FilEntw
AS
SELECT     TOP 100 PERCENT JAHR, MONAT, FNR AS FilNr, LUMSATZ AS LeistUmsatz, LUMSATZH AS StdUmsatz, HSATZ AS StdSatz, PSATZ AS PrämSatz, 
                      PH AS StdPrämie, PG AS Prämie, PF AS FilPrämie, PGA AS Retoure, PS AS AntPräm, GETDATE() AS ErstDatum
FROM         dbo.TABUMSATZ02
WHERE     (JAHR > DATEPART(yy, GETDATE()) - 40) AND (LUMSATZ > 0)
ORDER BY JAHR DESC, MONAT DESC, FNR

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwParadoxBo74Prod    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE VIEW dbo.vwParadoxBo74Prod
AS
SELECT     TOP 100 PERCENT dbo.BO74PROD.[Bo74-Datum], dbo.BO74PROD.[Bo74-Atnr], dbo.TabParadoxArtikelBezeichnung.[Arti-Beze#], 
                      dbo.BO74PROD.[Bo74-Best-Meng], dbo.BO74PROD.[Bo74-Diff-Meng], dbo.BO74PROD.[Bo74-Lage-Meng], dbo.BO74PROD.[Bo74-Prod-Meng], 
                      dbo.BO74PROD.[Bo74-Prod-Meng-V], dbo.BO74PROD.[Bo74-Verk-Wert], dbo.BO74PROD.[Bo74-Verk-Wert-V], CONVERT(Datetime, 
                      RIGHT(STR(dbo.BO74PROD.[Bo74-Datum], 8), 2) + '.' + SUBSTRING(STR(dbo.BO74PROD.[Bo74-Datum], 8), 5, 2) 
                      + '.' + LEFT(STR(dbo.BO74PROD.[Bo74-Datum], 8), 4), 104) AS Datum
FROM         dbo.BO74PROD LEFT OUTER JOIN
                      dbo.TabParadoxArtikelBezeichnung ON dbo.BO74PROD.[Bo74-Atnr] = dbo.TabParadoxArtikelBezeichnung.[Arti-Nr#]
WHERE     (dbo.BO74PROD.[Bo74-Datum] > 20060101)
ORDER BY dbo.BO74PROD.[Bo74-Datum], dbo.BO74PROD.[Bo74-Atnr]

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwRetouren%    Skriptdatum: 27.08.2007 15:35:30 ******/
CREATE VIEW dbo.[vwRetouren%]
AS
SELECT     dbo.TabKakomArtikelumsatz.Tag, dbo.TabKakomArtikelumsatz.Filiale, dbo.TabKakomArtikelumsatz.Artikelnummer, 
                      dbo.TabKakomArtikelumsatz.Artikelbezeichnung, dbo.TabKakomArtikelumsatz.VerkMenge, dbo.TabKakomArtikelumsatz.Umsatz, 
                      dbo.TabKakomArtikelumsatz.Retour, dbo.TabHelpPLUPREIS.Preis_money, dbo.TabKakomArtikelumsatz.Umsatz AS PreisGerechn, 
                      dbo.TabKakomTransaktion.Umsatzbetrag AS TagUmsatz
FROM         dbo.TabKakomArtikelumsatz LEFT OUTER JOIN
                      dbo.TabHelpPLUPREIS ON dbo.TabKakomArtikelumsatz.Artikelnummer = dbo.TabHelpPLUPREIS.PluNr LEFT OUTER JOIN
                      dbo.TabKakomTransaktion ON dbo.TabKakomArtikelumsatz.Tag = dbo.TabKakomTransaktion.Tag AND 
                      dbo.TabKakomArtikelumsatz.Filiale = dbo.TabKakomTransaktion.Filiale
WHERE     (dbo.TabKakomArtikelumsatz.Tag > CONVERT(DATETIME, '2006-01-01 00:00:00', 102)) AND (dbo.TabKakomTransaktion.TransaktCode = N'0111') AND 
                      (dbo.TabKakomArtikelumsatz.Artikelnummer > N'00299')

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwTabKakomArtikelUmsatzZusammenfBezeichn1    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwTabKakomArtikelUmsatzZusammenfBezeichn1
AS
SELECT DISTINCT TOP 100 PERCENT Artikelnummer, Artikelbezeichnung, Tag
FROM         dbo.TabKakomArtikelumsatz t2
WHERE     (Tag =
                          (SELECT     MAX(t1.Tag)
                            FROM          dbo.TabKakomArtikelumsatz t1
                            WHERE      t1.Artikelnummer = t2.Artikelnummer AND Artikelbezeichnung <> 'keine Bezeichng.'))
ORDER BY Artikelnummer

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwTabKakomArtikelumsatzZusammenfassung2    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwTabKakomArtikelumsatzZusammenfassung2
AS
SELECT     TOP 100 PERCENT dbo.TabKakomArtikelumsatz.Tag, dbo.TabKakomArtikelumsatz.Filiale, dbo.TabKakomArtikelumsatz.Artikelnummer, 
                      dbo.vwTabKakomArtikelUmsatzZusammenfBezeichn1.Artikelbezeichnung, SUM(dbo.TabKakomArtikelumsatz.VerkMenge) AS VerkMenge, 
                      SUM(dbo.TabKakomArtikelumsatz.Umsatz) AS Umsatz, SUM(dbo.TabKakomArtikelumsatz.BestellMenge) AS BestellMenge, 
                      SUM(dbo.TabKakomArtikelumsatz.Retour) AS Retour, SUM(dbo.TabKakomArtikelumsatz.InventurMenge) AS InventurMenge, 
                      SUM(dbo.TabKakomArtikelumsatz.Gutschrift) AS Gutschrift, 
                      dbo.TabKakomArtikelumsatz.Artikelnummer + N'[ ]' + dbo.vwTabKakomArtikelUmsatzZusammenfBezeichn1.Artikelbezeichnung AS Artikel
FROM         dbo.TabKakomArtikelumsatz LEFT OUTER JOIN
                      dbo.vwTabKakomArtikelUmsatzZusammenfBezeichn1 ON 
                      dbo.TabKakomArtikelumsatz.Artikelnummer = dbo.vwTabKakomArtikelUmsatzZusammenfBezeichn1.Artikelnummer
GROUP BY dbo.TabKakomArtikelumsatz.Tag, dbo.TabKakomArtikelumsatz.Filiale, dbo.TabKakomArtikelumsatz.Artikelnummer, 
                      dbo.vwTabKakomArtikelUmsatzZusammenfBezeichn1.Artikelbezeichnung
HAVING      (dbo.TabKakomArtikelumsatz.Tag > CONVERT(DATETIME, '2000-01-01 00:00:00', 102))

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwTabKakomKassierer_Kaufbetrag11    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwTabKakomKassierer_Kaufbetrag11
AS
SELECT     TOP 100 PERCENT Tag, Filiale, SUM(VerkaufsMenge) AS Kunden, SUM(UmsatzBetrag) AS Umsatz, PersonalNr
FROM         dbo.TabKakomKassierer
GROUP BY Tag, Filiale, TransaktionCode, PersonalNr
HAVING      (TransaktionCode = N'0111') AND (SUM(UmsatzBetrag) > 0) AND (SUM(VerkaufsMenge) > 0)
ORDER BY Tag DESC, Filiale

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwTabKakomTransZielvereinbarKontrolle11    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwZiel1
AS
SELECT     CONVERT(char, DATEPART(yyyy, Tag)) AS Jahr, RIGHT('0' + CONVERT(varchar, DATEPART(mm, Tag)), 2) AS Monat, RIGHT('0' + CONVERT(varchar, 
                      DATEPART(dd, Tag)), 2) AS WTag, Filiale, VerkaufsMenge AS Kunden, Umsatzbetrag AS Kaufbetrag, Tag
FROM         dbo.TabKakomTransaktion
WHERE     (TransaktCode = N'0111')

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwTabKakomTransZielvereinbarung3    Skriptdatum: 27.08.2007 15:35:31 ******/

CREATE VIEW dbo.vwTabKakomTransZielvereinbarung3
AS
SELECT     TOP 100 PERCENT dbo.tabFilInfo23FilDaten.PlanJahr, dbo.tabFilInfo23FilDaten.FilNr, dbo.tabFilInfo23FilDaten.Monat, 
                      VwTabKakomTransaktion_FilEntw2_1.Umsatz AS VorjUmsatz, VwTabKakomTransaktion_FilEntw2_1.Oeffnungstage AS VorjOffnungstage, 
                      VwTabKakomTransaktion_FilEntw2_1.Kunden * 100 / VwTabKakomTransaktion_FilEntw2_1.MonatPassanten AS VorjKundenanteil, 
                      VwTabKakomTransaktion_FilEntw2_1.Kunden / VwTabKakomTransaktion_FilEntw2_1.Oeffnungstage AS VorjKundenTag, 
                      VwTabKakomTransaktion_FilEntw2_1.Kaufbetr AS VorjKaufbetr, VwTabKakomTransaktion_FilEntw2_2.Umsatz AS LfdJUmsatz, 
                      VwTabKakomTransaktion_FilEntw2_2.Oeffnungstage AS LfdJOffnungstage, 
                      VwTabKakomTransaktion_FilEntw2_2.Kunden * 100 / VwTabKakomTransaktion_FilEntw2_2.MonatPassanten AS LfdJKundenanteil, 
                      VwTabKakomTransaktion_FilEntw2_2.Kunden / VwTabKakomTransaktion_FilEntw2_2.Oeffnungstage AS LfdJKundenTag, 
                      VwTabKakomTransaktion_FilEntw2_2.Kaufbetr AS LfdJKaufbetr, dbo.tabFilInfo23FilDaten.Oeffnungstage AS OeffnugstagePlan, 
                      dbo.tabFilInfo23FilDaten.VkPlanKundenTag, dbo.tabFilInfo23FilDaten.VkPlanKaufbetrag, dbo.tabFilInfo23FilDaten.GlPlanKundenTag, 
                      dbo.tabFilInfo23FilDaten.GlPlanKaufbetrag, dbo.tabFilInfo22ErfassDaten.ZentraleAktionen, dbo.tabFilInfo22ErfassDaten.Werbemittel, 
                      dbo.tabFilInfo23FilDaten.FilialAktivitaeten, dbo.tabFilInfo23FilDaten.MinMaxGruende, 
                      dbo.tabFilInfo23FilDaten.Oeffnungstage * dbo.tabFilInfo23FilDaten.VkPlanKundenTag * dbo.tabFilInfo23FilDaten.VkPlanKaufbetrag AS VkPlanumsatz, 
                      dbo.tabFilInfo23FilDaten.Oeffnungstage * dbo.tabFilInfo23FilDaten.GlPlanKundenTag * dbo.tabFilInfo23FilDaten.GlPlanKaufbetrag AS GlPlanumsatz, 
                      dbo.tabFilInfo22ErfassDaten.Feiertage
FROM         dbo.tabFilInfo23FilDaten LEFT OUTER JOIN
                      dbo.VwTabKakomTransaktion_FilEntw2 VwTabKakomTransaktion_FilEntw2_2 ON 
                      dbo.tabFilInfo23FilDaten.PlanJahr = VwTabKakomTransaktion_FilEntw2_2.PlanVorVorJahr AND 
                      dbo.tabFilInfo23FilDaten.Monat = VwTabKakomTransaktion_FilEntw2_2.Monat AND 
                      dbo.tabFilInfo23FilDaten.FilNr = VwTabKakomTransaktion_FilEntw2_2.FilNr LEFT OUTER JOIN
                      dbo.VwTabKakomTransaktion_FilEntw2 VwTabKakomTransaktion_FilEntw2_1 ON 
                      dbo.tabFilInfo23FilDaten.PlanJahr = VwTabKakomTransaktion_FilEntw2_1.PlanVorjahr AND 
                      dbo.tabFilInfo23FilDaten.FilNr = VwTabKakomTransaktion_FilEntw2_1.FilNr AND 
                      dbo.tabFilInfo23FilDaten.Monat = VwTabKakomTransaktion_FilEntw2_1.Monat LEFT OUTER JOIN
                      dbo.tabFilInfo22ErfassDaten ON dbo.tabFilInfo23FilDaten.PlanJahr = dbo.tabFilInfo22ErfassDaten.PlanJahr AND 
                      dbo.tabFilInfo23FilDaten.Monat = dbo.tabFilInfo22ErfassDaten.Monat
ORDER BY dbo.tabFilInfo23FilDaten.PlanJahr DESC, dbo.tabFilInfo23FilDaten.FilNr, dbo.tabFilInfo23FilDaten.Monat DESC


GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwTabPepPersonalstamm1Name    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwTab
AS
SELECT     TOP 100 PERCENT Mitarbeiternummer, Nachname, Vorname, Mitarbeiternummer + N' ' + Vorname + N' ' + Nachname AS Mitarbeiter
FROM         dbo.TabPepPersonalstamm

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwUmsatzGesternArtikel    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwUmsatzGesternArtikel
AS
SELECT Tag, Filiale, Kasse, SUM(Umsatz) AS ArtiUmsatz
FROM dbo.TabKakomArtikelumsatz
GROUP BY Tag, Filiale, Kasse
HAVING (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
    GETDATE() - 1, 104)))

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwUmsatzGesternKasse    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwUmsatzGesternKasse
AS
SELECT Tag, Filiale, Kasse, SUM(UmsatzBetrag) AS KasseUmsatz, 
    TransaktionCode
FROM dbo.TabKakomKassierer
GROUP BY Tag, Filiale, Kasse, TransaktionCode
HAVING (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
    GETDATE() - 1, 104))) AND (TransaktionCode = N'0184')

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwUmsatzGesternTransaktion    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwUmsatzGesternTransaktion
AS
SELECT Tag, Filiale, Kasse, SUM(Umsatzbetrag) 
    AS TransakUmsatz
FROM dbo.TabKakomTransaktion
GROUP BY Tag, Filiale, Kasse, TransaktCode
HAVING (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
    GETDATE() - 1, 104))) AND (TransaktCode = N'0184')

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwUmsatzGesternWG    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwUmsatzGesternArtikel
AS
SELECT Tag, Filiale, Kasse, SUM(Umsatz) AS WgUmsatz
FROM dbo.TabKakomWarengruppen
GROUP BY Tag, Filiale, Kasse
HAVING (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
    GETDATE() - 1, 104)))

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwUmsatzGesternWG2    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwUmsatzGesternWG2
AS
SELECT Tag, Filiale, Kasse, SUM(Umsatz) AS WgUmsatz
FROM dbo.TabKakomWarengruppen
GROUP BY Tag, Filiale, Kasse
HAVING (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
    GETDATE() - 1, 104)))

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.VwLL-FilInfo3-4    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.[VwLL-FilInfo3-4]
AS
SELECT     TOP 100 PERCENT dbo.TABUMSATZ02.JAHR, dbo.TABUMSATZ02.JAHR - 1 AS VorJahr, dbo.TABUMSATZ02.MONAT, dbo.TABUMSATZ02.FNR, 
                      dbo.TABUMSATZ02.LUMSATZH, dbo.TABUMSATZ02.PF, dbo.TABUMSATZ02.PGA, dbo.TABUMSATZ02.PS, dbo.tabFilInfo3Bemerkung.Bemerkung, 
                      dbo.[VwLL-FilInfo1-1].MonatsUmsatz AS IstUmsatz
FROM         dbo.TABUMSATZ02 LEFT OUTER JOIN
                      dbo.[VwLL-FilInfo1-1] ON dbo.TABUMSATZ02.JAHR = dbo.[VwLL-FilInfo1-1].JAHR AND dbo.TABUMSATZ02.MONAT = dbo.[VwLL-FilInfo1-1].MONAT AND 
                      dbo.TABUMSATZ02.FNR = dbo.[VwLL-FilInfo1-1].FNR LEFT OUTER JOIN
                      dbo.tabFilInfo3Bemerkung ON dbo.TABUMSATZ02.JAHR = dbo.tabFilInfo3Bemerkung.Jahr AND 
                      dbo.TABUMSATZ02.MONAT = dbo.tabFilInfo3Bemerkung.Monat AND dbo.TABUMSATZ02.FNR = dbo.tabFilInfo3Bemerkung.FilNr
WHERE     (dbo.TABUMSATZ02.FNR <> 9080)
ORDER BY dbo.TABUMSATZ02.JAHR DESC, dbo.TABUMSATZ02.MONAT DESC, dbo.TABUMSATZ02.FNR

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.VwLL-FilInfo4-4    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.[VwLL-FilInfo4-4]
AS
SELECT     TOP 100 PERCENT dbo.[VwLL-FilInfo3-4].JAHR, dbo.[VwLL-FilInfo3-4].MONAT, dbo.[VwLL-FilInfo3-4].FNR, dbo.[VwLL-FilInfo3-4].LUMSATZH, 
                      dbo.[VwLL-FilInfo3-4].PF, dbo.[VwLL-FilInfo3-4].PGA, dbo.[VwLL-FilInfo3-4].PS, dbo.[VwLL-FilInfo3-4].IstUmsatz, 
                      dbo.[VwLL-FilInfo1-1].MonatsUmsatz AS VorJahresUmsatz, dbo.[VwLL-FilInfo3-4].IstUmsatz - dbo.[VwLL-FilInfo1-1].MonatsUmsatz AS UmsDiffVorjahr, 
                      (dbo.[VwLL-FilInfo3-4].IstUmsatz - dbo.[VwLL-FilInfo1-1].MonatsUmsatz) * 100 / dbo.[VwLL-FilInfo1-1].MonatsUmsatz AS [AbwVorjahr%], 
                      dbo.tabFilInfo23FilDaten.Oeffnungstage, dbo.tabFilInfo23FilDaten.GlPlanKundenTag, dbo.tabFilInfo23FilDaten.GlPlanKaufbetrag, 
                      dbo.tabFilInfo23FilDaten.Oeffnungstage * dbo.tabFilInfo23FilDaten.GlPlanKundenTag * dbo.tabFilInfo23FilDaten.GlPlanKaufbetrag AS MonSollUmsatz, 
                      dbo.[VwLL-FilInfo3-4].IstUmsatz - dbo.tabFilInfo23FilDaten.Oeffnungstage * dbo.tabFilInfo23FilDaten.GlPlanKundenTag * dbo.tabFilInfo23FilDaten.GlPlanKaufbetrag
                       AS UmsatzDiffPlan, 
                      ((dbo.[VwLL-FilInfo3-4].IstUmsatz - dbo.tabFilInfo23FilDaten.Oeffnungstage * dbo.tabFilInfo23FilDaten.GlPlanKundenTag * dbo.tabFilInfo23FilDaten.GlPlanKaufbetrag)
                       * 100) / (dbo.tabFilInfo23FilDaten.Oeffnungstage * dbo.tabFilInfo23FilDaten.GlPlanKundenTag * dbo.tabFilInfo23FilDaten.GlPlanKaufbetrag) 
                      AS [AbwPlan%], dbo.[VwLL-FilInfo3-4].Bemerkung
FROM         dbo.[VwLL-FilInfo3-4] LEFT OUTER JOIN
                      dbo.tabFilInfo23FilDaten ON dbo.[VwLL-FilInfo3-4].JAHR = dbo.tabFilInfo23FilDaten.PlanJahr AND 
                      dbo.[VwLL-FilInfo3-4].MONAT = dbo.tabFilInfo23FilDaten.Monat AND dbo.[VwLL-FilInfo3-4].FNR = dbo.tabFilInfo23FilDaten.FilNr LEFT OUTER JOIN
                      dbo.[VwLL-FilInfo1-1] ON dbo.[VwLL-FilInfo3-4].VorJahr = dbo.[VwLL-FilInfo1-1].JAHR AND 
                      dbo.[VwLL-FilInfo3-4].MONAT = dbo.[VwLL-FilInfo1-1].MONAT AND dbo.[VwLL-FilInfo3-4].FNR = dbo.[VwLL-FilInfo1-1].FNR
WHERE     (dbo.[VwLL-FilInfo3-4].FNR <> 9080)
ORDER BY dbo.[VwLL-FilInfo3-4].JAHR DESC, dbo.[VwLL-FilInfo3-4].MONAT DESC, dbo.[VwLL-FilInfo3-4].FNR

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.VwTabKakomTransaktion_FilEntw2    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.VwTabKakomTransaktion_FilEntw2
AS
SELECT     TOP 100 PERCENT dbo.VwTabKakomTransaktion_FilEntw1.Jahr, dbo.VwTabKakomTransaktion_FilEntw1.Jahr + 1 AS PlanVorVorJahr, 
                      dbo.VwTabKakomTransaktion_FilEntw1.Jahr + 2 AS PlanVorJahr, dbo.VwTabKakomTransaktion_FilEntw1.Monat, 
                      dbo.VwTabKakomTransaktion_FilEntw1.FilNr, dbo.VwTabKakomTransaktion_FilEntw1.Kunden, dbo.VwTabKakomTransaktion_FilEntw1.Umsatz, 
                      dbo.VwTabKakomTransaktion_FilEntw1.Umsatz / dbo.VwTabKakomTransaktion_FilEntw1.Kunden AS Kaufbetr, dbo.tabFilInfo23FilDaten.Oeffnungstage, 
                      dbo.tabFilInfo23FilDaten.MonatPassanten
FROM         dbo.VwTabKakomTransaktion_FilEntw1 LEFT OUTER JOIN
                      dbo.tabFilInfo23FilDaten ON dbo.VwTabKakomTransaktion_FilEntw1.Jahr = dbo.tabFilInfo23FilDaten.PlanJahr AND 
                      dbo.VwTabKakomTransaktion_FilEntw1.Monat = dbo.tabFilInfo23FilDaten.Monat AND 
                      dbo.VwTabKakomTransaktion_FilEntw1.FilNr = dbo.tabFilInfo23FilDaten.FilNr
ORDER BY dbo.VwTabKakomTransaktion_FilEntw1.Jahr DESC, dbo.VwTabKakomTransaktion_FilEntw1.FilNr

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.VwTabKakomWGSnack2-1Ges    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.[VwTabKakomWGSnack2-1Ges]
AS
SELECT dbo.[VwTabKakomWGSnack1-1BW].Jahr, 
    dbo.[VwTabKakomWGSnack1-1BW].Monat, 
    dbo.[VwTabKakomWGSnack1-1BW].Filiale, 
    dbo.[VwTabKakomWGSnack1-1BW].[M-Umsatz] AS BWUmsatz, 
    dbo.[VwTabKakomWGSnack1-2SN].[M-Umsatz] AS SnackUms, 
    dbo.[VwTabKakomWGSnack1-3Sonst].[M-Umsatz] AS SonstUms
FROM dbo.[VwTabKakomWGSnack1-1BW] INNER JOIN
    dbo.[VwTabKakomWGSnack1-2SN] ON 
    dbo.[VwTabKakomWGSnack1-1BW].Jahr = dbo.[VwTabKakomWGSnack1-2SN].Jahr
     AND 
    dbo.[VwTabKakomWGSnack1-1BW].Monat = dbo.[VwTabKakomWGSnack1-2SN].Monat
     AND 
    dbo.[VwTabKakomWGSnack1-1BW].Filiale = dbo.[VwTabKakomWGSnack1-2SN].Filiale
     INNER JOIN
    dbo.[VwTabKakomWGSnack1-3Sonst] ON 
    dbo.[VwTabKakomWGSnack1-2SN].Filiale = dbo.[VwTabKakomWGSnack1-3Sonst].Filiale
     AND 
    dbo.[VwTabKakomWGSnack1-2SN].Monat = dbo.[VwTabKakomWGSnack1-3Sonst].Monat
     AND 
    dbo.[VwTabKakomWGSnack1-2SN].Jahr = dbo.[VwTabKakomWGSnack1-3Sonst].Jahr

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwTabKakomKassierer_Kaufbetrag21    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwTabKakomKassierer_Kaufbetrag21
AS
SELECT     TOP 100 PERCENT dbo.vwTabKakomKassierer_Kaufbetrag11.Tag, dbo.vwTabKakomKassierer_Kaufbetrag11.Filiale, 
                      dbo.vwTabKakomKassierer_Kaufbetrag11.Kunden, dbo.vwTabKakomKassierer_Kaufbetrag11.Umsatz, 
                      dbo.vwTabKakomKassierer_Kaufbetrag11.PersonalNr, 
                      dbo.vwTabKakomKassierer_Kaufbetrag11.Umsatz / dbo.vwTabKakomKassierer_Kaufbetrag11.Kunden AS Kaufbetrag, 
                      dbo.TabPepPersonalstamm.Nachname + N' ' + dbo.TabPepPersonalstamm.Vorname AS Name, dbo.vwTabPepPersonalstamm1Name.Mitarbeiter
FROM         dbo.vwTabPepPersonalstamm1Name INNER JOIN
                      dbo.TabPepPersonalstamm ON 
                      dbo.vwTabPepPersonalstamm1Name.Mitarbeiternummer = dbo.TabPepPersonalstamm.Mitarbeiternummer RIGHT OUTER JOIN
                      dbo.vwTabKakomKassierer_Kaufbetrag11 ON 
                      dbo.TabPepPersonalstamm.Mitarbeiternummer = dbo.vwTabKakomKassierer_Kaufbetrag11.PersonalNr
WHERE     (dbo.vwTabKakomKassierer_Kaufbetrag11.Umsatz > 0) AND (dbo.vwTabKakomKassierer_Kaufbetrag11.Kunden > 0)
ORDER BY dbo.vwTabKakomKassierer_Kaufbetrag11.Tag DESC, dbo.vwTabKakomKassierer_Kaufbetrag11.Filiale

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwTabKakomTransZielvereinbarKontrolle12    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwTabKakomTransZielvereinbarKontrolle12
AS
SELECT     TOP 100 PERCENT Jahr, Monat, Filiale, SUM(Kunden) AS SumKunden, SUM(Kaufbetrag) AS SumKaufbetrag
FROM         dbo.vwTabKakomTransZielvereinbarKontrolle11
GROUP BY Jahr, Monat, Filiale
ORDER BY Jahr DESC, Monat DESC, Filiale

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Sicht dbo.vwTabKakomTransZielvereinbarKontrolle13    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE VIEW dbo.vwTabKakomTransZielvereinbarKontrolle13
AS
SELECT     TOP 100 PERCENT dbo.vwTabKakomTransZielvereinbarKontrolle12.Jahr, dbo.vwTabKakomTransZielvereinbarKontrolle12.Monat, 
                      dbo.vwTabKakomTransZielvereinbarKontrolle12.Filiale, dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKunden AS MonKunden, 
                      dbo.vwTabKakomTransZielvereinbarung3.LfdJKundenTag AS VorJKunden, dbo.vwTabKakomTransZielvereinbarung3.GlPlanKundenTag AS SollKunden, 
                      dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKunden / dbo.vwTabKakomTransZielvereinbarung3.OeffnugstagePlan AS IstKundenTag, 
                      dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKunden / dbo.vwTabKakomTransZielvereinbarung3.OeffnugstagePlan * 100 / dbo.vwTabKakomTransZielvereinbarung3.LfdJKundenTag
                       - 100 AS KundVJahrVergl, 
                      dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKunden / dbo.vwTabKakomTransZielvereinbarung3.OeffnugstagePlan * 100 / dbo.vwTabKakomTransZielvereinbarung3.GlPlanKundenTag
                       - 100 AS KundSollVergl, dbo.vwTabKakomTransZielvereinbarung3.LfdJKaufbetr AS VorJKaufbetrag, 
                      dbo.vwTabKakomTransZielvereinbarung3.GlPlanKaufbetrag AS SollKaufbetrag, 
                      dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKaufbetrag / dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKunden AS IstKaufbetrag, 
                      dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKaufbetrag / dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKunden * 100 / dbo.vwTabKakomTransZielvereinbarung3.LfdJKaufbetr
                       - 100 AS KaufbetVJahrVergl, 
                      dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKaufbetrag / dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKunden * 100 / dbo.vwTabKakomTransZielvereinbarung3.GlPlanKaufbetrag
                       - 100 AS KaufbetSollVergl, dbo.vwTabKakomTransZielvereinbarung3.LfdJOffnungstage AS VorJOeffnungstag, 
                      dbo.vwTabKakomTransZielvereinbarung3.LfdJKundenTag * dbo.vwTabKakomTransZielvereinbarung3.LfdJKaufbetr * dbo.vwTabKakomTransZielvereinbarung3.LfdJOffnungstage
                       AS VorJahrUmsatz, dbo.vwTabKakomTransZielvereinbarung3.OeffnugstagePlan AS LfdJOeffnungstag, 
                      dbo.vwTabKakomTransZielvereinbarung3.GlPlanumsatz AS SollUmsatz, dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKaufbetrag AS IstUmsatz,
                       (dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKaufbetrag * 100) 
                      / (dbo.vwTabKakomTransZielvereinbarung3.LfdJKundenTag * dbo.vwTabKakomTransZielvereinbarung3.LfdJKaufbetr * dbo.vwTabKakomTransZielvereinbarung3.LfdJOffnungstage)
                       - 100 AS UmsatzVJahrVergl, 
                      dbo.vwTabKakomTransZielvereinbarKontrolle12.SumKaufbetrag * 100 / dbo.vwTabKakomTransZielvereinbarung3.GlPlanumsatz - 100 AS UmsatzSollVergl
FROM         dbo.vwTabKakomTransZielvereinbarKontrolle12 LEFT OUTER JOIN
                      dbo.vwTabKakomTransZielvereinbarung3 ON 
                      dbo.vwTabKakomTransZielvereinbarKontrolle12.Jahr = dbo.vwTabKakomTransZielvereinbarung3.PlanJahr AND 
                      dbo.vwTabKakomTransZielvereinbarKontrolle12.Filiale = dbo.vwTabKakomTransZielvereinbarung3.FilNr AND 
                      dbo.vwTabKakomTransZielvereinbarKontrolle12.Monat = dbo.vwTabKakomTransZielvereinbarung3.Monat
WHERE     (dbo.vwTabKakomTransZielvereinbarKontrolle12.Jahr > '2005')
ORDER BY dbo.vwTabKakomTransZielvereinbarKontrolle12.Jahr DESC, dbo.vwTabKakomTransZielvereinbarKontrolle12.Monat DESC, 
                      dbo.vwTabKakomTransZielvereinbarKontrolle12.Filiale

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakNrepParamPepKassier    Skriptdatum: 27.08.2007 15:35:31 ******/

/****** Objekt:  Gespeicherte Prozedur CpKakNrepParamPepKassier    Skriptdatum: 11.11.2001 14:42:30 ******/

CREATE PROCEDURE CpKakNrepParamPepKassier  @Tag smalldatetime  AS

   /** Declare @STag datetime  **/
   /** set @STag='09/10/2005 00:00:00'      **/                         /** Syntax Ok, */
   /** set @Tag=CONVERT(DATETIME, CONVERT(NCHAR(10), getdate()-2, 104))   **/
   /* set @Tag=CONVERT(DATETIME, CONVERT(NCHAR(10), ?, 104))      Syntax Fehler!!!, */
   /* set @Tag= ?  						  Syntax Fehler!!!, */

/**
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[yTempTabKakomKassierer]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[yTempTabKakomKassierer]  **/


if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTempTabKakomKassierer'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTempTabKakomKassierer]


SELECT dbo.TabKakomKassierer.Tag, 
    dbo.TabKakomKassierer.Filiale, 
    dbo.TabKakomKassierer.Kasse, 
    dbo.TabKakomKassierer.Kassierer, 
    dbo.TabKakomKassierer.TransaktionCode, 
    dbo.TabKakomKassierer.TransaktBez, 
    dbo.TabKakomKassierer.VerkaufsMenge, 
    dbo.TabKakomKassierer.UmsatzBetrag, 
    dbo.TabKakomKassierer.PersonalNr, 
    dbo.TabPepPersonalstamm.Nachname, 
    dbo.TabPepPersonalstamm.Vorname

INTO Temp_Hat.dbo.yTempTabKakomKassierer

FROM dbo.TabKakomKassierer INNER JOIN
    dbo.TabPepPersonalstamm ON 
    dbo.TabKakomKassierer.PersonalNr = dbo.TabPepPersonalstamm.Mitarbeiternummer

WHERE   ((dbo.TabKakomKassierer.Tag = CONVERT(smalldatetime, 
    CONVERT(NCHAR(10),@Tag, 104))) and
        (dbo.TabKakomKassierer.TransaktionCode = N'0181') or
      (dbo.TabKakomKassierer.Tag = CONVERT(smalldatetime, 
    CONVERT(NCHAR(10),@Tag, 104))) and
        (dbo.TabKakomKassierer.TransaktionCode = N'0184')) 


SELECT Temp_Hat.dbo.yTempTabKakomKassierer.Tag, Temp_Hat.dbo.yTempTabKakomKassierer.Filiale, 
    Temp_Hat.dbo.yTempTabKakomKassierer.Kassierer, 
    Temp_Hat.dbo.yTempTabKakomKassierer.NachName, 
    Temp_Hat.dbo.yTempTabKakomKassierer.VorName,
    ISNULL(Temp_Hat.dbo.yTempTabKakomKassierer.PersonalNr,0) AS PersNr, 
    SUM(ISNULL(Temp_Hat.dbo.yTempTabKakomKassierer.VerkaufsMenge,0)) AS Kunde, 
    SUM(ISNULL(Temp_Hat.dbo.yTempTabKakomKassierer.UmsatzBetrag,0)) AS Umsatz, 
    Max(ISNULL(TabPepTagZeiten.Arb,0)) AS AZeit,
 
  ISNULL((
    Convert (numeric(9,3),
    (((Convert(numeric(9,3),(Left (Max(TabPepTagZeiten.Arb),2))) * 60)+ 
     ((Convert(numeric(9,3),(Right(Max(TabPepTagZeiten.Arb),2))))))/60))),0) AS AStd,

  ISNULL ((
   Case When  (((Convert(numeric(9,3),(Left (Max(TabPepTagZeiten.Arb),2))) * 60)+ 
     ((Convert(numeric(9,3),(Right(Max(TabPepTagZeiten.Arb),2))))))/60) >0        THEN
    Convert(numeric(9,2), SUM(Temp_Hat.dbo.yTempTabKakomKassierer.UmsatzBetrag) 
    / (Convert (numeric(9,3),
    (((Convert(numeric(9,3),(Left (Max(TabPepTagZeiten.Arb),2))) * 60)+ 
     ((Convert(numeric(9,3),(Right(Max(TabPepTagZeiten.Arb),2))))))/60))))  
      ELSE 0  END),1) AS   StdUmsatz
FROM Temp_Hat.dbo.yTempTabKakomKassierer Left Outer Join 
    TabPepTagZeiten ON 
    Temp_Hat.dbo.yTempTabKakomKassierer.Tag = TabPepTagZeiten.Tag AND 
    Temp_Hat.dbo.yTempTabKakomKassierer.Filiale = TabPepTagZeiten.Filiale AND 
    Temp_Hat.dbo.yTempTabKakomKassierer.PersonalNr = TabPepTagZeiten.PerNr
WHERE (Temp_Hat.dbo.yTempTabKakomKassierer.TransaktionCode = N'0181')
   OR
    (Temp_Hat.dbo.yTempTabKakomKassierer.TransaktionCode = N'0184') 

 		/** Folg.Zeile entfernt, sonst fehlen Werte für PersnalNr. "0"  	
    AND (TabPepTagZeiten.FZeichen = N'~')   **/

GROUP BY Temp_Hat.dbo.yTempTabKakomKassierer.Tag, Temp_Hat.dbo.yTempTabKakomKassierer.Filiale, 
    Temp_Hat.dbo.yTempTabKakomKassierer.Kassierer,
    Temp_Hat.dbo.yTempTabKakomKassierer.PersonalNr,
    Temp_Hat.dbo.yTempTabKakomKassierer.NachName,
    Temp_Hat.dbo.yTempTabKakomKassierer.VorName 
    
HAVING (Temp_Hat.dbo.yTempTabKakomKassierer.Tag = CONVERT(smalldatetime, 
    CONVERT(NCHAR(10), @Tag, 104))) 

ORDER BY 
    Temp_Hat.dbo.yTempTabKakomKassierer.Tag, 
    Temp_Hat.dbo.yTempTabKakomKassierer.Filiale, 
    Temp_Hat.dbo.yTempTabKakomKassierer.Kassierer
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakNrepPepKassierer    Skriptdatum: 27.08.2007 15:35:31 ******/
/****** Objekt:  Gespeicherte Prozedur dbo.CpKakNrepPepKassierer    Skriptdatum: 27.02.2003  ******/

CREATE PROCEDURE CpKakNrepPepKassierer  AS 

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTempTabKakomKassierer1_1'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTempTabKakomKassierer1_1]

SELECT dbo.TabKakomKassierer.Tag, 
    dbo.TabKakomKassierer.Filiale, 
    dbo.TabKakomKassierer.Kasse, 
    dbo.TabKakomKassierer.Kassierer, 
    dbo.TabKakomKassierer.TransaktionCode, 
    dbo.TabKakomKassierer.TransaktBez, 
    dbo.TabKakomKassierer.VerkaufsMenge, 
    dbo.TabKakomKassierer.UmsatzBetrag, 
    dbo.TabKakomKassierer.PersonalNr, 
    dbo.TabPepPersonalstamm.Nachname, 
    dbo.TabPepPersonalstamm.Vorname

INTO Temp_Hat.dbo.yTempTabKakomKassierer1_1

FROM dbo.TabKakomKassierer INNER JOIN
    dbo.TabPepPersonalstamm ON 
    dbo.TabKakomKassierer.PersonalNr = dbo.TabPepPersonalstamm.Mitarbeiternummer

WHERE ((TabKakomKassierer.Tag = CONVERT(DATETIME, 
    CONVERT(NCHAR(10), GETDATE() - 1, 104))) and
        (TabKakomKassierer.TransaktionCode = N'0181') or
      (TabKakomKassierer.Tag = CONVERT(DATETIME, 
    CONVERT(NCHAR(10), GETDATE() - 1, 104))) and
        (TabKakomKassierer.TransaktionCode = N'0184'))


SELECT Temp_Hat.dbo.yTempTabKakomKassierer1_1.Tag, 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Filiale, 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Kassierer, 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Nachname, 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Vorname, 

    (ISNULL(Temp_Hat.dbo.yTempTabKakomKassierer1_1.PersonalNr,0)) as PersonalNr, 
    SUM(ISNULL(Temp_Hat.dbo.yTempTabKakomKassierer1_1.VerkaufsMenge,0)) AS Kunde, 
    SUM(ISNULL(Temp_Hat.dbo.yTempTabKakomKassierer1_1.UmsatzBetrag,0)) AS Umsatz, 
    Max(ISNULL(TabPepTagZeiten.Arb,0)) AS AZeit,
 
  ISNULL((
    Convert (numeric(9,3),
    (((Convert(numeric(9,3),(Left (Max(TabPepTagZeiten.Arb),2))) * 60)+ 
     ((Convert(numeric(9,3),(Right(Max(TabPepTagZeiten.Arb),2))))))/60))),0) AS AStd,

  ISNULL ((
   Case When  (((Convert(numeric(9,3),(Left (Max(TabPepTagZeiten.Arb),2))) * 60)+ 
     ((Convert(numeric(9,3),(Right(Max(TabPepTagZeiten.Arb),2))))))/60) >0        THEN
    Convert(numeric(9,2), SUM(Temp_Hat.dbo.yTempTabKakomKassierer1_1.UmsatzBetrag) 
    / (Convert (numeric(9,3),
    (((Convert(numeric(9,3),(Left (Max(TabPepTagZeiten.Arb),2))) * 60)+ 
     ((Convert(numeric(9,3),(Right(Max(TabPepTagZeiten.Arb),2))))))/60))))  
      ELSE 0  END),1) AS   StdUmsatz


FROM Temp_Hat.dbo.yTempTabKakomKassierer1_1 FULL OUTER JOIN
    dbo.TabPepTagZeiten ON 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Tag = dbo.TabPepTagZeiten.Tag
     AND 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Filiale = dbo.TabPepTagZeiten.Filiale
     AND 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.PersonalNr = dbo.TabPepTagZeiten.PerNr

 AND dbo.TabPepTagZeiten.FZeichen <> 'V'
 AND dbo.TabPepTagZeiten.FZeichen <> 'B'

  /*** where (TabPepTagZeiten.FZeichen = N'~')  FEHLER:
    falls für Mitarbeiter in PEP Arbeitszeiten fehlen, erfolgt keine Ausgabe ***/

GROUP BY Temp_Hat.dbo.yTempTabKakomKassierer1_1.Tag, 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Filiale, 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Kassierer, 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.PersonalNr, 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Nachname, 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Vorname
HAVING (Temp_Hat.dbo.yTempTabKakomKassierer1_1.Tag > CONVERT(DATETIME,
     '1998-01-01 00:00:00', 102))
ORDER BY
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Tag, 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Filiale, 
    Temp_Hat.dbo.yTempTabKakomKassierer1_1.Kassierer
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakNrepTransaktion    Skriptdatum: 27.08.2007 15:35:31 ******/

CREATE PROCEDURE CpKakNrepTransaktion AS

                               /***   PROCEDURE CpKakNrepTransaktion   ***/  

/*** TRANSAKTIONBERICHT NACH KASSEN FÜR VORTAG   ***/
/*** ==============================================  ***/

	/* --1.Auswertungsstufe-- Temp_Hat.dbo.yTempTransDetail1x1   */


if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTempTransDetail1x1'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTempTransDetail1x1]

SELECT Tag, Filiale, TransaktCode, TransaktBez, Transaktion, 
    Kasse, VerkaufsMenge, Umsatzbetrag
INTO Temp_Hat.dbo.yTempTransDetail1x1
FROM TabKakomTransaktion
WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10),                     /*  Vortag,-1Tage,-2Tage,-3Tage        */
    GETDATE() - 4, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 3, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 2, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 1, 104)))



	/* --2.Auswertungsstufe--  Temp_Hat.dbo.yTempTransZNrVort1_2x1   */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTempTransZNrVort1_2x1'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTempTransZNrVort1_2x1]

SELECT TransaktCode, TransaktBez, Transaktion, Filiale, Kasse, 
    MAX(DISTINCT Tag) AS VorTag, 
    MAX(DISTINCT VerkaufsMenge) AS VorMenge
INTO Temp_Hat.dbo.yTempTransZNrVort1_2x1
FROM Temp_Hat.dbo.yTempTransDetail1x1
WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
    GETDATE() - 1, 104))) 
GROUP BY TransaktCode, TransaktBez, Transaktion, Filiale, 
    Kasse
HAVING (TransaktCode = N'9000') AND (Filiale <> N'9023') AND 
    (MAX(DISTINCT VerkaufsMenge) > 0)



	/* --2.Auswertungsstufe--  Temp_Hat.dbo.yTempTransZNrVort2_2x2   */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTempTransZNrVort2_2x2'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTempTransZNrVort2_2x2]

SELECT TransaktCode, TransaktBez, Transaktion, Filiale, Kasse, 
    MAX(DISTINCT Tag) AS VorletzterTag, 
    MAX(DISTINCT VerkaufsMenge) AS VorletzteMenge
INTO Temp_Hat.dbo.yTempTransZNrVort2_2x2
FROM Temp_Hat.dbo.yTempTransDetail1x1
WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
    GETDATE() - 4, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 3, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 2, 104)))
GROUP BY TransaktCode, TransaktBez, Transaktion, Filiale, 
    Kasse
HAVING (TransaktCode = N'9000') AND (Filiale <> N'9023') AND 
    (MAX(DISTINCT VerkaufsMenge) > 0)


	/* --3.Auswertungsstufe--  Temp_Hat.dbo.yTempTransZ_Diff_3x1   */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTempTransZ_Diff_3x1'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTempTransZ_Diff_3x1]

SELECT Temp_Hat.dbo.yTempTransZNrVort1_2x1.Filiale, 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.Kasse, 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.TransaktCode, 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.TransaktBez, 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.Transaktion, 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.VorTag, 
    MAX(DISTINCT Temp_Hat.dbo.yTempTransZNrVort1_2x1.VorMenge) 
    AS Z_Heute, 
    MAX(DISTINCT Temp_Hat.dbo.yTempTransZNrVort2_2x2.VorletzteMenge) 
    AS Z_Gestern, 
    MAX(DISTINCT Temp_Hat.dbo.yTempTransZNrVort1_2x1.VorMenge) 
    - MAX(DISTINCT Temp_Hat.dbo.yTempTransZNrVort2_2x2.VorletzteMenge) 
    AS Z_Differenz
INTO Temp_Hat.dbo.yTempTransZ_Diff_3x1
FROM Temp_Hat.dbo.yTempTransZNrVort1_2x1 INNER JOIN
    Temp_Hat.dbo.yTempTransZNrVort2_2x2 ON 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.Filiale = Temp_Hat.dbo.yTempTransZNrVort2_2x2.Filiale
     AND 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.Kasse = Temp_Hat.dbo.yTempTransZNrVort2_2x2.Kasse
     AND 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.TransaktCode = Temp_Hat.dbo.yTempTransZNrVort2_2x2.TransaktCode
GROUP BY Temp_Hat.dbo.yTempTransZNrVort1_2x1.Filiale, 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.Kasse, 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.TransaktCode, 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.TransaktBez, 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.Transaktion, 
    Temp_Hat.dbo.yTempTransZNrVort1_2x1.VorTag
HAVING (Temp_Hat.dbo.yTempTransZNrVort1_2x1.TransaktCode = N'9000')


	/* --4.Auswertungsstufe--  Temp_Hat.dbo.yTempTransVortag4x1   */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTempTransVortag4x1'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTempTransVortag4x1]

SELECT Temp_Hat.dbo.yTempTransDetail1x1.Tag, Temp_Hat.dbo.yTempTransDetail1x1.Filiale, 
    Temp_Hat.dbo.yTempTransDetail1x1.TransaktCode, 
    Temp_Hat.dbo.yTempTransDetail1x1.TransaktBez, 
    Temp_Hat.dbo.yTempTransDetail1x1.Transaktion, 
    Temp_Hat.dbo.yTempTransDetail1x1.Kasse, 
    Temp_Hat.dbo.yTempTransDetail1x1.VerkaufsMenge, 
    Temp_Hat.dbo.yTempTransDetail1x1.Umsatzbetrag, 
    ISNULL(Temp_Hat.dbo.yTempTransZ_Diff_3x1.Z_Differenz, 0) 
    AS Z_Diff

 FROM Temp_Hat.dbo.yTempTransDetail1x1 LEFT OUTER JOIN
    Temp_Hat.dbo.yTempTransZ_Diff_3x1 ON 
    Temp_Hat.dbo.yTempTransDetail1x1.Tag = Temp_Hat.dbo.yTempTransZ_Diff_3x1.VorTag AND
     Temp_Hat.dbo.yTempTransDetail1x1.TransaktCode = Temp_Hat.dbo.yTempTransZ_Diff_3x1.TransaktCode
     AND 
    Temp_Hat.dbo.yTempTransDetail1x1.Filiale = Temp_Hat.dbo.yTempTransZ_Diff_3x1.Filiale AND
     Temp_Hat.dbo.yTempTransDetail1x1.Kasse = Temp_Hat.dbo.yTempTransZ_Diff_3x1.Kasse
WHERE (Temp_Hat.dbo.yTempTransDetail1x1.Tag = CONVERT(DATETIME, 
    CONVERT(NCHAR(10), GETDATE() - 1, 104)))

  /* *********************************ENDE************************************************************************* */
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakNrepWarengruppen    Skriptdatum: 27.08.2007 15:35:31 ******/

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakNrepWarengruppen    Skriptdatum: 27.12.2000 14:02:53 ******/
CREATE PROCEDURE CpKakNrepWarengruppen AS
                                /***   PROCEDURE CpKakNrepWarengruppen               ***/  
/*** 4 WOCHENVERGLEICH NACH FILIALEN  UND WARENGRUPPEN   ***/
/*** ==================================================  ***/
	/* --1.Auswertungsstufe--  dbo.yTempWgVorDetail1x1   */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempWgVorDetail1x1')
DROP TABLE yTempWgVorDetail1x1
SELECT Tag, Filiale, Warengruppe, MIN(WarengruppeBez)                  /* Details (Kassen summiert)             */
    AS WgBez, MIN(WG) AS Wg, SUM(ISNULL(Verkaufsmenge, 0)) 
    AS Menge, SUM(ISNULL(Umsatz, 0)) AS Umsatz
INTO yTempWgVorDetail1x1                                               /* Basisdaten zur folgenden Verarbeitung */
FROM TabKakomWarengruppen                                              /* SQL-DB wird nur 1x duchsucht          */ 
GROUP BY Tag, Filiale, Warengruppe
HAVING (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10),                     /*  Vortag,-7Tage,-14Tage,-21Tage        */
    GETDATE() - 22, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 15, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 8, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 1, 104)))
ORDER BY Tag, Filiale, Warengruppe
	/* --2.Auswertungsstufe (Filiale, Warengruppe)--    dbo.yTempWgFil2x0 --   */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempWgFil2x0')
DROP TABLE yTempWgFil2x0
SELECT CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 1, 104)) AS VorTag, Filiale, Warengruppe,WgBez,Wg               /* Nach beteiligten Filialen / WG gruppieren */
INTO yTempWgFil2x0
FROM yTempWgVorDetail1x1
GROUP BY Filiale, Warengruppe,WgBez,Wg
	/* --2.Auswertungsstufe (Tag, Filiale, Warengruppe)--     dbo.yTempWgVorges_2x1    */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempWgVorges_2x1')
DROP TABLE yTempWgVorges_2x1
SELECT CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE()                  /* Auswählen und summieren                   */
    - 1, 104)) AS VorTag, MIN(Filiale) AS Filiale, Warengruppe,       /* Vergleichstage -7,-14,-21                 */
    SUM(ISNULL(Menge, 0)) AS Menge3, SUM(ISNULL(Umsatz, 0)) 
    AS Umsatz3, COUNT(DISTINCT Tag) AS AnzT
INTO yTempWgVorges_2x1
FROM yTempWgVorDetail1x1
WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
    GETDATE() - 22, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 15, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 8, 104)))
GROUP BY Filiale, Warengruppe
ORDER BY Filiale, Warengruppe
	/* --2.Auswertungsstufe (Tag, Filiale, Warengruppe)--     dbo.yTempWgVor1_2x2     */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempWgVor1_2x2')
DROP TABLE yTempWgVor1_2x2
SELECT Tag AS Vortag, Filiale, Warengruppe, SUM(ISNULL(Menge,          /* Auswählen und summieren Vortag (gestern) */
    0)) AS Menge1, SUM(ISNULL(Umsatz, 0)) AS Umsatz1
INTO yTempWgVor1_2x2
FROM yTempWgVorDetail1x1
WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
    GETDATE() - 1, 104)))
GROUP BY Tag, Filiale, Warengruppe
ORDER BY Filiale, Warengruppe
	/* --2.Auswertungsstufe (Tag, Warengruppe)--     dbo.yTempWgGesWg2x5     */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempWgGesWg2x5')
DROP TABLE yTempWgGesWg2x5
SELECT Tag AS Vortag, Warengruppe, SUM(ISNULL(Menge,          /* Auswählen und summieren Vortag (gestern) */
    0)) AS MengeWg, SUM(ISNULL(Umsatz, 0)) AS UmsatzWg
INTO yTempWgGesWg2x5
FROM yTempWgVorDetail1x1
WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
    GETDATE() - 1, 104)))
GROUP BY Tag, Warengruppe
ORDER BY  Warengruppe
	/* --3.Auswertungsstufe--      dbo.yTempFilVergl3x1   */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempFilVergl3x1')
DROP TABLE yTempFilVergl3x1
SELECT MAX(yTempWgVorDetail1x1.Tag) AS Tag,                            /* Vergleich der Gesamt-Filialtagesumsätze  */
    yTempWgVorDetail1x1.Filiale, 
    SUM(ISNULL(yTempWgVor1_2x2.Menge1,0)) AS Menge1, 
    SUM(ISNULL(yTempWgVor1_2x2.Umsatz1,0)) AS Umsatz1, 
    SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0)) AS Umsatz3,               /* Summe Umsatz Vergleichstage               */
    MAX(ISNULL(yTempWgVorges_2x1.AnzT,0)) AS AnzT, 
                                                                     /* Durchschnittsumsatz aus Vorwochen         */
    AvgUms3 = ISNULL( ((SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0))) /             
     (MAX(ISNULL(yTempWgVorges_2x1.AnzT,1)))),0),
                                                                       /* Umsatzabweichung in DM                    */	
  CASE
    WHEN SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0))>0 
      THEN (SUM(ISNULL(yTempWgVor1_2x2.Umsatz1,0)) )- ((SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0)))/
                                                       (MAX(ISNULL(yTempWgVorges_2x1.AnzT,1)) ))
      ELSE 0
     END AS AbwFilDM ,
                                                                       /* Umsatzabweichung in Prozent               */
   CASE
    WHEN SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0))>0   
       THEN   ((SUM(ISNULL(yTempWgVor1_2x2.Umsatz1,0)) )- ((SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0)))/
                                                       (MAX(ISNULL(yTempWgVorges_2x1.AnzT,1)) )) )*100 /
             ((SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0)))/ (MAX(ISNULL(yTempWgVorges_2x1.AnzT,1)) ) )
          ELSE 0
    END  AS  AbwFilPr ,
                                                                /* Gesamt-Tagesumsatz für Berechnungen       */
    TagUms = (SELECT SUM(Umsatz)                                   
       FROM yTempWgVorDetail1x1
      GROUP BY Tag
      HAVING (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
           GETDATE() - 1, 104)))),              
                                                                /* Anteil Filialumsatz an Gesamttagesumsatz  */
     UmsAnteil = ((SUM(ISNULL(yTempWgVor1_2x2.Umsatz1,0)))*100 / (SELECT SUM(Umsatz)
      FROM yTempWgVorDetail1x1
      GROUP BY Tag
       HAVING (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
           GETDATE() - 1, 104))))),
								/* Tagesdurchschnittsumsatz aus Vorwochen    */
    UmsDur = (((SELECT SUM(Umsatz)   
       FROM yTempWgVorDetail1x1
        WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
           GETDATE() - 22, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 15, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 8, 104))))) / MAX(ISNULL(yTempWgVorges_2x1.AnzT,3))) ,
								 /* Abweich.DM Tagesdurchschnittsums.zu Gestern*/
   CASE
    WHEN  (((SELECT SUM(Umsatz)   
       FROM yTempWgVorDetail1x1
        WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
           GETDATE() - 22, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 15, 104))) OR
    (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    - 8, 104))))) / MAX(ISNULL(yTempWgVorges_2x1.AnzT,3)))>0
	THEN ((SELECT SUM(Umsatz)                                   
                FROM yTempWgVorDetail1x1
                GROUP BY Tag
                HAVING (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
                        GETDATE() - 1, 104))))) -
          ((((SELECT SUM(Umsatz)   
                FROM yTempWgVorDetail1x1
                WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
                       GETDATE() - 22, 104))) OR
                       (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE()- 15, 104))) OR
                       (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() - 8, 104))))) /
                           MAX(ISNULL(yTempWgVorges_2x1.AnzT,3)))) 
         ELSE 0
       END AS AbwTagDM ,  
							/* Abweich.% Tagesdurchschnittsums. Gestern  */
    AbwTagPr = ( (((SELECT SUM(Umsatz)                          
                    FROM yTempWgVorDetail1x1
                    GROUP BY Tag
                    HAVING (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
                              GETDATE() - 1, 104))))- (((SELECT SUM(Umsatz)
                    FROM yTempWgVorDetail1x1
                    WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
                            GETDATE() - 22, 104))) OR
                          (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10),
                            GETDATE()- 15, 104))) OR
                          (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10),
                            GETDATE()- 8, 104))))) / 
                      MAX(ISNULL(yTempWgVorges_2x1.AnzT,3))) )) *100 / 
                                ((((SELECT SUM(Umsatz)
                                    FROM yTempWgVorDetail1x1
                                    WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
                                              GETDATE() - 22, 104))) OR
                                          (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
                                              GETDATE() - 15, 104))) OR
                                          (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
                                              GETDATE() - 8, 104))))) /
                                      MAX(ISNULL(yTempWgVorges_2x1.AnzT,3))) ) ) ,
                                                                          /* Vergleich Gesamtabweich. Filialabweich.*/
   AbwFilTag =(( CASE
    WHEN SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0))>0   
       THEN   ((SUM(ISNULL(yTempWgVor1_2x2.Umsatz1,0)) )- ((SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0)))/
                                                       (MAX(ISNULL(yTempWgVorges_2x1.AnzT,1)) )) )*100 /
             ((SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0)))/ (MAX(ISNULL(yTempWgVorges_2x1.AnzT,1)) ) )
          ELSE 0
    END ) - (  (((SELECT SUM(Umsatz)                          
                    FROM yTempWgVorDetail1x1
                    GROUP BY Tag
                    HAVING (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
                              GETDATE() - 1, 104))))- (((SELECT SUM(Umsatz)
                    FROM yTempWgVorDetail1x1
                    WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
                            GETDATE() - 22, 104))) OR
                          (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10),
                            GETDATE()- 15, 104))) OR
                          (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10),
                            GETDATE()- 8, 104))))) / 
                      MAX(ISNULL(yTempWgVorges_2x1.AnzT,3))) )) *100 / 
                                ((((SELECT SUM(Umsatz)
                                    FROM yTempWgVorDetail1x1
                                    WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
                                              GETDATE() - 22, 104))) OR
                                          (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
                                              GETDATE() - 15, 104))) OR
                                          (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), 
                                              GETDATE() - 8, 104))))) /
                                      MAX(ISNULL(yTempWgVorges_2x1.AnzT,3))) )  ))
INTO yTempFilVergl3x1
FROM yTempWgVorDetail1x1 LEFT OUTER JOIN
    yTempWgVor1_2x2 ON 
    yTempWgVorDetail1x1.Tag = yTempWgVor1_2x2.Vortag AND 
    yTempWgVorDetail1x1.Filiale = yTempWgVor1_2x2.Filiale AND 
    yTempWgVorDetail1x1.Warengruppe = yTempWgVor1_2x2.Warengruppe
     LEFT OUTER JOIN
    yTempWgVorges_2x1 ON 
    yTempWgVorDetail1x1.Tag = yTempWgVorges_2x1.Vortag AND 
    yTempWgVorDetail1x1.Filiale = yTempWgVorges_2x1.Filiale AND
     yTempWgVorDetail1x1.Warengruppe = yTempWgVorges_2x1.Warengruppe
		/** Folg. Klausel verhindert "Division-0-Fehler", falls eine Filiale **/
		/**  gestern geschlossen und Vorwoche geöffnet hatte **/
WHERE yTempWgVorDetail1x1.Tag = CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE() 
    -1 , 104))
GROUP BY yTempWgVorDetail1x1.Filiale
ORDER BY yTempWgVorDetail1x1.Filiale
	/* --4.Auswertungsstufe--        dbo.yTempWGVerg4x1  "AUSGABETABELLE FÜR CRYSTALL REPORTS"
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempFilWg4x1')
DROP TABLE yTempFilWg4x1               */
SELECT CONVERT(DATETIME, CONVERT(NCHAR(10), GETDATE()                     /* Zusammenstell. v.Tages-,Filial-,Wg-Sum */
    - 1, 104)) AS VorTag, yTempFilVergl3x1.TagUms,                       /* u.deren Vergleichswerten aus Vorwochen */
    yTempFilVergl3x1.UmsDur, yTempFilVergl3x1.AbwTagDM, 
    AbwTagPr = CONVERT (numeric(8,3), yTempFilVergl3x1.AbwTagPr), 
    yTempWgFil2x0.Filiale, 
    UmsAnteil = CONVERT(NUMERIC(8,3), yTempFilVergl3x1.UmsAnteil), 
    yTempFilVergl3x1.AnzT, 
    yTempFilVergl3x1.Umsatz1 AS FilUmsatz, 
    yTempFilVergl3x1.AvgUms3,  yTempFilVergl3x1.AbwFilDM, 
    AbwFilPr = CONVERT(NUMERIC(8,3), yTempFilVergl3x1.AbwFilPr),
    AbwFilTag = CONVERT(NUMERIC(8,3), yTempFilVergl3x1.AbwFilTag), 
    yTempWgFil2x0.Warengruppe, yTempWgFil2x0.WgBez, 
    yTempWgFil2x0.Wg, 
    SUM(ISNULL(yTempWgVor1_2x2.Menge1,0))   AS Menge1, 
    SUM(ISNULL(yTempWgVor1_2x2.Umsatz1,0))  AS Umsatz1, 
    SUM(ISNULL(yTempWgVorges_2x1.Menge3,0)) AS Menge3, 
    SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0)) AS Umsatz3, 
    MAX(DISTINCT(ISNULL (yTempWgVorges_2x1.AnzT,0)))AS AnzUms3,
   AbwWg = CONVERT (NUMERIC(8,3),(  CASE WHEN (SUM(ISNULL                 /* Veränderung innerhalb der Wg           */
            (yTempWgVorges_2x1.Umsatz3,0)) <= 0 ) THEN 0 WHEN (yTempFilVergl3x1.AnzT <= 0 ) 
            THEN 0  ELSE ( (( SUM(ISNULL(yTempWgVor1_2x2.Umsatz1,0)) ) - 
          (( SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0)) )/((yTempFilVergl3x1.AnzT )))) * 100 / 
          (( SUM(ISNULL(yTempWgVorges_2x1.Umsatz3,0)) )/((yTempFilVergl3x1.AnzT )))) END)),
   AntWgFil = CONVERT (NUMERIC(8,3), ( SUM(ISNULL                         /* Warengruppenanteil an Filumsatz        */
          (yTempWgVor1_2x2.Umsatz1,0)) *100 / yTempFilVergl3x1.Umsatz1 )),
   yTempWgGesWg2x5.UmsatzWg
FROM yTempWgFil2x0 INNER JOIN	
    yTempFilVergl3x1 ON 	
    yTempWgFil2x0.VorTag = yTempFilVergl3x1.Tag AND 
    yTempWgFil2x0.Filiale = yTempFilVergl3x1.Filiale 
                   INNER JOIN
    yTempWgGesWg2x5 ON
    yTempWgFil2x0.VorTag = yTempWgGesWg2x5.VorTag AND
    yTempWgFil2x0.Warengruppe = yTempWgGesWg2x5.Warengruppe
     LEFT OUTER JOIN
    yTempWgVorges_2x1 ON 
    yTempWgFil2x0.VorTag = yTempWgVorges_2x1.VorTag AND 
    yTempWgFil2x0.Filiale = yTempWgVorges_2x1.Filiale AND 
    yTempWgFil2x0.Warengruppe = yTempWgVorges_2x1.Warengruppe
     LEFT OUTER JOIN
    yTempWgVor1_2x2 ON 
    yTempWgFil2x0.Warengruppe = yTempWgVor1_2x2.Warengruppe
     AND yTempWgFil2x0.Filiale = yTempWgVor1_2x2.Filiale AND 
    yTempWgFil2x0.VorTag = yTempWgVor1_2x2.Vortag
GROUP BY yTempWgFil2x0.Filiale, yTempWgFil2x0.Warengruppe,                /* Ohne durchgehende Gruppierung erkennt  */
    yTempWgFil2x0.WgBez, yTempWgFil2x0.Wg,                                /* CrystalReports nicht die Verknüpfungen */
    yTempFilVergl3x1.UmsAnteil, yTempFilVergl3x1.TagUms,                  /*   1.Gruppierung nach Tageswerten       */
    yTempFilVergl3x1.UmsDur, yTempFilVergl3x1.AbwTagDM,                   /*   2.Gruppierung nach Filialwerten      */	
    yTempFilVergl3x1.AbwTagPr, yTempFilVergl3x1.AnzT,                     /*   3.Gruppierung Nach Wg-Werten         */
    yTempFilVergl3x1.AvgUms3, yTempFilVergl3x1.AbwFilDM, 
    yTempFilVergl3x1.AbwFilPr, yTempFilVergl3x1.AbwFilTag, 
    yTempFilVergl3x1.Umsatz1, yTempWgGesWg2x5.UmsatzWg
  /* *********************************ENDE************************************************************************* */


GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakPepRmMonatsKaufbLeist    Skriptdatum: 27.08.2007 15:35:31 ******/
/****** Objekt:  Gespeicherte Prozedur dbo.CpKakPepRmMonatsKaufbLeist    Skriptdatum: 4.9.2001 08:13:08 ******/

CREATE PROCEDURE CpKakPepRmMonatsKaufbLeist AS

/*** TÄGL. bzw. MONATL. AUSWERTUNG DER KAUFBETRÄGE UND STUNDENLEISTUNG NACH FILIALEN   ***/
/*** ======================================================================================  ***/

	/* --1.1 Auswertungsstufe--  Tagessumme aus TabKakomKassierer  */   

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp1_1KakomTag'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp1_1KakomTag]

SELECT dbo.TabKakomKassierer.Tag, 
    dbo.TabKakomKassierer.Filiale, 
    dbo.TabKakomKassierer.Kassierer, 
    dbo.TabKakomKassierer.PersonalNr AS PerNr, 
    MAX(ISNULL(dbo.TabPepPersonalstamm.Nachname,'?')) AS NName, 
    MAX(ISNULL(dbo.TabPepPersonalstamm.Vorname,'?')) AS VName, 
    CONVERT(NUMERIC(9, 3), 
    SUM(ISNULL(dbo.TabKakomKassierer.VerkaufsMenge, 0))) 
    AS Menge, 
    SUM(ISNULL(dbo.TabKakomKassierer.UmsatzBetrag, 0)) 
    AS Umsatz
INTO Temp_Hat.dbo.yTemp1_1KakomTag
FROM dbo.TabKakomKassierer LEFT OUTER JOIN
    dbo.TabPepPersonalstamm ON 
    dbo.TabKakomKassierer.PersonalNr = dbo.TabPepPersonalstamm.Mitarbeiternummer
WHERE (dbo.TabKakomKassierer.TransaktionCode = N'0181') OR
    (dbo.TabKakomKassierer.TransaktionCode = N'0184')
GROUP BY dbo.TabKakomKassierer.Tag, 
    dbo.TabKakomKassierer.Filiale, 
    dbo.TabKakomKassierer.Kassierer, 
    dbo.TabKakomKassierer.PersonalNr
HAVING (Tag > CONVERT(DATETIME, '1998-12-31 00:00:00', 102))

ORDER BY 
    dbo.TabKakomKassierer.Tag, 
    dbo.TabKakomKassierer.Filiale,
    dbo.TabKakomKassierer.Kassierer,
    dbo.TabKakomKassierer.PersonalNr
 

	/* --1.2 Auswertungsstufe--  aus TabPepTagZeiten  */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp1_2PepTag'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp1_2PepTag]

SELECT Tag, Filiale, CONVERT (nvarchar(4),PerNr) AS PerNr, CONVERT(numeric(9, 3), 
    (CONVERT(numeric(9, 3), LEFT(Arb, 2))* 60 + 
   CONVERT(numeric(9, 3), RIGHT(Arb, 2))) / 60) AS AStd
INTO Temp_Hat.dbo.yTemp1_2PepTag
FROM dbo.TabPepTagZeiten
WHERE (FZeichen = N'~') AND (Filiale > N'9020') 
 AND     (Tag > CONVERT(DATETIME, '1998-12-31 00:00:00', 102)) 

ORDER BY 
    Tag, 
    Filiale,
    PerNr


	/* --2_1. Auswertungsstufe--  PerNr aus Pep, die nicht in Kakom sind   */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp2_1PepTag'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp2_1PepTag]

SELECT Tag, Filiale, Kassierer= '00', CONVERT (nvarchar(4),PerNr) AS PerNr, Menge= CONVERT (NUMERIC(9,3),0), Umsatz= $0
INTO Temp_Hat.dbo.yTemp2_1PepTag
FROM Temp_Hat.dbo.yTemp1_2PepTag
WHERE (PerNr NOT IN
        (SELECT PerNr
      FROM Temp_Hat.dbo.yTemp1_1KakomTag
      WHERE Temp_Hat.dbo.yTemp1_1KakomTag.Tag = Temp_Hat.dbo.yTemp1_2PepTag.Tag
            AND 
           Temp_Hat.dbo.yTemp1_1KakomTag.Filiale = Temp_Hat.dbo.yTemp1_2PepTag.Filiale))
ORDER BY 
    Tag, 
    Filiale,
    PerNr


	/* --2_2. Auswertungsstufe--  PerNr, die nicht in Kakom sind mit Namen   */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp2_2PepTag'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp2_2PepTag]

SELECT Temp_Hat.dbo.yTemp2_1PepTag.Tag, Temp_Hat.dbo.yTemp2_1PepTag.Filiale, 
    Temp_Hat.dbo.yTemp2_1PepTag.Kassierer, Temp_Hat.dbo.yTemp2_1PepTag.PerNr, 
    MAX(ISNULL(dbo.TabPepPersonalstamm.Nachname,'?')) AS NName, 
    MAX(ISNULL(dbo.TabPepPersonalstamm.Vorname,'?')) AS VName, 
    SUM(Temp_Hat.dbo.yTemp2_1PepTag.Menge) AS Menge, 
    SUM(Temp_Hat.dbo.yTemp2_1PepTag.Umsatz) AS Umsatz
INTO Temp_Hat.dbo.yTemp2_2PepTag
FROM Temp_Hat.dbo.yTemp2_1PepTag LEFT OUTER JOIN
    dbo.TabPepPersonalstamm ON 
    Temp_Hat.dbo.yTemp2_1PepTag.PerNr = dbo.TabPepPersonalstamm.Mitarbeiternummer
GROUP BY Temp_Hat.dbo.yTemp2_1PepTag.Tag, 
    Temp_Hat.dbo.yTemp2_1PepTag.Filiale, 
    Temp_Hat.dbo.yTemp2_1PepTag.Kassierer, Temp_Hat.dbo.yTemp2_1PepTag.PerNr


	/* --3.1 Auswertungsstufe--  PerNr, die nicht in Kakom sind mit Namen einfügen  */
INSERT INTO Temp_Hat.dbo.yTemp1_1KakomTag
SELECT *
FROM Temp_Hat.dbo.yTemp2_2PepTag



	/* --4.1 Auswertungsstufe-- Kaufbetrag / Leistung      MITARBEITER-TAGESWERTE  */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp4_1KakomPepTag'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp4_1KakomPepTag]

SELECT Temp_Hat.dbo.yTemp1_1KakomTag.Tag, 
   /***  { fn Year (Temp_Hat.dbo.yTemp1_1KakomTag.Tag) } AS Jahr, { fn MONTH (Temp_Hat.dbo.yTemp1_1KakomTag.Tag) } AS Monat,  ***/
    Temp_Hat.dbo.yTemp1_1KakomTag.Filiale, 
    Temp_Hat.dbo.yTemp1_1KakomTag.Kassierer, 
    Temp_Hat.dbo.yTemp1_1KakomTag.PerNr, 
    Temp_Hat.dbo.yTemp1_1KakomTag.NName,
    Temp_Hat.dbo.yTemp1_1KakomTag.VName,
    ISNULL(Temp_Hat.dbo.yTemp1_2PepTag.AStd, 0) AS AStd,
    Temp_Hat.dbo.yTemp1_1KakomTag.Menge, 
    Temp_Hat.dbo.yTemp1_1KakomTag.Umsatz
INTO Temp_Hat.dbo.yTemp4_1KakomPepTag
FROM Temp_Hat.dbo.yTemp1_1KakomTag LEFT OUTER JOIN
    Temp_Hat.dbo.yTemp1_2PepTag ON 
    Temp_Hat.dbo.yTemp1_1KakomTag.Tag = Temp_Hat.dbo.yTemp1_2PepTag.Tag AND 
    Temp_Hat.dbo.yTemp1_1KakomTag.Filiale = Temp_Hat.dbo.yTemp1_2PepTag.Filiale AND
    Temp_Hat.dbo.yTemp1_1KakomTag.PerNr = Temp_Hat.dbo.yTemp1_2PepTag.PerNr
ORDER BY 
    Temp_Hat.dbo.yTemp1_1KakomTag.Tag, 
    Temp_Hat.dbo.yTemp1_1KakomTag.Filiale, 
    Temp_Hat.dbo.yTemp1_1KakomTag.Kassierer, 
    Temp_Hat.dbo.yTemp1_1KakomTag.PerNr


GOTO M_MONATSWERTE   
/**  GOTO M_TAGESWERTE   **/


M_MONATSWERTE:

	/* --5.1 Auswertungsstufe-- Kaufbetrag / Leistung     FILIAL-MONATSWERTE  */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp5_1FilMonWerte'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp5_1FilMonWerte]

SELECT Min(Tag)as MinTag, { fn Year (Tag) } AS Jahr, { fn MONTH (Tag) } AS Monat,  Filiale,  SUM(AStd) AS MonFAStd, 
                                                      SUM(Menge) AS MonFMenge, SUM(Umsatz)AS MonFUms,
         MonFKbet = CONVERT (NUMERIC(8,3), (CASE WHEN SUM(Menge) <= 0 Then 0 
                 Else ( SUM(Umsatz) / SUM(Menge) )  End)),
         MonFStdUms = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  SUM(AStd) <= 0 Then 0 
                 Else (SUM(Umsatz) / SUM(AStd)) END )),0)
INTO Temp_Hat.dbo.yTemp5_1FilMonWerte
FROM Temp_Hat.dbo.yTemp4_1KakomPepTag
GROUP BY { fn Year (Tag) } , { fn MONTH(Tag) }, Filiale
Order BY { fn Year (Tag) } , { fn MONTH(Tag) }, Filiale




	    /* --5.2 Auswertungsstufe-- Kaufbetrag / Leistung     MITARBEITER-MONATSWERTE  */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp5_2MitarbMonWerte'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp5_2MitarbMonWerte]

SELECT Min(Tag)as MinTag, { fn Year (Tag) } AS Jahr, { fn MONTH (Tag) } AS Monat,  Filiale, PerNr,
                    NName, VName,  SUM(AStd) AS AStd, SUM(Menge) AS Menge, SUM(Umsatz)AS Umsatz , 
       Kaufbet = CONVERT (NUMERIC(8,3), (CASE WHEN SUM(Menge) <= 0 Then 0 
                              Else ( SUM(Umsatz) / SUM(Menge) )  End)),
       StdUmsatz = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  SUM(AStd) <= 0 Then 0 
                              Else (SUM(Umsatz) / SUM(AStd)) END )),0),
       Punkte= (CONVERT (NUMERIC(8,3), (CASE WHEN SUM(Menge) <= 0 Then 0 
                 Else ( SUM(Umsatz) / SUM(Menge) )  End))*2)+
               (ISNULL (CONVERT (NUMERIC(8,3), ( Case When  SUM(AStd) <= 0 Then 0 
                 Else (SUM(Umsatz) / SUM(AStd)) END )),0)/10)

INTO Temp_Hat.dbo.yTemp5_2MitarbMonWerte
FROM Temp_Hat.dbo.yTemp4_1KakomPepTag
GROUP BY { fn Year (Tag) } , { fn MONTH(Tag) }, Filiale, PerNr, NName, VName



           /* --5.3 Auswertungsstufe-- Kaufbetrag / Leistung     GESAMT-MONATSWERTE  */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp5_3GesMonWerte'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp5_3GesMonWerte]

SELECT  { fn Year (Tag) } AS Jahr, { fn MONTH (Tag) } AS Monat, Min(Tag) AS MinTag,  SUM(AStd) AS MonGAStd, 
                                                      SUM(Menge) AS MonGMenge, SUM(Umsatz)AS MonGUms,
         MonGKbet = CONVERT (NUMERIC(8,3), (CASE WHEN SUM(Menge) <= 0 Then 0 
                 Else ( SUM(Umsatz) / SUM(Menge) )  End)),
         MonGStdUms = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  SUM(AStd) <= 0 Then 0 
                 Else (SUM(Umsatz) / SUM(AStd)) END )),0)
INTO Temp_Hat.dbo.yTemp5_3GesMonWerte
FROM Temp_Hat.dbo.yTemp4_1KakomPepTag
GROUP BY { fn Year (Tag) } , { fn MONTH(Tag) }
Order BY { fn Year (Tag) } , { fn MONTH(Tag) }




                /* --6.1 Auswertungsstufe-- Kaufbetrag / Leistung MONATSWERTE */
SELECT Temp_Hat.dbo.yTemp5_2MitarbMonWerte.MinTag,
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Jahr, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Monat, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Filiale, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.PerNr, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.NName, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.VName, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.AStd, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Menge, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Umsatz, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Kaufbet, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.StdUmsatz, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Punkte,
    Temp_Hat.dbo.yTemp5_1FilMonWerte.MonFAStd, 
    Temp_Hat.dbo.yTemp5_1FilMonWerte.MonFMenge, 
    Temp_Hat.dbo.yTemp5_1FilMonWerte.MonFUms, 
    Temp_Hat.dbo.yTemp5_1FilMonWerte.MonFKbet, 
    Temp_Hat.dbo.yTemp5_1FilMonWerte.MonFStdUms, 
    Temp_Hat.dbo.yTemp5_3GesMonWerte.MonGAStd, 
    Temp_Hat.dbo.yTemp5_3GesMonWerte.MonGMenge, 
    Temp_Hat.dbo.yTemp5_3GesMonWerte.MonGUms, 
    Temp_Hat.dbo.yTemp5_3GesMonWerte.MonGKbet, 
    Temp_Hat.dbo.yTemp5_3GesMonWerte.MonGStdUms
FROM Temp_Hat.dbo.yTemp5_2MitarbMonWerte INNER JOIN
    Temp_Hat.dbo.yTemp5_1FilMonWerte ON 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Jahr = Temp_Hat.dbo.yTemp5_1FilMonWerte.Jahr
     AND 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Monat = Temp_Hat.dbo.yTemp5_1FilMonWerte.Monat
     AND 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Filiale = Temp_Hat.dbo.yTemp5_1FilMonWerte.Filiale
     INNER JOIN
    Temp_Hat.dbo.yTemp5_3GesMonWerte ON 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Jahr = Temp_Hat.dbo.yTemp5_3GesMonWerte.Jahr
     AND 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Monat = Temp_Hat.dbo.yTemp5_3GesMonWerte.Monat
ORDER BY Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Jahr, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Monat, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Filiale, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.PerNr

GOTO ENDE

M_TAGESWERTE:

         /* --5.1 Auswertungsstufe-- Kaufbetrag / Leistung     FILIAL-TAGESWERTE  */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp5_1FilTagWerte'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp5_1FilTagWerte]

SELECT Tag, Filiale,  SUM(AStd) AS TagFAStd, 
                  SUM(Menge) AS TagFMenge, SUM(Umsatz)AS TagFUms,
         TagFKbet = CONVERT (NUMERIC(8,3), (CASE WHEN SUM(Menge) <= 0 Then 0 
                 Else ( SUM(Umsatz) / SUM(Menge) )  End)),
         TagFStdUms = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  SUM(AStd) <= 0 Then 0 
                 Else (SUM(Umsatz) / SUM(AStd)) END )),0)
INTO Temp_Hat.dbo.yTemp5_1FilTagWerte
FROM Temp_Hat.dbo.yTemp4_1KakomPepTag
GROUP BY Tag, Filiale
Order BY Tag, Filiale


/* --5.2 Auswertungsstufe-- Kaufbetrag / Leistung    GESAMT-TAGESWERTE  */

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp5_2GesTagWerte'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp5_2GesTagWerte]

SELECT Tag,  SUM(AStd) AS TagGAStd, 
                  SUM(Menge) AS TagGMenge, SUM(Umsatz)AS TagGUms,
         TagGKbet = CONVERT (NUMERIC(8,3), (CASE WHEN SUM(Menge) <= 0 Then 0 
                 Else ( SUM(Umsatz) / SUM(Menge) )  End)),
         TagGStdUms = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  SUM(AStd) <= 0 Then 0 
                 Else (SUM(Umsatz) / SUM(AStd)) END )),0)
INTO Temp_Hat.dbo.yTemp5_2GesTagWerte
FROM Temp_Hat.dbo.yTemp4_1KakomPepTag
GROUP BY Tag
Order BY Tag




     /* --6.1 Auswertungsstufe-- Kaufbetrag / Leistung     TAGESWERTE  */
SELECT Temp_Hat.dbo.yTemp4_1KakomPepTag.Tag, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Filiale, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.PerNr, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Kassierer, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.NName, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.VName, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.AStd, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Menge, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Umsatz,
   Kaufbet = CONVERT (NUMERIC(8,3), (CASE WHEN  Temp_Hat.dbo.yTemp4_1KakomPepTag.Menge <= 0 Then 0 
        Else ( Temp_Hat.dbo.yTemp4_1KakomPepTag.Umsatz / Temp_Hat.dbo.yTemp4_1KakomPepTag.Menge )  End)),
   StdUmsatz = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  Temp_Hat.dbo.yTemp4_1KakomPepTag.AStd <= 0 Then 0 
        Else Temp_Hat.dbo.yTemp4_1KakomPepTag.Umsatz / Temp_Hat.dbo.yTemp4_1KakomPepTag.AStd  END )),0), 
     Temp_Hat.dbo.yTemp5_1FilTagWerte.TagFAStd, 
    Temp_Hat.dbo.yTemp5_1FilTagWerte.TagFMenge, 
    Temp_Hat.dbo.yTemp5_1FilTagWerte.TagFUms, 
    Temp_Hat.dbo.yTemp5_1FilTagWerte.TagFKbet, 
    Temp_Hat.dbo.yTemp5_1FilTagWerte.TagFStdUms, 
    Temp_Hat.dbo.yTemp5_2GesTagWerte.TagGAStd, 
    Temp_Hat.dbo.yTemp5_2GesTagWerte.TagGMenge, 
    Temp_Hat.dbo.yTemp5_2GesTagWerte.TagGUms, 
    Temp_Hat.dbo.yTemp5_2GesTagWerte.TagGKbet, 
    Temp_Hat.dbo.yTemp5_2GesTagWerte.TagGStdUms
FROM Temp_Hat.dbo.yTemp4_1KakomPepTag INNER JOIN
    Temp_Hat.dbo.yTemp5_1FilTagWerte ON 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Tag = Temp_Hat.dbo.yTemp5_1FilTagWerte.Tag
     AND 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Filiale = Temp_Hat.dbo.yTemp5_1FilTagWerte.Filiale
     INNER JOIN
    Temp_Hat.dbo.yTemp5_2GesTagWerte ON 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Tag = Temp_Hat.dbo.yTemp5_2GesTagWerte.Tag
ORDER BY Temp_Hat.dbo.yTemp4_1KakomPepTag.Tag, 
         Temp_Hat.dbo.yTemp4_1KakomPepTag.Filiale, 
         Temp_Hat.dbo.yTemp4_1KakomPepTag.PerNr, 
         Temp_Hat.dbo.yTemp4_1KakomPepTag.Kassierer

ENDE:
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Gespeicherte Prozedur dbo.CpKakPepRmTagesKaufbLeist    Skriptdatum: 27.08.2007 15:35:31 ******/
/**   CREATE PROCEDURE CpKakPepRmMonatsKaufbLeist AS **/
CREATE PROCEDURE CpKakPepRmTagesKaufbLeist AS 

/*** TÄGL. bzw. MONATL. AUSWERTUNG DER KAUFBETRÄGE UND STUNDENLEISTUNG NACH FILIALEN   ***/
/*** ================================================================================  **/

	/* --1.1 Auswertungsstufe--  Tagessumme aus TabKakomKassierer  */   

/** IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp1_1KakomTag')
DROP TABLE Temp_Hat.dbo.yTemp1_1KakomTag      ***/

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp1_1KakomTag'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp1_1KakomTag]

SELECT dbo.TabKakomKassierer.Tag, 
    dbo.TabKakomKassierer.Filiale, 
    dbo.TabKakomKassierer.Kassierer, 
    dbo.TabKakomKassierer.PersonalNr AS PerNr, 
    MAX(ISNULL(dbo.TabPepPersonalstamm.Nachname,'?')) AS NName, 
    MAX(ISNULL(dbo.TabPepPersonalstamm.Vorname,'?')) AS VName, 
    CONVERT(NUMERIC(9, 3), 
    SUM(ISNULL(dbo.TabKakomKassierer.VerkaufsMenge, 0))) 
    AS Menge, 
    SUM(ISNULL(dbo.TabKakomKassierer.UmsatzBetrag, 0)) 
    AS Umsatz
INTO Temp_Hat.dbo.yTemp1_1KakomTag
FROM dbo.TabKakomKassierer LEFT OUTER JOIN
    dbo.TabPepPersonalstamm ON 
    dbo.TabKakomKassierer.PersonalNr = dbo.TabPepPersonalstamm.Mitarbeiternummer
WHERE (dbo.TabKakomKassierer.TransaktionCode = N'0181') OR
    (dbo.TabKakomKassierer.TransaktionCode = N'0184')
GROUP BY dbo.TabKakomKassierer.Tag, 
    dbo.TabKakomKassierer.Filiale, 
    dbo.TabKakomKassierer.Kassierer, 
    dbo.TabKakomKassierer.PersonalNr
HAVING (Tag > CONVERT(DATETIME, '1998-12-31 00:00:00', 102)) 

ORDER BY 
    dbo.TabKakomKassierer.Tag, 
    dbo.TabKakomKassierer.Filiale,
    dbo.TabKakomKassierer.Kassierer,
    dbo.TabKakomKassierer.PersonalNr
 

	/* --1.2 Auswertungsstufe--  aus TabPepTagZeiten  */

/** IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp1_2PepTag')
DROP TABLE Temp_Hat.dbo.yTemp1_2PepTag **/ 

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp1_2PepTag'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp1_2PepTag]

SELECT Tag, Filiale, CONVERT (nvarchar(4),PerNr) AS PerNr, CONVERT(numeric(9, 3), 
    (CONVERT(numeric(9, 3), LEFT(Arb, 2))* 60 + 
   CONVERT(numeric(9, 3), RIGHT(Arb, 2))) / 60) AS AStd
INTO Temp_Hat.dbo.yTemp1_2PepTag
FROM dbo.TabPepTagZeiten
WHERE (FZeichen = N'~') AND (Filiale > N'9020') 

  AND     (Tag > CONVERT(DATETIME, '1998-12-31 00:00:00', 102))

ORDER BY 
    Tag, 
    Filiale,
    PerNr


	/* --2_1. Auswertungsstufe--  PerNr aus Pep, die nicht in Kakom sind   */

/** IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp2_1PepTag')
DROP TABLE Temp_Hat.dbo.yTemp2_1PepTag  **/

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp2_1PepTag'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp2_1PepTag]

SELECT Tag, Filiale, Kassierer= '00', CONVERT (nvarchar(4),PerNr) AS PerNr, Menge= CONVERT (NUMERIC(9,3),0), Umsatz= $0
INTO Temp_Hat.dbo.yTemp2_1PepTag
FROM Temp_Hat.dbo.yTemp1_2PepTag
WHERE (PerNr NOT IN
        (SELECT PerNr
      FROM Temp_Hat.dbo.yTemp1_1KakomTag
      WHERE Temp_Hat.dbo.yTemp1_1KakomTag.Tag = Temp_Hat.dbo.yTemp1_2PepTag.Tag
            AND 
           Temp_Hat.dbo.yTemp1_1KakomTag.Filiale = Temp_Hat.dbo.yTemp1_2PepTag.Filiale))
ORDER BY 
    Tag, 
    Filiale,
    PerNr


	/* --2_2. Auswertungsstufe--  PerNr, die nicht in Kakom sind mit Namen   */

/** IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp2_2PepTag')
DROP TABLE Temp_Hat.dbo.yTemp2_2PepTag  **/

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp2_2PepTag'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp2_2PepTag]

SELECT Temp_Hat.dbo.yTemp2_1PepTag.Tag, Temp_Hat.dbo.yTemp2_1PepTag.Filiale, 
    Temp_Hat.dbo.yTemp2_1PepTag.Kassierer, Temp_Hat.dbo.yTemp2_1PepTag.PerNr, 
    MAX(ISNULL(dbo.TabPepPersonalstamm.Nachname,'?')) AS NName, 
    MAX(ISNULL(dbo.TabPepPersonalstamm.Vorname,'?')) AS VName, 
    SUM(Temp_Hat.dbo.yTemp2_1PepTag.Menge) AS Menge, 
    SUM(Temp_Hat.dbo.yTemp2_1PepTag.Umsatz) AS Umsatz
INTO Temp_Hat.dbo.yTemp2_2PepTag
FROM Temp_Hat.dbo.yTemp2_1PepTag LEFT OUTER JOIN
    dbo.TabPepPersonalstamm ON 
    Temp_Hat.dbo.yTemp2_1PepTag.PerNr = dbo.TabPepPersonalstamm.Mitarbeiternummer
GROUP BY Temp_Hat.dbo.yTemp2_1PepTag.Tag, 
    Temp_Hat.dbo.yTemp2_1PepTag.Filiale, 
    Temp_Hat.dbo.yTemp2_1PepTag.Kassierer, Temp_Hat.dbo.yTemp2_1PepTag.PerNr


	/* --3.1 Auswertungsstufe--  PerNr, die nicht in Kakom sind mit Namen einfügen  */

INSERT INTO Temp_Hat.dbo.yTemp1_1KakomTag
SELECT *
FROM Temp_Hat.dbo.yTemp2_2PepTag



	/* --4.1 Auswertungsstufe-- Kaufbetrag / Leistung      MITARBEITER-TAGESWERTE  */

/** IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp4_1KakomPepTag')
DROP TABLE Temp_Hat.dbo.yTemp4_1KakomPepTag  **/

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp4_1KakomPepTag'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp4_1KakomPepTag]

SELECT Temp_Hat.dbo.yTemp1_1KakomTag.Tag, 
   /***  { fn Year (Temp_Hat.dbo.yTemp1_1KakomTag.Tag) } AS Jahr, { fn MONTH (Temp_Hat.dbo.yTemp1_1KakomTag.Tag) } AS Monat,  ***/
    Temp_Hat.dbo.yTemp1_1KakomTag.Filiale, 
    Temp_Hat.dbo.yTemp1_1KakomTag.Kassierer, 
    Temp_Hat.dbo.yTemp1_1KakomTag.PerNr, 
    Temp_Hat.dbo.yTemp1_1KakomTag.NName,
    Temp_Hat.dbo.yTemp1_1KakomTag.VName,
    ISNULL(Temp_Hat.dbo.yTemp1_2PepTag.AStd, 0) AS AStd,
    Temp_Hat.dbo.yTemp1_1KakomTag.Menge, 
    Temp_Hat.dbo.yTemp1_1KakomTag.Umsatz
INTO Temp_Hat.dbo.yTemp4_1KakomPepTag
FROM Temp_Hat.dbo.yTemp1_1KakomTag LEFT OUTER JOIN
    Temp_Hat.dbo.yTemp1_2PepTag ON 
    Temp_Hat.dbo.yTemp1_1KakomTag.Tag = Temp_Hat.dbo.yTemp1_2PepTag.Tag AND 
    Temp_Hat.dbo.yTemp1_1KakomTag.Filiale = Temp_Hat.dbo.yTemp1_2PepTag.Filiale AND
    Temp_Hat.dbo.yTemp1_1KakomTag.PerNr = Temp_Hat.dbo.yTemp1_2PepTag.PerNr
ORDER BY 
    Temp_Hat.dbo.yTemp1_1KakomTag.Tag, 
    Temp_Hat.dbo.yTemp1_1KakomTag.Filiale, 
    Temp_Hat.dbo.yTemp1_1KakomTag.Kassierer, 
    Temp_Hat.dbo.yTemp1_1KakomTag.PerNr


/** GOTO M_MONATSWERTE  **/  
 GOTO M_TAGESWERTE  


M_MONATSWERTE:
	/* --5.1 Auswertungsstufe-- Kaufbetrag / Leistung     FILIAL-MONATSWERTE  */

/** IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp5_1FilMonWerte')
DROP TABLE Temp_Hat.dbo.yTemp5_1FilMonWerte **/

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp5_1FilMonWerte'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp5_1FilMonWerte]

SELECT { fn Year (Tag) } AS Jahr, { fn MONTH (Tag) } AS Monat,  Filiale,  SUM(AStd) AS MonFAStd, 
                                                      SUM(Menge) AS MonFMenge, SUM(Umsatz)AS MonFUms,
         MonFKbet = CONVERT (NUMERIC(8,3), (CASE WHEN SUM(Menge) <= 0 Then 0 
                 Else ( SUM(Umsatz) / SUM(Menge) )  End)),
         MonFStdUms = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  SUM(AStd) <= 0 Then 0 
                 Else (SUM(Umsatz) / SUM(AStd)) END )),0)
INTO Temp_Hat.dbo.yTemp5_1FilMonWerte
FROM Temp_Hat.dbo.yTemp4_1KakomPepTag
GROUP BY { fn Year (Tag) } , { fn MONTH(Tag) }, Filiale
Order BY { fn Year (Tag) } , { fn MONTH(Tag) }, Filiale




	    /* --5.2 Auswertungsstufe-- Kaufbetrag / Leistung     MITARBEITER-MONATSWERTE  */

/** IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp5_2MitarbMonWerte')
DROP TABLE Temp_Hat.dbo.yTemp5_2MitarbMonWerte  **/

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.Temp_Hat.dbo.yTemp5_2MitarbMonWerte'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp5_2MitarbMonWerte]

SELECT { fn Year (Tag) } AS Jahr, { fn MONTH (Tag) } AS Monat,  Filiale, PerNr,
                    NName, VName,  SUM(AStd) AS AStd, SUM(Menge) AS Menge, SUM(Umsatz)AS Umsatz , 
        Kaufbet = CONVERT (NUMERIC(8,3), (CASE WHEN SUM(Menge) <= 0 Then 0 
                              Else ( SUM(Umsatz) / SUM(Menge) )  End)),
    StdUmsatz = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  SUM(AStd) <= 0 Then 0 
                              Else (SUM(Umsatz) / SUM(AStd)) END )),0)
INTO Temp_Hat.dbo.yTemp5_2MitarbMonWerte
FROM Temp_Hat.dbo.yTemp4_1KakomPepTag
GROUP BY { fn Year (Tag) } , { fn MONTH(Tag) }, Filiale, PerNr, NName, VName



           /* --5.3 Auswertungsstufe-- Kaufbetrag / Leistung     GESAMT-MONATSWERTE  */

/** IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp5_3GesMonWerte')
DROP TABLE Temp_Hat.dbo.yTemp5_3GesMonWerte **/

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp5_3GesMonWerte'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp5_3GesMonWerte]

SELECT { fn Year (Tag) } AS Jahr, { fn MONTH (Tag) } AS Monat,  SUM(AStd) AS MonGAStd, 
                                                      SUM(Menge) AS MonGMenge, SUM(Umsatz)AS MonGUms,
         MonGKbet = CONVERT (NUMERIC(8,3), (CASE WHEN SUM(Menge) <= 0 Then 0 
                 Else ( SUM(Umsatz) / SUM(Menge) )  End)),
         MonGStdUms = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  SUM(AStd) <= 0 Then 0 
                 Else (SUM(Umsatz) / SUM(AStd)) END )),0)
INTO Temp_Hat.dbo.yTemp5_3GesMonWerte
FROM Temp_Hat.dbo.yTemp4_1KakomPepTag
GROUP BY { fn Year (Tag) } , { fn MONTH(Tag) }
Order BY { fn Year (Tag) } , { fn MONTH(Tag) }




                /* --6.1 Auswertungsstufe-- Kaufbetrag / Leistung MONATSWERTE */

SELECT Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Jahr, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Monat, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Filiale, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.PerNr, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.NName, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.VName, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.AStd, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Menge, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Umsatz, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Kaufbet, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.StdUmsatz, 
    Temp_Hat.dbo.yTemp5_1FilMonWerte.MonFAStd, 
    Temp_Hat.dbo.yTemp5_1FilMonWerte.MonFMenge, 
    Temp_Hat.dbo.yTemp5_1FilMonWerte.MonFUms, 
    Temp_Hat.dbo.yTemp5_1FilMonWerte.MonFKbet, 
    Temp_Hat.dbo.yTemp5_1FilMonWerte.MonFStdUms, 
    Temp_Hat.dbo.yTemp5_3GesMonWerte.MonGAStd, 
    Temp_Hat.dbo.yTemp5_3GesMonWerte.MonGMenge, 
    Temp_Hat.dbo.yTemp5_3GesMonWerte.MonGUms, 
    Temp_Hat.dbo.yTemp5_3GesMonWerte.MonGKbet, 
    Temp_Hat.dbo.yTemp5_3GesMonWerte.MonGStdUms
FROM Temp_Hat.dbo.yTemp5_2MitarbMonWerte INNER JOIN
    Temp_Hat.dbo.yTemp5_1FilMonWerte ON 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Jahr = Temp_Hat.dbo.yTemp5_1FilMonWerte.Jahr
     AND 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Monat = Temp_Hat.dbo.yTemp5_1FilMonWerte.Monat
     AND 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Filiale = Temp_Hat.dbo.yTemp5_1FilMonWerte.Filiale
     INNER JOIN
    Temp_Hat.dbo.yTemp5_3GesMonWerte ON 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Jahr = Temp_Hat.dbo.yTemp5_3GesMonWerte.Jahr
     AND 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Monat = Temp_Hat.dbo.yTemp5_3GesMonWerte.Monat
ORDER BY Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Jahr, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Monat, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.Filiale, 
    Temp_Hat.dbo.yTemp5_2MitarbMonWerte.PerNr

GOTO ENDE

M_TAGESWERTE:
         /* --5.1 Auswertungsstufe-- Kaufbetrag / Leistung     FILIAL-TAGESWERTE  */

/** IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp5_1FilTagWerte')
DROP TABLE Temp_Hat.dbo.yTemp5_1FilTagWerte  **/

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp5_1FilTagWerte'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp5_1FilTagWerte]

SELECT Tag, Filiale,  SUM(AStd) AS TagFAStd, 
                  SUM(Menge) AS TagFMenge, SUM(Umsatz)AS TagFUms,
         TagFKbet = CONVERT (NUMERIC(8,3), (CASE WHEN SUM(Menge) <= 0 Then 0 
                 Else ( SUM(Umsatz) / SUM(Menge) )  End)),
         TagFStdUms = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  SUM(AStd) <= 0 Then 0 
                 Else (SUM(Umsatz) / SUM(AStd)) END )),0)
INTO Temp_Hat.dbo.yTemp5_1FilTagWerte
FROM Temp_Hat.dbo.yTemp4_1KakomPepTag
GROUP BY Tag, Filiale
Order BY Tag, Filiale


/* --5.2 Auswertungsstufe-- Kaufbetrag / Leistung    GESAMT-TAGESWERTE  */

/** IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp5_2GesTagWerte')
DROP TABLE Temp_Hat.dbo.yTemp5_2GesTagWerte  **/

if exists (select * from Temp_Hat.dbo.sysobjects where id = object_id(N'Temp_Hat.dbo.yTemp5_2GesTagWerte'))  /** and OBJECTPROPERTY (id, N'IsUserTable') = 1)  sonst Fehler in Crystall**/
DROP Table [Temp_Hat].[dbo].[yTemp5_2GesTagWerte]

SELECT Tag,  SUM(AStd) AS TagGAStd, 
                  SUM(Menge) AS TagGMenge, SUM(Umsatz)AS TagGUms,
         TagGKbet = CONVERT (NUMERIC(8,3), (CASE WHEN SUM(Menge) <= 0 Then 0 
                 Else ( SUM(Umsatz) / SUM(Menge) )  End)),
         TagGStdUms = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  SUM(AStd) <= 0 Then 0 
                 Else (SUM(Umsatz) / SUM(AStd)) END )),0)
INTO Temp_Hat.dbo.yTemp5_2GesTagWerte
FROM Temp_Hat.dbo.yTemp4_1KakomPepTag
GROUP BY Tag
Order BY Tag




     /* --6.1 Auswertungsstufe-- Kaufbetrag / Leistung     TAGESWERTE  */

SELECT Temp_Hat.dbo.yTemp4_1KakomPepTag.Tag, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Filiale, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.PerNr, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Kassierer, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.NName, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.VName, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.AStd, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Menge, 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Umsatz,
   Kaufbet = CONVERT (NUMERIC(8,3), (CASE WHEN  Temp_Hat.dbo.yTemp4_1KakomPepTag.Menge <= 0 Then 0 
        Else ( Temp_Hat.dbo.yTemp4_1KakomPepTag.Umsatz / Temp_Hat.dbo.yTemp4_1KakomPepTag.Menge )  End)),
   StdUmsatz = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  Temp_Hat.dbo.yTemp4_1KakomPepTag.AStd <= 0 Then 0 
        Else Temp_Hat.dbo.yTemp4_1KakomPepTag.Umsatz / Temp_Hat.dbo.yTemp4_1KakomPepTag.AStd  END )),0), 
     Temp_Hat.dbo.yTemp5_1FilTagWerte.TagFAStd, 
    Temp_Hat.dbo.yTemp5_1FilTagWerte.TagFMenge, 
    Temp_Hat.dbo.yTemp5_1FilTagWerte.TagFUms, 
    Temp_Hat.dbo.yTemp5_1FilTagWerte.TagFKbet, 
    Temp_Hat.dbo.yTemp5_1FilTagWerte.TagFStdUms, 
    Temp_Hat.dbo.yTemp5_2GesTagWerte.TagGAStd, 
    Temp_Hat.dbo.yTemp5_2GesTagWerte.TagGMenge, 
    Temp_Hat.dbo.yTemp5_2GesTagWerte.TagGUms, 
    Temp_Hat.dbo.yTemp5_2GesTagWerte.TagGKbet, 
    Temp_Hat.dbo.yTemp5_2GesTagWerte.TagGStdUms
FROM Temp_Hat.dbo.yTemp4_1KakomPepTag INNER JOIN
    Temp_Hat.dbo.yTemp5_1FilTagWerte ON 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Tag = Temp_Hat.dbo.yTemp5_1FilTagWerte.Tag
     AND 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Filiale = Temp_Hat.dbo.yTemp5_1FilTagWerte.Filiale
     INNER JOIN
    Temp_Hat.dbo.yTemp5_2GesTagWerte ON 
    Temp_Hat.dbo.yTemp4_1KakomPepTag.Tag = Temp_Hat.dbo.yTemp5_2GesTagWerte.Tag
ORDER BY Temp_Hat.dbo.yTemp4_1KakomPepTag.Tag, 
         Temp_Hat.dbo.yTemp4_1KakomPepTag.Filiale, 
         Temp_Hat.dbo.yTemp4_1KakomPepTag.PerNr, 
         Temp_Hat.dbo.yTemp4_1KakomPepTag.Kassierer

ENDE:
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Gespeicherte Prozedur dbo.ErrNameCpKakomPepRmMitarbLeist    Skriptdatum: 27.08.2007 15:35:31 ******/
/*** CREATE PROCEDURE am 27.04.2001 ***/

CREATE PROCEDURE CpKakomPepRmMitarbLeist AS

/*** TAEGL. AUSWERTUNG DER KAUFBETRÄGE UND STUNDENLEISTUNG NACH FILIALEN   ***/
/*** ===========================================================================  ***/

	/* --1.1 Auswertungsstufe--  Tagessumme aus TabKakomKassierer  */   
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp1_1KakomTag')
DROP TABLE yTemp1_1KakomTag

SELECT Tag, Filiale, Kassierer, PersonalNr as PerNr, Max(KassiererName) AS Name, 
  CONVERT (NUMERIC(9,3),(SUM(ISNULL(Verkaufsmenge, 0))))AS Menge, SUM(ISNULL(UmsatzBetrag, 0)) AS Umsatz  
INTO yTemp1_1KakomTag
FROM dbo.TabKakomKassierer
WHERE (TransaktionCode = N'0181') OR
    (TransaktionCode = N'0184')

GROUP BY Tag, Filiale, Kassierer, PersonalNr

  /***  HAVING (Tag > CONVERT(DATETIME, '2000-12-31 00:00:00', 102)) ***/
ORDER BY 
    dbo.TabKakomKassierer.Tag, 
    dbo.TabKakomKassierer.Filiale,
    dbo.TabKakomKassierer.Kassierer,
    dbo.TabKakomKassierer.PersonalNr
 

	/* --1.2 Auswertungsstufe--  aus TabPepTagZeiten  */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp1_2PepTag')
DROP TABLE yTemp1_2PepTag

SELECT Tag, Filiale, CONVERT (nvarchar(4),PerNr) AS PerNr, CONVERT(numeric(9, 3), 
    (CONVERT(numeric(9, 3), LEFT(Arb, 2))* 60 + 
   CONVERT(numeric(9, 3), RIGHT(Arb, 2))) / 60) AS AStd
INTO yTemp1_2PepTag
FROM dbo.TabPepTagZeiten
WHERE (FZeichen = N'~') AND (Filiale > N'9020') 

  /***  AND     (Tag > CONVERT(DATETIME, '2000-12-31 00:00:00', 102))  ***/

ORDER BY 
    Tag, 
    Filiale,
    PerNr


	/* --2_1. Auswertungsstufe--  PerNr aus Pep, die nicht in Kakom sind   */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp2_1PepTag')
DROP TABLE yTemp2_1PepTag

SELECT Tag, Filiale, Kassierer= '00', CONVERT (nvarchar(4),PerNr) AS PerNr, Menge= CONVERT (NUMERIC(9,3),0), Umsatz= $0
INTO yTemp2_1PepTag
FROM dbo.yTemp1_2PepTag
WHERE (PerNr NOT IN
        (SELECT PerNr
      FROM yTemp1_1KakomTag
      WHERE yTemp1_1KakomTag.Tag = dbo.yTemp1_2PepTag.Tag
            AND 
           yTemp1_1KakomTag.Filiale = dbo.yTemp1_2PepTag.Filiale))
ORDER BY 
    Tag, 
    Filiale,
    PerNr


	/* --2_2. Auswertungsstufe--  PerNr, die nicht in Kakom sind mit Namen   */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp2_2PepTag')
DROP TABLE yTemp2_2PepTag

SELECT dbo.yTemp2_1PepTag.Tag, dbo.yTemp2_1PepTag.Filiale, 
    dbo.yTemp2_1PepTag.Kassierer, dbo.yTemp2_1PepTag.PerNr, 
    MAX(dbo.TabPepPersonalstamm.Nachname) AS NName, 
    MAX(dbo.TabPepPersonalstamm.Vorname) AS VName, 
    SUM(dbo.yTemp2_1PepTag.Menge) AS Menge, 
    SUM(dbo.yTemp2_1PepTag.Umsatz) AS Umsatz
INTO yTemp2_2PepTag
FROM dbo.yTemp2_1PepTag LEFT OUTER JOIN
    dbo.TabPepPersonalstamm ON 
    dbo.yTemp2_1PepTag.PerNr = dbo.TabPepPersonalstamm.Mitarbeiternummer
GROUP BY dbo.yTemp2_1PepTag.Tag, 
    dbo.yTemp2_1PepTag.Filiale, 
    dbo.yTemp2_1PepTag.Kassierer, dbo.yTemp2_1PepTag.PerNr


	/* --3.1 Auswertungsstufe--  PerNr, die nicht in Kakom sind mit Namen einfügen  */
INSERT INTO yTemp1_1KakomTag
SELECT *
FROM yTemp2_2PepTag



	/* --4.1 Auswertungsstufe-- Kaufbetrag / Leistung aus yTemp1_1KakomTag  */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp4_1KakomPepTag')
DROP TABLE yTemp4_1KakomPepTag

SELECT dbo.yTemp1_1KakomTag.Tag, 
    dbo.yTemp1_1KakomTag.Filiale, 
    dbo.yTemp1_1KakomTag.Kassierer, 
    dbo.yTemp1_1KakomTag.PerNr, 
    dbo.yTemp1_1KakomTag.Name,
    ISNULL(dbo.yTemp1_2PepTag.AStd, 0)AS AStd,
    dbo.yTemp1_1KakomTag.Menge, 
    dbo.yTemp1_1KakomTag.Umsatz, 
    Kaufbet = CONVERT (NUMERIC(8,3), (CASE WHEN dbo.yTemp1_1KakomTag.Menge <= 0 Then 0 
        Else ( dbo.yTemp1_1KakomTag.Umsatz / dbo.yTemp1_1KakomTag.Menge )  End)),

    StdUmsatz = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  dbo.yTemp1_2PepTag.AStd <= 0 Then 0 
        Else (dbo.yTemp1_1KakomTag.Umsatz / dbo.yTemp1_2PepTag.AStd) END )),0)

  /*** INTO yTemp4_1KakomPepTag  ***/

FROM dbo.yTemp1_1KakomTag LEFT OUTER JOIN
    dbo.yTemp1_2PepTag ON 
    dbo.yTemp1_1KakomTag.Tag = dbo.yTemp1_2PepTag.Tag AND 
    dbo.yTemp1_1KakomTag.Filiale = dbo.yTemp1_2PepTag.Filiale AND
    dbo.yTemp1_1KakomTag.PerNr = dbo.yTemp1_2PepTag.PerNr

ORDER BY 
    dbo.yTemp1_1KakomTag.Tag, 
    dbo.yTemp1_1KakomTag.Filiale, 
    dbo.yTemp1_1KakomTag.Kassierer, 
    dbo.yTemp1_1KakomTag.PerNr



GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

/****** Objekt:  Gespeicherte Prozedur dbo.Err_parmTest NAME    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE PROCEDURE .[parmTest NAME] @STag datetime  AS

  /** CREATE PROCEDURE CpKakNrepParamPepKassier @STag datetime  AS  */

   /**  Declare @Tag datetime **/
   /**  set @Tag='09/10/2001'  **/                                /** Syntax Ok, */
  /** set @Tag=CONVERT(DATETIME, CONVERT(NCHAR(10), getdate()-2, 104))   **/
   /* set @Tag=CONVERT(DATETIME, CONVERT(NCHAR(10), ?, 104))      Syntax Fehler!!!, */
   /* set @Tag= ?  						  Syntax Fehler!!!, */


IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempTabKakomKassierer')
DROP TABLE yTempTabKakomKassierer

SELECT dbo.TabKakomKassierer.Tag, 
    dbo.TabKakomKassierer.Filiale, 
    dbo.TabKakomKassierer.Kasse, 
    dbo.TabKakomKassierer.Kassierer, 
    dbo.TabKakomKassierer.TransaktionCode, 
    dbo.TabKakomKassierer.TransaktBez, 
    dbo.TabKakomKassierer.VerkaufsMenge, 
    dbo.TabKakomKassierer.UmsatzBetrag, 
    dbo.TabKakomKassierer.PersonalNr, 
    dbo.TabPepPersonalstamm.Nachname, 
    dbo.TabPepPersonalstamm.Vorname

INTO yTempTabKakomKassierer

FROM dbo.TabKakomKassierer INNER JOIN
    dbo.TabPepPersonalstamm ON 
    dbo.TabKakomKassierer.PersonalNr = dbo.TabPepPersonalstamm.Mitarbeiternummer

WHERE   ((dbo.TabKakomKassierer.Tag = CONVERT(DATETIME, 
    CONVERT(NCHAR(10),@STag, 104))) and
        (dbo.TabKakomKassierer.TransaktionCode = N'0181') or
      (dbo.TabKakomKassierer.Tag = CONVERT(DATETIME, 
    CONVERT(NCHAR(10),@STag, 104))) and
        (dbo.TabKakomKassierer.TransaktionCode = N'0184')) 


SELECT yTempTabKakomKassierer.Tag, yTempTabKakomKassierer.Filiale, 
    yTempTabKakomKassierer.Kassierer, 
    yTempTabKakomKassierer.NachName, 
    yTempTabKakomKassierer.VorName,
    ISNULL(yTempTabKakomKassierer.PersonalNr,0), 
    SUM(ISNULL(yTempTabKakomKassierer.VerkaufsMenge,0)) AS Kunde, 
    SUM(ISNULL(yTempTabKakomKassierer.UmsatzBetrag,0)) AS Umsatz, 
    Max(ISNULL(TabPepTagZeiten.Arb,0)) AS AZeit,
 
  ISNULL((
    Convert (numeric(9,3),
    (((Convert(numeric(9,3),(Left (Max(TabPepTagZeiten.Arb),2))) * 60)+ 
     ((Convert(numeric(9,3),(Right(Max(TabPepTagZeiten.Arb),2))))))/60))),0) AS AStd,

  ISNULL ((
   Case When  (((Convert(numeric(9,3),(Left (Max(TabPepTagZeiten.Arb),2))) * 60)+ 
     ((Convert(numeric(9,3),(Right(Max(TabPepTagZeiten.Arb),2))))))/60) >0        THEN
    Convert(numeric(9,2), SUM(yTempTabKakomKassierer.UmsatzBetrag) 
    / (Convert (numeric(9,3),
    (((Convert(numeric(9,3),(Left (Max(TabPepTagZeiten.Arb),2))) * 60)+ 
     ((Convert(numeric(9,3),(Right(Max(TabPepTagZeiten.Arb),2))))))/60))))  
      ELSE 0  END),1) AS   StdUmsatz
FROM yTempTabKakomKassierer Left Outer Join 
    TabPepTagZeiten ON 
    yTempTabKakomKassierer.Tag = TabPepTagZeiten.Tag AND 
    yTempTabKakomKassierer.Filiale = TabPepTagZeiten.Filiale AND 
    yTempTabKakomKassierer.PersonalNr = TabPepTagZeiten.PerNr
WHERE (yTempTabKakomKassierer.TransaktionCode = N'0181')
   OR
    (yTempTabKakomKassierer.TransaktionCode = N'0184') 
 		/** Folg.Zeile entfernt, sonst fehlen Werte für PersnalNr. "0"  	
    AND (TabPepTagZeiten.FZeichen = N'~')   **/
GROUP BY yTempTabKakomKassierer.Tag, yTempTabKakomKassierer.Filiale, 
    yTempTabKakomKassierer.Kassierer,
    yTempTabKakomKassierer.PersonalNr,
    yTempTabKakomKassierer.NachName,
    yTempTabKakomKassierer.VorName 
    
HAVING (yTempTabKakomKassierer.Tag = CONVERT(DATETIME, 
    CONVERT(NCHAR(10), @STag, 104))) 

ORDER BY 
    yTempTabKakomKassierer.Tag, 
    yTempTabKakomKassierer.Filiale, 
    yTempTabKakomKassierer.Kassierer
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

/****** Objekt:  Gespeicherte Prozedur dbo.Err_parmTest NAME99    Skriptdatum: 27.08.2007 15:35:31 ******/

CREATE PROCEDURE [parmTest NAME99]  /** @STag datetime **/   AS


Declare @STag datetime
set @STag='09/10/2005' 
                             /** Syntax Ok, */
   /** set @Tag=CONVERT(DATETIME, CONVERT(NCHAR(10), getdate()-2, 104))   **/
   /* set @Tag=CONVERT(DATETIME, CONVERT(NCHAR(10), ?, 104))      Syntax Fehler!!!, */
   /* set @Tag= ?  						  Syntax Fehler!!!, */


IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempTabKakomKassierer')
DROP TABLE yTempTabKakomKassierer

SELECT dbo.TabKakomKassierer.Tag, 
    dbo.TabKakomKassierer.Filiale, 
    dbo.TabKakomKassierer.Kasse, 
    dbo.TabKakomKassierer.Kassierer, 
    dbo.TabKakomKassierer.TransaktionCode, 
    dbo.TabKakomKassierer.TransaktBez, 
    dbo.TabKakomKassierer.VerkaufsMenge, 
    dbo.TabKakomKassierer.UmsatzBetrag, 
    dbo.TabKakomKassierer.PersonalNr, 
    dbo.TabPepPersonalstamm.Nachname, 
    dbo.TabPepPersonalstamm.Vorname

INTO yTempTabKakomKassierer

FROM dbo.TabKakomKassierer INNER JOIN
    dbo.TabPepPersonalstamm ON 
    dbo.TabKakomKassierer.PersonalNr = dbo.TabPepPersonalstamm.Mitarbeiternummer

WHERE   ((dbo.TabKakomKassierer.Tag = CONVERT(DATETIME, 
    CONVERT(NCHAR(10),@STag, 104))) and
        (dbo.TabKakomKassierer.TransaktionCode = N'0181') or
      (dbo.TabKakomKassierer.Tag = CONVERT(DATETIME, 
    CONVERT(NCHAR(10),@STag, 104))) and
        (dbo.TabKakomKassierer.TransaktionCode = N'0184')) 


SELECT yTempTabKakomKassierer.Tag, yTempTabKakomKassierer.Filiale, 
    yTempTabKakomKassierer.Kassierer, 
    yTempTabKakomKassierer.NachName, 
    yTempTabKakomKassierer.VorName,
    ISNULL(yTempTabKakomKassierer.PersonalNr,0)as PersNr, 
    SUM(ISNULL(yTempTabKakomKassierer.VerkaufsMenge,0)) AS Kunde, 
    SUM(ISNULL(yTempTabKakomKassierer.UmsatzBetrag,0)) AS Umsatz, 
    Max(ISNULL(TabPepTagZeiten.Arb,0)) AS AZeit,
 
  ISNULL((
    Convert (numeric(9,3),
    (((Convert(numeric(9,3),(Left (Max(TabPepTagZeiten.Arb),2))) * 60)+ 
     ((Convert(numeric(9,3),(Right(Max(TabPepTagZeiten.Arb),2))))))/60))),0) AS AStd,

  ISNULL ((
   Case When  (((Convert(numeric(9,3),(Left (Max(TabPepTagZeiten.Arb),2))) * 60)+ 
     ((Convert(numeric(9,3),(Right(Max(TabPepTagZeiten.Arb),2))))))/60) >0        THEN
    Convert(numeric(9,2), SUM(yTempTabKakomKassierer.UmsatzBetrag) 
    / (Convert (numeric(9,3),
    (((Convert(numeric(9,3),(Left (Max(TabPepTagZeiten.Arb),2))) * 60)+ 
     ((Convert(numeric(9,3),(Right(Max(TabPepTagZeiten.Arb),2))))))/60))))  
      ELSE 0  END),1) AS   StdUmsatz
FROM yTempTabKakomKassierer Left Outer Join 
    TabPepTagZeiten ON 
    yTempTabKakomKassierer.Tag = TabPepTagZeiten.Tag AND 
    yTempTabKakomKassierer.Filiale = TabPepTagZeiten.Filiale AND 
    yTempTabKakomKassierer.PersonalNr = TabPepTagZeiten.PerNr
WHERE (yTempTabKakomKassierer.TransaktionCode = N'0181')
   OR
    (yTempTabKakomKassierer.TransaktionCode = N'0184') 
 		/** Folg.Zeile entfernt, sonst fehlen Werte für PersnalNr. "0"  	
    AND (TabPepTagZeiten.FZeichen = N'~')   **/
GROUP BY yTempTabKakomKassierer.Tag, yTempTabKakomKassierer.Filiale, 
    yTempTabKakomKassierer.Kassierer,
    yTempTabKakomKassierer.PersonalNr,
    yTempTabKakomKassierer.NachName,
    yTempTabKakomKassierer.VorName 
    
HAVING (yTempTabKakomKassierer.Tag = CONVERT(DATETIME, 
    CONVERT(NCHAR(10), @STag, 104))) 

ORDER BY 
    yTempTabKakomKassierer.Tag, 
    yTempTabKakomKassierer.Filiale, 
    yTempTabKakomKassierer.Kassierer

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

/****** Objekt:  Gespeicherte Prozedur dbo._CpKakomNRepKassier    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE PROCEDURE .[CpKakomNRepKassier] AS
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Gespeicherte Prozedur dbo._CpKakomNRepKassierPep    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE PROCEDURE CpKakomNRepKassierPep  AS 


IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempTabKakomKassierer1_1')
DROP TABLE yTempTabKakomKassierer1_1

SELECT dbo.TabKakomKassierer.Tag, 
    dbo.TabKakomKassierer.Filiale, 
    dbo.TabKakomKassierer.Kasse, 
    dbo.TabKakomKassierer.Kassierer, 
    dbo.TabKakomKassierer.TransaktionCode, 
    dbo.TabKakomKassierer.TransaktBez, 
    dbo.TabKakomKassierer.VerkaufsMenge, 
    dbo.TabKakomKassierer.UmsatzBetrag, 
    dbo.TabKakomKassierer.PersonalNr, 
    dbo.TabPepPersonalstamm.Nachname, 
    dbo.TabPepPersonalstamm.Vorname

INTO yTempTabKakomKassierer1_1

FROM dbo.TabKakomKassierer INNER JOIN
    dbo.TabPepPersonalstamm ON 
    dbo.TabKakomKassierer.PersonalNr = dbo.TabPepPersonalstamm.Mitarbeiternummer

WHERE ((TabKakomKassierer.Tag = CONVERT(DATETIME, 
    CONVERT(NCHAR(10), GETDATE() - 1, 104))) and
        (TabKakomKassierer.TransaktionCode = N'0181') or
      (TabKakomKassierer.Tag = CONVERT(DATETIME, 
    CONVERT(NCHAR(10), GETDATE() - 1, 104))) and
        (TabKakomKassierer.TransaktionCode = N'0184'))



IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempTabKakomKassierer2_1')
DROP TABLE yTempTabKakomKassierer2_1

SELECT Tag, Filiale, Kassierer, SUM(VerkaufsMenge) AS Kunden, 
    SUM(UmsatzBetrag) AS Umsatz, PersonalNr, Nachname, 
    Vorname

INTO yTempTabKakomKassierer2_1

FROM dbo.yTempTabKakomKassierer1_1
GROUP BY Tag, Filiale, Kassierer, PersonalNr, Nachname, Vorname



IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempTabPepTagZeiten1_1')
DROP TABLE yTempTabPepTagZeiten1_1

SELECT Tag, Filiale, PerNr, FZeichen,
    ISNULL((CONVERT(numeric(9, 3), (((CONVERT(numeric(9, 3), 
    (LEFT(MAX(TabPepTagZeiten.Arb), 2))) * 60) 
    + ((CONVERT(numeric(9, 3), (RIGHT(MAX(TabPepTagZeiten.Arb), 
    2)))))) / 60))), 0) AS AStd

INTO yTempTabPepTagZeiten1_1

FROM dbo.TabPepTagZeiten

WHERE (TabPepTagZeiten.Tag = CONVERT(DATETIME, 
    CONVERT(NCHAR(10), GETDATE() - 1, 104))) and  (FZeichen = N'~')

GROUP BY Tag, Filiale, PerNr,FZeichen

Order by Tag, Filiale, PerNr



IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTempTabKakomKassierer3_1')
DROP TABLE yTempTabKakomKassierer3_1

SELECT dbo.yTempTabKakomKassierer2_1.Tag, 
    dbo.yTempTabKakomKassierer2_1.Filiale, 
    dbo.yTempTabKakomKassierer2_1.Kassierer, 
    dbo.yTempTabKakomKassierer2_1.Nachname, 
    dbo.yTempTabKakomKassierer2_1.Vorname, 
    dbo.yTempTabKakomKassierer2_1.PersonalNr, 
    SUM(dbo.yTempTabPepTagZeiten1_1.AStd) AS AStd, 
    SUM(dbo.yTempTabKakomKassierer2_1.Kunden) AS Kunde, 
    SUM(dbo.yTempTabKakomKassierer2_1.Umsatz) AS Umsatz, 
    ISNULL(SUM(dbo.yTempTabKakomKassierer2_1.Umsatz) 
    / SUM(dbo.yTempTabPepTagZeiten1_1.AStd), 0) 
    AS StdUmsatz

 /*** INTO yTempTabKakomKassierer3_1  ***/

FROM dbo.yTempTabKakomKassierer2_1 left Outer JOIN
    dbo.yTempTabPepTagZeiten1_1 ON 
    dbo.yTempTabKakomKassierer2_1.Tag = dbo.yTempTabPepTagZeiten1_1.Tag
     AND 
    dbo.yTempTabKakomKassierer2_1.Filiale = dbo.yTempTabPepTagZeiten1_1.Filiale
     AND 
    dbo.yTempTabKakomKassierer2_1.PersonalNr = dbo.yTempTabPepTagZeiten1_1.PerNr
GROUP BY dbo.yTempTabKakomKassierer2_1.Tag, 
    dbo.yTempTabKakomKassierer2_1.Filiale, 
    dbo.yTempTabKakomKassierer2_1.Kassierer, 
    dbo.yTempTabKakomKassierer2_1.Nachname, 
    dbo.yTempTabKakomKassierer2_1.Vorname, 
    dbo.yTempTabKakomKassierer2_1.PersonalNr

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Gespeicherte Prozedur dbo._CpKakomPepRmFilialeLeist    Skriptdatum: 27.08.2007 15:35:31 ******/
/*** CREATE PROCEDURE am 27.04.2001 ***/

CREATE PROCEDURE CpKakomPepRmFilialeLeist AS


/*** AUSWERTUNG DER KAUFBETRÄGE UND STUNDENLEISTUNG NACH FILIALEN   ***/
/*** ====================================================================  ***/

	/* --1.1 Auswertungsstufe--  dbo.yTemp11KakomTagFilSum   */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp11KakomTagFilSum')
DROP TABLE yTemp11KakomTagFilSum

SELECT Tag, Filiale, Menge=SUM(VerkaufsMenge), 
    Umsatz=SUM(UmsatzBetrag), 
    Kaufbetrag = ISNULL(Convert(numeric(9,3),(SUM(UmsatzBetrag)/ SUM(VerkaufsMenge)) ),0) 
INTO yTemp11KakomTagFilSum
FROM TabKakomKassierer
WHERE (TransaktionCode = N'0181') OR
    (TransaktionCode = N'0184')
GROUP BY Tag, Filiale
ORDER BY 
    TabKakomKassierer.Tag, 
    TabKakomKassierer.Filiale 


	/* --1.2 Auswertungsstufe--  dbo.yTemp12PepTagFil   */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp12PepTagFil')
DROP TABLE yTemp12PepTagFil

SELECT Tag, Filiale, 
       (Convert(numeric(9,3),
      ((Convert(numeric(9,3), Left((TabPepTagZeiten.Arb),2)) * 60)        
   +   (Convert(numeric(9,3),Right((TabPepTagZeiten.Arb),2)) ))/60))  AS AStd
INTO yTemp12PepTagFil
FROM TabPepTagZeiten
WHERE (FZeichen = N'~') AND (Filiale > N'0') 
ORDER BY 
    Tag, 
    Filiale 



	/* --2.1 Auswertungsstufe--  dbo.yTemp21PepTagFilSum   */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp21PepTagFilSum')
DROP TABLE yTemp21PepTagFilSum

SELECT Tag, Filiale, ArbStd= Convert(numeric(9,3),Sum(yTemp12PepTagFil.AStd) )
INTO yTemp21PepTagFilSum
FROM yTemp12PepTagFil
GROUP BY yTemp12PepTagFil.Tag, yTemp12PepTagFil.Filiale



	/* --3.1 Auswertungsstufe--  dbo.yTemp31TagFilKaufbLeist   */
IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp31TagFilKaufbLeist')
DROP TABLE yTemp31TagFilKaufbLeist

SELECT yTemp11KakomTagFilSum.Tag, yTemp11KakomTagFilSum.Filiale, Menge, Umsatz, Kaufbetrag, ISNULL(ArbStd,0)AS ArbStd, 
    /** StdLeist = ISNULL(Convert(numeric(9,3),(Umsatz /ArbStd)),0) **/

    StdUmsatz = ISNULL (CONVERT (NUMERIC(8,3), ( Case When  ArbStd <= 0 Then 0 
        Else (Umsatz / ArbStd) END )),0)


  /**INTO yTemp31TagFilKaufbLeist **/
FROM yTemp21PepTagFilSum RIGHT OUTER JOIN
    yTemp11KakomTagFilSum ON 
    yTemp21PepTagFilSum.Tag = yTemp11KakomTagFilSum.Tag
     AND 
    yTemp21PepTagFilSum.Filiale = yTemp11KakomTagFilSum.Filiale
ORDER BY 
    yTemp11KakomTagFilSum.Tag,
    yTemp11KakomTagFilSum.Filiale 




GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Gespeicherte Prozedur dbo._cpEuroKassenDiff    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE PROCEDURE cpEuroKassenDiff AS


IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ytempLandesDM')
DROP TABLE ytempLandesDM

SELECT Tag, Filiale, TransaktCode, TransaktBez, Transaktion, 
    Kasse, VerkaufsMenge, Umsatzbetrag
INTO ytempLandesDM
FROM TabKakomTransaktion
WHERE   (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10),                     
    GETDATE() - 1, 104))) and (TransaktCode = "0201") 


IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ytempKassenDiff')
DROP TABLE ytempKassenDiff

SELECT Tag, Filiale, TransaktCode, TransaktBez, Transaktion, 
    Kasse, VerkaufsMenge, Umsatzbetrag
INTO ytempKassenDiff
FROM TabKakomTransaktion
WHERE (Tag = CONVERT(DATETIME, CONVERT(NCHAR(10),                     
    GETDATE() - 1, 104))) and (TransaktCode = "0166")

SELECT dbo.ytempKassenDiff.Tag, dbo.ytempKassenDiff.Filiale, 
    dbo.ytempKassenDiff.Kasse, 
    SUM(dbo.ytempKassenDiff.Umsatzbetrag) AS KakomDiff, 
    SUM(dbo.ytempLandesDM.Umsatzbetrag) AS SollDM,

    Differenz=(( SUM(dbo.ytempKassenDiff.Umsatzbetrag)    )-(  SUM(dbo.ytempLandesDM.Umsatzbetrag)    ))

FROM dbo.ytempKassenDiff INNER JOIN
    dbo.ytempLandesDM ON 
    dbo.ytempKassenDiff.Tag = dbo.ytempLandesDM.Tag AND 
    dbo.ytempKassenDiff.Filiale = dbo.ytempLandesDM.Filiale AND 
    dbo.ytempKassenDiff.Kasse = dbo.ytempLandesDM.Kasse
GROUP BY dbo.ytempKassenDiff.Tag, dbo.ytempKassenDiff.Filiale, 
    dbo.ytempKassenDiff.Kasse
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/****** Objekt:  Gespeicherte Prozedur dbo._cpKakRmFilEntwickl    Skriptdatum: 27.08.2007 15:35:31 ******/

/****** Objekt:  Gespeicherte Prozedur dbo.cpKakRmFilEntwickl    Skriptdatum: 28.5.2001 08:37:21 ******/
CREATE PROCEDURE cpKakRmFilEntwickl  AS


  /*** 1. Abfrage liefert alle notwendigen DS als Monatssummen ***/
  /*** =============================================  ***/

IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'yTemp1_Monatssummen')
DROP TABLE dbo.yTemp1_Monatssummen

SELECT { fn YEAR(Tag) } AS Jahr, { fn MONTH(Tag) } AS Monat, 
    Filiale, SUM(VerkaufsMenge) AS Kunden, SUM(Umsatzbetrag) 
    AS Umsatz, ({ fn YEAR(Tag) }-1) AS VorJahr
INTO dbo.yTemp1_Monatssummen
FROM dbo.TabKakomTransaktion
WHERE (TransaktCode = N'0181') OR
    (TransaktCode = N'0184')
GROUP BY { fn YEAR(Tag) }, { fn MONTH(Tag) }, Filiale, ({ fn YEAR(Tag) }-1)
ORDER BY { fn MONTH(Tag) }, Filiale, { fn YEAR(Tag) }


  /*** 2. Abfrage liefert Vorjahresvergleichswerte ***/
  /*** =================================  ***/

SELECT dbo.yTemp1_Monatssummen.Jahr, 
    dbo.yTemp1_Monatssummen.Monat, 
    dbo.yTemp1_Monatssummen.Filiale, 

    dbo.yTemp1_Monatssummen.Kunden, 
    yTemp1_Monatssummen1.Kunden AS Vorj_Kund, 
    
    AbwKun = Case When (dbo.yTemp1_Monatssummen.Kunden        = 0 ) Then 0
                    When (yTemp1_Monatssummen1.Kunden           = 0 ) Then 0
               ELSE  Convert(numeric(9,2),
     (dbo.yTemp1_Monatssummen.Kunden-yTemp1_Monatssummen1.Kunden)*100 /yTemp1_Monatssummen1.Kunden)
    End ,

    dbo.yTemp1_Monatssummen.Umsatz, 
    yTemp1_Monatssummen1.Umsatz AS Vorj_Ums,

    AbwUms = Case When (dbo.yTemp1_Monatssummen.Umsatz        = 0 ) Then 0
                    When (yTemp1_Monatssummen1.Umsatz           = 0 ) Then 0
               ELSE  Convert(numeric(9,2),
     (dbo.yTemp1_Monatssummen.Umsatz-yTemp1_Monatssummen1.Umsatz)*100 /yTemp1_Monatssummen1.Umsatz)
        End ,

    K_betr= Case When (Convert(numeric(9,2), dbo.yTemp1_Monatssummen.Umsatz) = 0 ) Then 0 
                     When (dbo.yTemp1_Monatssummen.Kunden                       = 0 ) Then 0
     ELSE  Convert(numeric(9,2),
     (Convert(numeric(9,2), dbo.yTemp1_Monatssummen.Umsatz)/dbo.yTemp1_Monatssummen.Kunden))
        End ,
    Vorj_Kaufb= Case When (Convert(numeric(9,2), yTemp1_Monatssummen1.Umsatz) = 0 ) Then 0 
                     When (yTemp1_Monatssummen1.Kunden                       = 0 ) Then 0
     ELSE  Convert(numeric(9,2),
     (Convert(numeric(9,2), yTemp1_Monatssummen1.Umsatz)/yTemp1_Monatssummen1.Kunden))
         End,

    AbwKBetr = Convert(numeric(9,2),
               Case When (dbo.yTemp1_Monatssummen.Kunden        = 0 ) Then 0
                    When (yTemp1_Monatssummen1.Kunden           = 0 ) Then 0
                    When (dbo.yTemp1_Monatssummen.Umsatz        = 0 ) Then 0
                    When (yTemp1_Monatssummen1.Umsatz           = 0 ) Then 0
               ELSE  ( Convert(numeric(9,2),
      ((Convert(numeric(9,2), dbo.yTemp1_Monatssummen.Umsatz)/dbo.yTemp1_Monatssummen.Kunden)
    - (Convert(numeric(9,2), yTemp1_Monatssummen1.Umsatz)/yTemp1_Monatssummen1.Kunden)))*100 
    / (Convert(numeric(9,2), yTemp1_Monatssummen1.Umsatz)/yTemp1_Monatssummen1.Kunden))
         End )

FROM dbo.yTemp1_Monatssummen INNER JOIN
    dbo.yTemp1_Monatssummen yTemp1_Monatssummen1 ON 
    dbo.yTemp1_Monatssummen.Monat = yTemp1_Monatssummen1.Monat
     AND 
    dbo.yTemp1_Monatssummen.Filiale = yTemp1_Monatssummen1.Filiale
     AND 
    dbo.yTemp1_Monatssummen.VorJahr = yTemp1_Monatssummen1.Jahr

ORDER BY dbo.yTemp1_Monatssummen.Jahr, 
         dbo.yTemp1_Monatssummen.Monat, 
         dbo.yTemp1_Monatssummen.Filiale
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

/****** Objekt:  Gespeicherte Prozedur dbo.cpArtikelumsatzRetouren    Skriptdatum: 27.08.2007 15:35:31 ******/
CREATE PROCEDURE cpArtikelumsatzRetouren  AS 

SELECT     dbo.TabKakomArtikelumsatz.Tag, dbo.TabKakomArtikelumsatz.Filiale, dbo.TabKakomArtikelumsatz.Artikelnummer, 
                      dbo.TabKakomArtikelumsatz.Artikelbezeichnung, dbo.TabKakomArtikelumsatz.VerkMenge, dbo.TabKakomArtikelumsatz.Umsatz, 
                      dbo.TabKakomArtikelumsatz.Retour, dbo.TabHelpPLUPREIS.Preis_money, CASE ISNULL(dbo.TabHelpPLUPREIS.Preis_money, 0) 
                      WHEN 0 THEN CASE ISNULL(dbo.TabKakomArtikelumsatz.VerkMenge, 0) 
                      WHEN 0 THEN 0 ELSE dbo.TabKakomArtikelumsatz.Umsatz / dbo.TabKakomArtikelumsatz.VerkMenge END ELSE dbo.TabHelpPLUPREIS.Preis_money END
                       AS PreisGefunden, dbo.TabKakomTransaktion.Umsatzbetrag AS TagUmsatz
FROM         dbo.TabKakomArtikelumsatz LEFT OUTER JOIN
                      dbo.TabHelpPLUPREIS ON dbo.TabKakomArtikelumsatz.Artikelnummer = dbo.TabHelpPLUPREIS.PluNr LEFT OUTER JOIN
                      dbo.TabKakomTransaktion ON dbo.TabKakomArtikelumsatz.Tag = dbo.TabKakomTransaktion.Tag AND 
                      dbo.TabKakomArtikelumsatz.Filiale = dbo.TabKakomTransaktion.Filiale
WHERE     (dbo.TabKakomArtikelumsatz.Tag > CONVERT(DATETIME, '2006-01-01 00:00:00', 102)) AND (dbo.TabKakomTransaktion.TransaktCode = N'0111') AND 
                      (dbo.TabKakomArtikelumsatz.Artikelnummer > N'00999')
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

