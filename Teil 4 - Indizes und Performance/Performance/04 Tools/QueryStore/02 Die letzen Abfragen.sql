-- Disclaimer
-- Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
-- Auflagen oder Einschränkungen verwendet oder verändert werden.
-- Jedoch wird keine Garantie übernommen, das eine Funktionsfähigkeit mit aktuellen und 
-- zukünftigen API-Versionen besteht. Der Autor übernimmt daher keine direkte oder indirekte 
-- Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgeführt wird.
-- Für Anregungen und Fragen stehe ich jedoch gerne zur Verfügung.
-- Thorsten Kansy, www.dotnetconsulting.eu

USE <DatenbankName, sysname, Datenbank>;
GO

-- Die letzten 10 Abfragen
SELECT TOP 100
        [QUERYTEXT].[query_sql_text] ,
        [QUERY].[query_id] ,
        [QUERYTEXT].[query_text_id] ,
        [QUERYPLAN].[plan_id] ,
        [RUNTIMESTATS].[last_execution_time]
FROM    [sys].[query_store_query_text] AS QUERYTEXT
        INNER JOIN [sys].[query_store_query] AS QUERY ON [QUERYTEXT].[query_text_id] = [QUERY].[query_text_id]
        INNER JOIN [sys].[query_store_plan] AS QUERYPLAN ON [QUERY].[query_id] = [QUERYPLAN].[query_id]
        INNER JOIN [sys].[query_store_runtime_stats] AS RUNTIMESTATS ON [QUERYPLAN].[plan_id] = [RUNTIMESTATS].[plan_id]
ORDER BY [RUNTIMESTATS].[last_execution_time] DESC;