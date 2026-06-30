USE Pizza_sales_analysis;
INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES
(102, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', '2025-05-03', '2000-09-20'),
(103, 'Amit', 'Joshi', 'amit@gmail.com', '9123456780', '2025-06-01', '1995-03-15'),
(104, 'Sneha', 'Kulkarni', 'sneha@gmail.com', '9345678912', '2025-06-02', '1999-11-25'),
(105, 'Rohit', 'Verma', 'rohit@gmail.com', '9345678912', '2025-06-03', '1997-08-10');

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES
(101, 'Rahul', 'Sharma', 'rahul.sharma@gmail.com', '9876642015', '2025-04-15', '1998-07-12');

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000);

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 102, 'Current', 40000);

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(203, 103, 'savings', 30000);

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(204, 104, 'Current', 45000);

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(205, 105, 'Savings', 20000);

UPDATE Customers
SET Phone = '9999999999'
WHERE CustomerID = 101;

SELECT * FROM Customers
WHERE CustomerID = 101;

UPDATE Customers
SET Email = 'priya.patil@gmail.com'
WHERE CustomerID = 102;

SELECT * FROM Customers
WHERE CustomerID = 102;

SELECT * FROM Transactions;
DESC Transactions;

INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES
(301, 201, '2025-06-01', 5000, 'Credit'),
(302, 201, '2025-06-02', 2000, 'Debit'),
(303, 202, '2025-06-03', 10000, 'Credit'),
(304, 202, '2025-06-04', 3000, 'Debit'),
(305, 201, '2025-06-05', 1500, 'Debit');

INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(401, 'Andheri Branch', 'Mumbai Andheri East', '9871111111'),
(402, 'Borivali Branch', 'Mumbai Borivali West', '9872222222'),
(403, 'Thane Branch', 'Thane West', '9873333333'),
(404, 'Pune Branch', 'Pune Shivajinagar', '9874444444'),
(405, 'Navi Mumbai Branch', 'Vashi', '9875555555');

CREATE TABLE AccountBranches (
    AccountID INT,
    BranchID INT,
    AssignmentDate DATE
);
INSERT INTO AccountBranches
(AccountID, BranchID, AssignmentDate)
VALUES
(201, 401, '2025-05-01'),
(201, 402, '2025-05-02'),
(202, 403, '2025-05-03'),
(202, 404, '2025-05-04'),
(201, 405, '2025-05-05');

DESC AccountBranches;

