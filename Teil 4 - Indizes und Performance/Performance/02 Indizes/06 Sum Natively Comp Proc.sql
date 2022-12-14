-- Disclaimer:
-- Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
-- Auflagen oder Einschränkungen verwendet oder verändert werden.
-- Es wird keine Garantie übernommen, dass eine Funktionsfähigkeit mit aktuellen und 
-- zukünftigen API-Versionen besteht. Der Autor übernimmt daher keine direkte oder indirekte 
-- Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgeführt wird.
-- Für Anregungen und Fragen steht der Autor gerne zur Verfügung.
-- Thorsten Kansy, www.dotnetconsulting.eu

-- Datenbank wechseln
USE [dotnetconsulting_Indizes];
GO

-- Leider werden viele Funktionalitäten und Funktionen für Natively Compiled Procedures 
-- nicht unterstützt. Hier ist es die LEFT()-Funktion.
CREATE OR ALTER PROCEDURE dbo.QueryProductverzeichnisInMemoryTest1
	@EANGroup CHAR(2)
WITH NATIVE_COMPILATION, 
	SCHEMABINDING, 
	EXECUTE AS CALLER
AS 
BEGIN ATOMIC WITH (TRANSACTION ISOLATION LEVEL = SNAPSHOT, LANGUAGE = N'us_english')
	SELECT LEFT([EAN], 2), SUM(Preis) FROM [dbo].[ProduktverzeichnisInMemory]
	WHERE LEFT([EAN], 2) = @EANGroup
	GROUP BY LEFT([EAN], 2)
	ORDER BY 1 ASC;
END;


GO
CREATE OR ALTER PROCEDURE dbo.QueryProductverzeichnisInMemoryTest2
WITH NATIVE_COMPILATION, 
	SCHEMABINDING
AS 
BEGIN ATOMIC WITH (TRANSACTION ISOLATION LEVEL = SNAPSHOT, LANGUAGE = N'us_english')
	SELECT SUM(Preis) FROM [dbo].[ProduktverzeichnisInMemory];
END;
GO

CREATE OR ALTER PROCEDURE dbo.QueryProductverzeichnisInMemoryTest3
AS 
BEGIN 
	SELECT SUM(Preis) FROM [dbo].[ProduktverzeichnisInMemory];
END;
GO

-- Testläufe mit Stoppuhr
SET STATISTICS TIME ON;
EXEC dbo.QueryProductverzeichnisInMemoryTest2
SET STATISTICS TIME OFF;

SET STATISTICS TIME ON;
EXEC dbo.QueryProductverzeichnisInMemoryTest3
SET STATISTICS TIME OFF;

SET STATISTICS TIME ON;
SELECT SUM(Preis) FROM [dbo].[ProduktverzeichnisInMemory]
SET STATISTICS TIME OFF;


   

