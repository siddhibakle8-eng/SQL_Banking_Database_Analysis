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









