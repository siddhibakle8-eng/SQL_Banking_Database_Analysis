USE Pizza_sales_analysis;
SELECT * FROM Customers;
SELECT FirstName, LastName, Email, Phone
FROM Customers;

SELECT *
FROM Accounts
WHERE AccountType = 'Savings';

SELECT *
FROM Accounts
WHERE Balance > 25000;
DESC Accounts;

SELECT *
FROM Transactions
WHERE Amount BETWEEN 5000 AND 20000;

SELECT *
FROM Customers
WHERE CustomerID IN (101,102,103);

SELECT *
FROM Customers
WHERE FirstName LIKE 'R%';

SELECT *
FROM Customers
ORDER BY FirstName ASC;

SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 3;

SELECT *
FROM Transactions
LIMIT 5 OFFSET 2;

SELECT * FROM Customers
WHERE Phone is NULL;

SELECT * FROM Customers
WHERE Email IS NOT NULL;

SELECT AccountID, Balance,
CASE
WHEN Balance >= 50000 THEN 'Premium Account'
WHEN Balance <= 25000 THEN 'Standard Account'
ELSE 'Basic Account'
END AS AccountCategory
FROM Accounts;

SELECT AccountID, Balance,
RANK() OVER (ORDER BY BALANCE DESC) AS BalanceRank
FROM Accounts;

SELECT TransactionID,
       Amount,
       SUM(Amount) OVER (ORDER BY TransactionDate) AS RunningTotal
FROM Transactions;

SELECT TransactionID,
       Amount,
       AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;

