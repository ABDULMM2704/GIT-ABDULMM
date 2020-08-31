DECLARE @TRANSACTIONDATE DATETIME 
SET @TRANSACTIONDATE = '2014-06-30 00:00:00.000'

--4,445,369 RECORDS

SET STATISTICS TIME ON

SELECT * FROM Production.TransactionHistory TH 
	INNER JOIN Production.TransactionHistoryArchive THA ON TH.Quantity=THA.Quantity
	WHERE TH.TransactionDate > @TRANSACTIONDATE

	SET STATISTICS TIME OFF

/*	--(4445369 rows affected)

 SQL Server Execution Times:
   CPU time = 8610 ms,  elapsed time = 68157 ms. */ --1:42MINS


  /* AFTER TUNING 

   
(4445369 rows affected)

 SQL Server Execution Times:
   CPU time = 10719 ms,  elapsed time = 71116 ms. -- 1:11MINS */
