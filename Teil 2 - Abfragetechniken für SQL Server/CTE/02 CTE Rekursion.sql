-- Disclaimer:
-- Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
-- Auflagen oder Einschränkungen verwendet oder verändert werden.
-- Es wird keine Garantie übernommen, dass eine Funktionsfähigkeit mit aktuellen und 
-- zukünftigen API-Versionen besteht. Der Autor übernimmt daher keine direkte oder indirekte 
-- Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgeführt wird.
-- Für Anregungen und Fragen steht der Autor gerne zur Verfügung.
-- Thorsten Kansy, www.dotnetconsulting.eu

-- In Datenbank wechseln
USE dotnetconsulting_TSQL2;
GO

-- Spaltennamen werden alternativ im Kopf der CTE festgelegt
WITH [cte] ([ID], [VorgesetzerID], [Name], [Vorname], [Level])
AS
(
	-- Anker der Rekursion
	SELECT [ID], [VorgesetzerID], [Name], [Vorname], 0 FROM [dbo].[Personenverzeichnis] WHERE [VorgesetzerID] IS NULL
	
	UNION ALL

	-- Rekursion
	SELECT [pv].[ID], [pv].[VorgesetzerID], [pv].[Name], [pv].[Vorname], 	
	[cte].[Level] + 1 FROM [dbo].[Personenverzeichnis] [pv] INNER JOIN [cte]
	ON [cte].[ID] = [pv].[VorgesetzerID]
)
SELECT * FROM [cte]
ORDER BY [Level] ASC;

-- Alternative ohne Spaltennamen im Kopf der CTE
-- Die Namen werden durch die erste Abfrage in der ersten CTE bestimmt
WITH [cte]
AS
(
	-- Anker der Rekursion
	SELECT *, 0 AS [Level] FROM [dbo].[Personenverzeichnis] WHERE [VorgesetzerID] IS NULL

	UNION ALL

	-- Rekursion
	SELECT [pv].*, [cte].[Level]+ 1 FROM [dbo].[Personenverzeichnis] [pv] INNER JOIN [cte]
	ON [cte].[ID] = [pv].[VorgesetzerID]
)
SELECT * FROM [cte]
ORDER BY [Level] ASC;

-- Soll die Tiefe der Rekursion begrenzt werden, so kann dies per MAXRECURSION geschehen
-- Bei überschreiten wird ein Fehler ausgelöst
WITH [cte]
AS
(
	-- Anker der Rekursion
	SELECT *, 0 AS [Level] FROM [dbo].[Personenverzeichnis] WHERE [VorgesetzerID] IS NULL
	
	UNION ALL

	-- Rekursion
	SELECT [pv].*, [cte].[Level]+ 1 FROM [dbo].[Personenverzeichnis] [pv] INNER JOIN [cte]
	ON [cte].[ID] = [pv].[VorgesetzerID]
)
SELECT * FROM [cte]
OPTION (MAXRECURSION 100); -- 0 oder 32767 stehen für die maximale Tiefe von 32767