INSERT INTO Loans
(LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
VALUES
(501, 101, 500000, 8.5, '2025-01-01', '2030-01-01'),
(502, 102, 300000, 9.0, '2025-02-01', '2029-02-01'),
(503, 101, 200000, 7.5, '2025-03-01', '2028-03-01'),
(504, 102, 150000, 8.0, '2025-04-01', '2027-04-01'),
(505, 101, 100000, 9.5, '2025-05-01', '2026-05-01');

SELECT * FROM Loans;
SELECT LoanID, CustomerID, LoanAmount
FROM Loans;

SELECT * FROM Transactions;
DESC Transactions;

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

SELECT * FROM Customers
WHERE FirstName like 'A%';

SELECT *
FROM Customers
WHERE Email LIKE '%gmail%';

SELECT *
FROM Customers
WHERE LastName LIKE '%kar';

SELECT *
FROM Accounts
WHERE AccountType IN ('Savings', 'Current');

SELECT *
FROM Transactions
WHERE TransactionType IN ('Deposit', 'Withdrawal');

SELECT *
FROM Customers
WHERE CustomerID IN (101,102,105);

SELECT *
FROM Customers
ORDER BY LastName ASC;

SELECT *
FROM Accounts
ORDER BY Balance DESC;

SELECT *
FROM Transactions
ORDER BY TransactionDate DESC;

SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 5;

SELECT *
FROM Customers
LIMIT 3;

SELECT *
FROM Transactions
LIMIT 5 OFFSET 3;

SELECT *
FROM Accounts
WHERE AccountType = 'Savings'
ORDER BY Balance DESC;

SELECT *
FROM Customers
WHERE FirstName LIKE 'S%'
LIMIT 5;

SELECT *
FROM Transactions
WHERE TransactionType IN ('Deposit','Withdrawal')
ORDER BY TransactionDate DESC;


USE Pizza_sales_analysis;

SELECT SUM(Balance) as Total_Balance FROM Accounts;

SELECT SUM(Balance) as Total_Balance FROM Accounts
WHERE AccountType = "Savings";

SELECT max(Balance) as Highest_Balance
 FROM Accounts;
 
 SELECT min(Balance) as Lowest_Balance
 FROM Accounts;
 
 SELECT count(*) as Total_Customer
 FROM Customers;
 
 SELECT AccountType, SUM(Balance) as Total_Balance
 FROM Accounts Group By AccountType;
 SELECT AccountType, max(balance) as Total_Balance
 FROM Accounts Group By AccountType;
 
 SELECT AccountType, Balance FROM Accounts
 WHERE Balance >= 25000;
 
 SELECT AccountType, SUM(Balance) as Total_Balance FROM Accounts
 Group By AccountType
 having sum(Balance) > 25000;
 
 



SELECT avg(Balance) as Average_Balance
 FROM Accounts;
 
CREATE TABLE loan_applications (
    application_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    loan_type VARCHAR(50),
    loan_amount DECIMAL(12,2),
    annual_income DECIMAL(12,2),
    credit_score INT,
    risk_score INT
);

INSERT INTO loan_applications
(application_id, customer_name, loan_type, loan_amount, annual_income, credit_score, risk_score)
VALUES
(1001, 'Amit Sharma', 'Personal Loan', 500000, 600000, 680, 82),
(1002, 'Priya Patel', 'Home Loan', 3500000, 1200000, 750, 45),
(1003, 'Rahul Verma', 'Auto Loan', 800000, 700000, 690, 70),
(1004, 'Sneha Joshi', 'Personal Loan', 300000, 400000, 620, 90),
(1005, 'Nitin Jain', 'Business Loan', 1500000, 1800000, 710, 55),
(1006, 'Kavita Mehta', 'Education Loan', 600000, 500000, 665, 78),
(1007, 'Arjun Desai', 'Home Loan', 4200000, 1500000, 760, 40),
(1008, 'Pooja Kulkarni', 'Auto Loan', 900000, 850000, 705, 62),
(1009, 'Rohan Gupta', 'Personal Loan', 450000, 550000, 640, 88),
(1010, 'Neha Singh', 'Business Loan', 2000000, 2200000, 730, 50),
(1011, 'Vikram Rao', 'Education Loan', 750000, 650000, 675, 72),
(1012, 'Anjali Nair', 'Home Loan', 2800000, 1100000, 745, 48),
(1013, 'Suresh Iyer', 'Auto Loan', 650000, 720000, 695, 67),
(1014, 'Meera Shah', 'Personal Loan', 250000, 380000, 610, 92),
(1015, 'Karan Malhotra', 'Business Loan', 1750000, 1900000, 720, 53);

SELECT * FROM loan_applications;

SELECT application_id,
       customer_name,
       risk_score,
       RANK() OVER (ORDER BY risk_score DESC) AS risk_rank
FROM loan_applications;

SELECT 
    application_id,
    customer_name,
    loan_type,
    risk_score,
    ROW_NUMBER() OVER (
        PARTITION BY loan_type
        ORDER BY risk_score DESC
    ) AS row_num
FROM loan_applications;

SELECT application_id,
    customer_name,
    loan_amount,
    risk_score,
    SUM(loan_amount) OVER (
        ORDER BY risk_score DESC)
        as running_total
FROM loan_applications;

SELECT application_id,
        customer_name,
        risk_score,
        LAG (risk_score) OVER
        (ORDER BY risk_score DESC)
        as Previous_risk_score
FROM loan_applications;

SELECT application_id,
       customer_name,
       risk_score,
       LEAD(risk_score) OVER 
       (ORDER BY risk_score DESC) 
       AS next_risk_score
FROM loan_applications;




