-- Disclaimer
-- Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
-- Auflagen oder Einschr?nkungen verwendet oder ver?ndert werden.
-- Jedoch wird keine Garantie ?bernommen, dass eine Funktionsf?higkeit mit aktuellen und 
-- zuk?nftigen API-Versionen besteht. Der Autor ?bernimmt daher keine direkte oder indirekte 
-- Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgef?hrt wird.
-- F?r Anregungen und Fragen stehe ich jedoch gerne zur Verf?gung.
-- Thorsten Kansy, www.dotnetconsulting.eu

-- Datenbank wechseln
USE [dotnetconsulting_Videogames];

-- Anzahl in Tabellen ?berpr?fen
SELECT 
(SELECT COUNT(*) FROM [dbo].[Spieler]) AS '#Spieler',
(SELECT COUNT(*) FROM [dbo].[Videospiele]) AS '#Videospiele'

-- Jedes Spiel wird mit jedem Spieler kombiniert ( = 1.000.000 Zeilen)
SELECT  [vs].[ID] AS 'SpielID',
        [vs].[Name] AS 'SpielName',
		[sp].[Name] AS 'Spieler'
FROM    [dbo].[Videospiele] [vs] CROSS JOIN [dbo].[Spieler] [sp];

