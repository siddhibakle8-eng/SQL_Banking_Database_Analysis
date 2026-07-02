USE Pizza_sales_analysis;

CREATE VIEW Suspicious_Transactions AS
SELECT
      TransactionID,
      CustomerID,
      TransactionType,
      Amount
FROM Transactions_2
WHERE Amount > 25000;

SELECT * FROM Suspicious_Transactions;
    
    INSERT INTO Transactions_2
    (TransactionID, AccountID, CustomerID, TransactionDate, Amount, TransactionType)
    VALUES
 (317, 201, 101, '2025-05-01', 6600.00, 'Deposit'),
(318, 202, 102, '2025-05-02', 61000.00, 'Withdrawal');

CREATE OR REPLACE VIEW Suspicious_Transactions AS 
SELECT
      t.TransactionID,
      CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
      C.BranchName,
      t.TransactionType,
      t.Amount
 FROM Transactions_2 t
INNER JOIN Customers_2 c
      on t.CustomerID = c.CustomerID
WHERE t.Amount > 25000;

SELECT
      TransactionID,
	  CustomerName,
      branchName,
      TransactionType,
      Amount
FROM Suspicious_Transactions
ORDER BY Amount DESC;      





