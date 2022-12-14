-- Disclaimer:
-- Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
-- Auflagen oder Einschränkungen verwendet oder verändert werden.
-- Es wird keine Garantie übernommen, dass eine Funktionsfähigkeit mit aktuellen und 
-- zukünftigen API-Versionen besteht. Der Autor übernimmt daher keine direkte oder indirekte 
-- Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgeführt wird.
-- Für Anregungen und Fragen steht der Autor gerne zur Verfügung.
-- Thorsten Kansy, www.dotnetconsulting.eu

-- Datenbank (erneut) anlegen und wechseln
:SETVAR dbname dotnetconsulting_PartitionDB
USE [master];
IF EXISTS (SELECT * FROM [sys].[databases] WHERE [name] = '$(dbname)')
BEGIN
	ALTER DATABASE [$(dbname)] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE [$(dbname)];
	PRINT '''$(dbname)''-Datenbank gelöscht';
END
GO
CREATE DATABASE [$(dbname)];
GO


GO
ALTER DATABASE [$(dbname)] ADD FILEGROUP [FilegroupArchiv1]
GO
ALTER DATABASE [$(dbname)] ADD FILE ( NAME = N'Archiv1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\[$(dbname)]_Archiv1.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FilegroupArchiv1]
GO

ALTER DATABASE [$(dbname)] ADD FILEGROUP [FilegroupArchiv2]
GO
ALTER DATABASE [$(dbname)] ADD FILE ( NAME = N'Archiv2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\[$(dbname)]_Archiv2.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FilegroupArchiv2]
GO

ALTER DATABASE [$(dbname)] ADD FILEGROUP [FilegroupArchiv3]
GO
ALTER DATABASE [$(dbname)] ADD FILE ( NAME = N'Archiv3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\[$(dbname)]_Archiv3.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FilegroupArchiv3]
GO

ALTER DATABASE [$(dbname)] ADD FILEGROUP [FilegroupArchiv4]
GO
ALTER DATABASE [$(dbname)] ADD FILE ( NAME = N'Archiv4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\[$(dbname)]_Archiv4.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FilegroupArchiv4]
GO

ALTER DATABASE [$(dbname)] ADD FILEGROUP [FilegroupArchiv5]
GO
ALTER DATABASE [$(dbname)] ADD FILE ( NAME = N'Archiv5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\[$(dbname)]_Archiv5.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FilegroupArchiv5]
GO

ALTER DATABASE [$(dbname)] ADD FILEGROUP [FilegroupArchiv6]
GO
ALTER DATABASE [$(dbname)] ADD FILE ( NAME = N'Archiv6', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\[$(dbname)]_Archiv6.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FilegroupArchiv6]
GO

ALTER DATABASE [$(dbname)] ADD FILEGROUP [FilegroupArchiv7]
GO
ALTER DATABASE [$(dbname)] ADD FILE ( NAME = N'Archiv7', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\[$(dbname)]_Archiv7.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FilegroupArchiv7]
GO

ALTER DATABASE [$(dbname)] ADD FILEGROUP [FilegroupArchiv8]
GO
ALTER DATABASE [$(dbname)] ADD FILE ( NAME = N'Archiv8', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\[$(dbname)]_Archiv8.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FilegroupArchiv8]
GO

ALTER DATABASE [$(dbname)] ADD FILEGROUP [FilegroupArchiv9]
GO
ALTER DATABASE [$(dbname)] ADD FILE ( NAME = N'Archiv9', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\[$(dbname)]_Archiv9.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FilegroupArchiv9]
GO

ALTER DATABASE [$(dbname)] ADD FILEGROUP [FilegroupArchiv10]
GO
ALTER DATABASE [$(dbname)] ADD FILE ( NAME = N'Archiv10', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\[$(dbname)]_Archiv10.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FilegroupArchiv10]
GO

USE [$(dbname)];
PRINT '''$(dbname)''-Datenbank erstellt und gewechselt';
