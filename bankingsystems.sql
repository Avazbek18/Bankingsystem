create database Banking

use Banking

CREATE TABLE staging_Customers (
    CustomerID INT,
    FullName VARCHAR(100),
    DOB DATE,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(50),
    Address VARCHAR(255),
    NationalID BIGINT,
    TaxID BIGINT,
    EmploymentStatus varchar(50),
    AnnualIncome DECIMAL(18,2),
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);
CREATE TABLE staging_Branches (
    BranchID INT,
    BranchName VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    ManagerID INT,
    ContactNumber VARCHAR(50)
);
-- 3. Employees
CREATE TABLE staging_Employees (
    EmployeeID INT,
    BranchID INT,
    FullName VARCHAR(100),
    Position VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(18,2),
    HireDate DATE,
    Status VARCHAR(20)
);
-- 4. Accounts
CREATE TABLE staging_Accounts (
    AccountID INT,
    CustomerID INT,
    AccountType VARCHAR(50),
    Balance DECIMAL(18,2),
    Currency VARCHAR(10),
    Status VARCHAR(20),
    BranchID INT,
    CreatedDate DATE
);
-- 5. Transactions
CREATE TABLE staging_Transactions (
    TransactionID INT,
    AccountID INT,
    TransactionType VARCHAR(50),
    Amount DECIMAL(18,2),
    Currency VARCHAR(10),
    Date DATETIME,
    Status VARCHAR(20),
    ReferenceNo VARCHAR(50)
);

-- 6. CreditCards
CREATE TABLE staging_CreditCards (
    CardID INT,
    CustomerID INT,
    CardNumber VARCHAR(30),
    CardType VARCHAR(20),
    CVV VARCHAR(10),
    ExpiryDate DATE,
    Limit DECIMAL(18,2),
    Status VARCHAR(20)
);

-- 7. CreditCardTransactions
CREATE TABLE staging_CreditCardTransactions (
    TransactionID INT,
    CardID INT,
    Merchant VARCHAR(100),
    Amount DECIMAL(18,2),
    Currency VARCHAR(10),
    Date DATETIME,
    Status VARCHAR(20)
);

-- 8. OnlineBankingUsers
CREATE TABLE staging_OnlineBankingUsers (
    UserID INT,
    CustomerID INT,
    Username VARCHAR(50),
    PasswordHash VARCHAR(255),
    LastLogin DATETIME
);

-- 9. BillPayments
CREATE TABLE staging_BillPayments (
    PaymentID INT,
    CustomerID INT,
    BillerName VARCHAR(100),
    Amount DECIMAL(18,2),
    Date DATETIME,
    Status VARCHAR(20)
);

-- 10. MobileBankingTransactions
CREATE TABLE staging_MobileBankingTransactions (
    TransactionID INT,
    CustomerID INT,
    DeviceID VARCHAR(100),
    AppVersion VARCHAR(20),
    TransactionType VARCHAR(50),
    Amount DECIMAL(18,2),
    Date DATETIME
);

-- 11. Loans
CREATE TABLE staging_Loans (
    LoanID INT,
    CustomerID INT,
    LoanType VARCHAR(50),
    Amount DECIMAL(18,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    Status VARCHAR(20)
);

-- 12. LoanPayments
CREATE TABLE staging_LoanPayments (
    PaymentID INT,
    LoanID INT,
    AmountPaid DECIMAL(18,2),
    PaymentDate DATE,
    RemainingBalance DECIMAL(18,2)
);

-- 13. CreditScores
CREATE TABLE staging_CreditScores (
    CustomerID INT,
    CreditScore INT,
    UpdatedAt DATETIME
);

-- 14. DebtCollection
CREATE TABLE staging_DebtCollection (
    DebtID INT,
    CustomerID INT,
    AmountDue DECIMAL(18,2),
    DueDate DATE,
    CollectorAssigned VARCHAR(100)
);

-- 15. KYC
CREATE TABLE staging_KYC (
    KYCID INT,
    CustomerID INT,
    DocumentType VARCHAR(50),
    DocumentNumber VARCHAR(50),
    VerifiedBy VARCHAR(100)
);

-- 16. FraudDetection
CREATE TABLE staging_FraudDetection (
    FraudID INT,
    CustomerID INT,
    TransactionID INT,
    RiskLevel VARCHAR(20),
    ReportedDate DATE
);

-- 17. AML Cases
CREATE TABLE staging_AML_Cases (
    CaseID INT,
    CustomerID INT,
    CaseType VARCHAR(50),
    Status VARCHAR(20),
    InvestigatorID INT
);

-- 18. RegulatoryReports
CREATE TABLE staging_RegulatoryReports (
    ReportID INT,
    ReportType VARCHAR(100),
    SubmissionDate DATE
);

-- 19. Departments
CREATE TABLE staging_Departments (
    DepartmentID INT,
    DepartmentName VARCHAR(100),
    ManagerID INT
);

-- 20. Salaries
CREATE TABLE staging_Salaries (
    SalaryID INT,
    EmployeeID INT,
    BaseSalary DECIMAL(18,2),
    Bonus DECIMAL(18,2),
    Deductions DECIMAL(18,2),
    PaymentDate DATE
);

-- 21. EmployeeAttendance
CREATE TABLE staging_EmployeeAttendance (
    AttendanceID INT,
    EmployeeID INT,
    CheckInTime DATETIME,
    CheckOutTime DATETIME,
    TotalHours DECIMAL(5,2)
);

-- 22. Investments
CREATE TABLE staging_Investments (
    InvestmentID INT,
    CustomerID INT,
    InvestmentType VARCHAR(50),
    Amount DECIMAL(18,2),
    ROI DECIMAL(5,2),
    MaturityDate DATE
);

-- 23. StockTradingAccounts
CREATE TABLE staging_StockTradingAccounts (
    AccountID INT,
    CustomerID INT,
    BrokerageFirm VARCHAR(100),
    TotalInvested DECIMAL(18,2),
    CurrentValue DECIMAL(18,2)
);

-- 24. ForeignExchange
CREATE TABLE staging_ForeignExchange (
    FXID INT,
    CustomerID INT,
    CurrencyPair VARCHAR(20),
    ExchangeRate DECIMAL(10,4),
    AmountExchanged DECIMAL(18,2)
);

-- 25. InsurancePolicies
CREATE TABLE staging_InsurancePolicies (
    PolicyID INT,
    CustomerID INT,
    InsuranceType VARCHAR(50),
    PremiumAmount DECIMAL(18,2),
    CoverageAmount DECIMAL(18,2)
);

-- 26. Claims
CREATE TABLE staging_Claims (
    ClaimID INT,
    PolicyID INT,
    ClaimAmount DECIMAL(18,2),
    Status VARCHAR(20),
    FiledDate DATE
);

-- 27. UserAccessLogs
CREATE TABLE staging_UserAccessLogs (
    LogID INT,
    UserID INT,
    ActionType VARCHAR(50),
    Timestamp DATETIME
);

-- 28. CyberSecurityIncidents
CREATE TABLE staging_CyberSecurityIncidents (
    IncidentID INT,
    AffectedSystem VARCHAR(50),
    ReportedDate DATE,
    ResolutionStatus VARCHAR(50)
);

-- 29. Merchants
CREATE TABLE staging_Merchants (
    MerchantID INT,
    MerchantName VARCHAR(100),
    Industry VARCHAR(50),
    Location VARCHAR(100),
    CustomerID INT
);

-- 30. MerchantTransactions
CREATE TABLE staging_MerchantTransactions (
    TransactionID INT,
    MerchantID INT,
    Amount DECIMAL(18,2),
    PaymentMethod VARCHAR(50),
    Date DATE
);

BULK INSERT staging_Customers
FROM 'C:\Users\Musaffa\Desktop\Banking\output\Customers.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

Select * from staging_Customers

--2
BULK INSERT staging_Branches
FROM 'C:\Users\Musaffa\Desktop\Banking\output\Branches.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--3
BULK INSERT staging_Employees
FROM 'C:\Users\Musaffa\Desktop\Banking\output\Employees.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--4
BULK INSERT staging_Accounts
FROM 'C:\Users\Musaffa\Desktop\Banking\output\Accounts.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--5
BULK INSERT staging_Transactions
FROM 'C:\Users\Musaffa\Desktop\Banking\output\Transactions.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--6
BULK INSERT staging_CreditCards
FROM 'C:\Users\Musaffa\Desktop\Banking\output\CreditCards.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--7
BULK INSERT staging_CreditCardTransactions
FROM 'C:\Users\Musaffa\Desktop\Banking\output\CreditCardTransactions.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--8
BULK INSERT staging_OnlineBankingUsers
FROM 'C:\Users\Musaffa\Desktop\Banking\output\OnlineBankingUsers.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--9
BULK INSERT staging_BillPayments
FROM 'C:\Users\Musaffa\Desktop\Banking\output\BillPayments.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--10
BULK INSERT staging_MobileBankingTransactions
FROM 'C:\Users\Musaffa\Desktop\Banking\output\MobileBankingTransactions.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--11
BULK INSERT staging_Loans
FROM 'C:\Users\Musaffa\Desktop\Banking\output\Loans.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--12
BULK INSERT staging_LoanPayments
FROM 'C:\Users\Musaffa\Desktop\Banking\output\LoanPayments.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--13
BULK INSERT staging_CreditScores
FROM 'C:\Users\Musaffa\Desktop\Banking\output\CreditScores.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--14
BULK INSERT staging_DebtCollection
FROM 'C:\Users\Musaffa\Desktop\Banking\output\DebtCollection.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--15
BULK INSERT staging_KYC
FROM 'C:\Users\Musaffa\Desktop\Banking\output\KYC.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--16
BULK INSERT staging_FraudDetection
FROM 'C:\Users\Musaffa\Desktop\Banking\output\FraudDetection.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--17
BULK INSERT staging_AML_Cases
FROM 'C:\Users\Musaffa\Desktop\Banking\output\AML_Cases.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--18
BULK INSERT staging_RegulatoryReports
FROM 'C:\Users\Musaffa\Desktop\Banking\output\RegulatoryReports.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--19
BULK INSERT staging_Departments
FROM 'C:\Users\Musaffa\Desktop\Banking\output\Departments.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--20
BULK INSERT staging_Salaries
FROM 'C:\Users\Musaffa\Desktop\Banking\output\Salaries.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--21
BULK INSERT staging_EmployeeAttendance
FROM 'C:\Users\Musaffa\Desktop\Banking\output\EmployeeAttendance.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--22
BULK INSERT staging_Investments
FROM 'C:\Users\Musaffa\Desktop\Banking\output\Investments.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--23
BULK INSERT staging_StockTradingAccounts
FROM 'C:\Users\Musaffa\Desktop\Banking\output\StockTradingAccounts.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--24
BULK INSERT staging_ForeignExchange
FROM 'C:\Users\Musaffa\Desktop\Banking\output\ForeignExchange.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--25
BULK INSERT staging_InsurancePolicies
FROM 'C:\Users\Musaffa\Desktop\Banking\output\InsurancePolicies.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--26
BULK INSERT staging_Claims
FROM 'C:\Users\Musaffa\Desktop\Banking\output\Claims.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--27
BULK INSERT staging_UserAccessLogs
FROM 'C:\Users\Musaffa\Desktop\Banking\output\UserAccessLogs.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--28
BULK INSERT staging_CyberSecurityIncidents
FROM 'C:\Users\Musaffa\Desktop\Banking\output\CyberSecurityIncidents.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--29
BULK INSERT staging_Merchants
FROM 'C:\Users\Musaffa\Desktop\Banking\output\Merchants.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
--30
BULK INSERT staging_MerchantTransactions
FROM 'C:\Users\Musaffa\Desktop\Banking\output\MerchantTransactions.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

--1
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    DOB DATE,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(50),
    Address VARCHAR(255),
    NationalID BIGINT,
    TaxID BIGINT,
    EmploymentStatus VARCHAR(50),
    AnnualIncome DECIMAL(18,2),
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);
--2
CREATE TABLE Branches (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    ManagerID INT,
    ContactNumber VARCHAR(50)
);
--3
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    BranchID INT FOREIGN KEY REFERENCES Branches(BranchID),
    FullName VARCHAR(100),
    Position VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(18,2),
    HireDate DATE,
    Status VARCHAR(50)
);
--4
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    AccountType VARCHAR(50),
    Balance DECIMAL(18,2),
    Currency VARCHAR(10),
    Status VARCHAR(50),
    BranchID INT FOREIGN KEY REFERENCES Branches(BranchID),
    CreatedDate DATE
);
--5
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT FOREIGN KEY REFERENCES Accounts(AccountID),
    TransactionType VARCHAR(50),
    Amount DECIMAL(18,2),
    Currency VARCHAR(10),
    Date DATE,
    Status VARCHAR(50),
    ReferenceNo VARCHAR(100)
);
--6
CREATE TABLE CreditCards (
    CardID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    CardNumber VARCHAR(20),
    CardType VARCHAR(50),
    CVV VARCHAR(10),
    ExpiryDate DATE,
    [Limit] DECIMAL(18,2),
    Status VARCHAR(50)
);
--7
CREATE TABLE CreditCardTransactions (
    TransactionID INT PRIMARY KEY,
    CardID INT FOREIGN KEY REFERENCES CreditCards(CardID),
    Merchant VARCHAR(100),
    Amount DECIMAL(18,2),
    Currency VARCHAR(10),
    Date DATE,
    Status VARCHAR(50)
);
--8
CREATE TABLE OnlineBankingUsers (
    UserID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    Username VARCHAR(100),
    PasswordHash VARCHAR(255),
    LastLogin DATETIME
);
--9
CREATE TABLE BillPayments (
    PaymentID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    BillerName VARCHAR(100),
    Amount DECIMAL(18,2),
    Date DATE,
    Status VARCHAR(50)
);
--10
CREATE TABLE MobileBankingTransactions (
    TransactionID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    DeviceID VARCHAR(100),
    AppVersion VARCHAR(50),
    TransactionType VARCHAR(50),
    Amount DECIMAL(18,2),
    Date DATE
);
--11
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    LoanType VARCHAR(50),
    Amount DECIMAL(18,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    Status VARCHAR(50)
);
--12
CREATE TABLE LoanPayments (
    PaymentID INT PRIMARY KEY,
    LoanID INT FOREIGN KEY REFERENCES Loans(LoanID),
    AmountPaid DECIMAL(18,2),
    PaymentDate DATE,
    RemainingBalance DECIMAL(18,2)
);
--13
CREATE TABLE CreditScores (
    CustomerID INT PRIMARY KEY FOREIGN KEY REFERENCES Customers(CustomerID),
    CreditScore INT,
    UpdatedAt DATETIME
);
--14
CREATE TABLE DebtCollection (
    DebtID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    AmountDue DECIMAL(18,2),
    DueDate DATE,
    CollectorAssigned VARCHAR(100)
);
--15
CREATE TABLE KYC (
    KYCID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    DocumentType VARCHAR(50),
    DocumentNumber VARCHAR(50),
    VerifiedBy VARCHAR(100)
);
--16
CREATE TABLE FraudDetection (
    FraudID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    TransactionID INT,
    RiskLevel VARCHAR(50),
    ReportedDate DATE
);
--17
CREATE TABLE AML_Cases (
    CaseID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    CaseType VARCHAR(50),
    Status VARCHAR(50),
    InvestigatorID INT
);
--18
CREATE TABLE RegulatoryReports (
    ReportID INT PRIMARY KEY,
    ReportType VARCHAR(50),
    SubmissionDate DATE
);
--19
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    ManagerID INT
);
--20
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY,
    EmployeeID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
    BaseSalary DECIMAL(18,2),
    Bonus DECIMAL(18,2),
    Deductions DECIMAL(18,2),
    PaymentDate DATE
);
--21
CREATE TABLE EmployeeAttendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
    CheckInTime DATETIME,
    CheckOutTime DATETIME,
    TotalHours DECIMAL(5,2)
);
--22
CREATE TABLE Investments (
    InvestmentID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    InvestmentType VARCHAR(50),
    Amount DECIMAL(18,2),
    ROI DECIMAL(5,2),
    MaturityDate DATE
);
--23
CREATE TABLE StockTradingAccounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    BrokerageFirm VARCHAR(100),
    TotalInvested DECIMAL(18,2),
    CurrentValue DECIMAL(18,2)
);
--24
CREATE TABLE ForeignExchange (
    FXID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    CurrencyPair VARCHAR(20),
    ExchangeRate DECIMAL(10,4),
    AmountExchanged DECIMAL(18,2)
);
--25
CREATE TABLE InsurancePolicies (
    PolicyID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    InsuranceType VARCHAR(50),
    PremiumAmount DECIMAL(18,2),
    CoverageAmount DECIMAL(18,2)
);
--26
CREATE TABLE Claims (
    ClaimID INT PRIMARY KEY,
    PolicyID INT FOREIGN KEY REFERENCES InsurancePolicies(PolicyID),
    ClaimAmount DECIMAL(18,2),
    Status VARCHAR(50),
    FiledDate DATE
);
--27
CREATE TABLE UserAccessLogs (
    LogID INT PRIMARY KEY,
    UserID INT,
    ActionType VARCHAR(50),
    Timestamp DATETIME
);
--28
CREATE TABLE CyberSecurityIncidents (
    IncidentID INT PRIMARY KEY,
    AffectedSystem VARCHAR(100),
    ReportedDate DATE,
    ResolutionStatus VARCHAR(50)
);
--29
CREATE TABLE Merchants (
    MerchantID INT PRIMARY KEY,
    MerchantName VARCHAR(100),
    Industry VARCHAR(50),
    Location VARCHAR(100),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID)
);
--30
CREATE TABLE MerchantTransactions (
    TransactionID INT PRIMARY KEY,
    MerchantID INT FOREIGN KEY REFERENCES Merchants(MerchantID),
    Amount DECIMAL(18,2),
    PaymentMethod VARCHAR(50),
    Date DATE
);

--1
INSERT INTO Customers (CustomerID, FullName, DOB, Email, PhoneNumber, Address, NationalID, TaxID, EmploymentStatus, AnnualIncome, CreatedAt, UpdatedAt)
SELECT CustomerID, FullName, DOB, Email, PhoneNumber, Address, NationalID, TaxID, EmploymentStatus, AnnualIncome, CreatedAt, UpdatedAt FROM staging_Customers;
Select * from Customers

--2
INSERT INTO Branches (BranchID, BranchName, Address, City, State, Country, ManagerID, ContactNumber)
SELECT BranchID, BranchName, Address, City, State, Country, ManagerID, ContactNumber FROM staging_Branches;
--3
INSERT INTO Employees (EmployeeID, BranchID, FullName, Position, Department, Salary, HireDate, Status)
SELECT EmployeeID, BranchID, FullName, Position, Department, Salary, HireDate, Status FROM staging_Employees;
--4
INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, Currency, Status, BranchID, CreatedDate)
SELECT AccountID, CustomerID, AccountType, Balance, Currency, Status, BranchID, CreatedDate FROM staging_Accounts;
--5
INSERT INTO Transactions (TransactionID, AccountID, TransactionType, Amount, Currency, Date, Status, ReferenceNo)
SELECT TransactionID, AccountID, TransactionType, Amount, Currency, Date, Status, ReferenceNo FROM staging_Transactions;
--6
INSERT INTO CreditCards (CardID, CustomerID, CardNumber, CardType, CVV, ExpiryDate, [Limit], Status)
SELECT CardID, CustomerID, CardNumber, CardType, CVV, ExpiryDate, [Limit], Status FROM staging_CreditCards;
--7
INSERT INTO CreditCardTransactions (TransactionID, CardID, Merchant, Amount, Currency, Date, Status)
SELECT TransactionID, CardID, Merchant, Amount, Currency, Date, Status FROM staging_CreditCardTransactions;
--8
INSERT INTO OnlineBankingUsers (UserID, CustomerID, Username, PasswordHash, LastLogin)
SELECT UserID, CustomerID, Username, PasswordHash, LastLogin FROM staging_OnlineBankingUsers;
--9
INSERT INTO BillPayments (PaymentID, CustomerID, BillerName, Amount, Date, Status)
SELECT PaymentID, CustomerID, BillerName, Amount, Date, Status FROM staging_BillPayments;
--10
INSERT INTO MobileBankingTransactions (TransactionID, CustomerID, DeviceID, AppVersion, TransactionType, Amount, Date)
SELECT TransactionID, CustomerID, DeviceID, AppVersion, TransactionType, Amount, Date FROM staging_MobileBankingTransactions;
--11
INSERT INTO Loans (LoanID, CustomerID, LoanType, Amount, InterestRate, StartDate, EndDate, Status)
SELECT LoanID, CustomerID, LoanType, Amount, InterestRate, StartDate, EndDate, Status FROM staging_Loans;
--12
INSERT INTO LoanPayments (PaymentID, LoanID, AmountPaid, PaymentDate, RemainingBalance)
SELECT PaymentID, LoanID, AmountPaid, PaymentDate, RemainingBalance FROM staging_LoanPayments;
--13
INSERT INTO CreditScores (CustomerID, CreditScore, UpdatedAt)
SELECT CustomerID, CreditScore, UpdatedAt FROM staging_CreditScores;
--14
INSERT INTO DebtCollection (DebtID, CustomerID, AmountDue, DueDate, CollectorAssigned)
SELECT DebtID, CustomerID, AmountDue, DueDate, CollectorAssigned FROM staging_DebtCollection;
--15
INSERT INTO KYC (KYCID, CustomerID, DocumentType, DocumentNumber, VerifiedBy)
SELECT KYCID, CustomerID, DocumentType, DocumentNumber, VerifiedBy FROM staging_KYC;
--16
INSERT INTO FraudDetection (FraudID, CustomerID, TransactionID, RiskLevel, ReportedDate)
SELECT FraudID, CustomerID, TransactionID, RiskLevel, ReportedDate FROM staging_FraudDetection;
--17
INSERT INTO AML_Cases (CaseID, CustomerID, CaseType, Status, InvestigatorID)
SELECT CaseID, CustomerID, CaseType, Status, InvestigatorID FROM staging_AML_Cases;
--18
INSERT INTO RegulatoryReports (ReportID, ReportType, SubmissionDate)
SELECT ReportID, ReportType, SubmissionDate FROM staging_RegulatoryReports;
--19
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID)
SELECT DepartmentID, DepartmentName, ManagerID FROM staging_Departments;
--20
INSERT INTO Salaries (SalaryID, EmployeeID, BaseSalary, Bonus, Deductions, PaymentDate)
SELECT SalaryID, EmployeeID, BaseSalary, Bonus, Deductions, PaymentDate FROM staging_Salaries;
--21
INSERT INTO EmployeeAttendance (AttendanceID, EmployeeID, CheckInTime, CheckOutTime, TotalHours)
SELECT AttendanceID, EmployeeID, CheckInTime, CheckOutTime, TotalHours FROM staging_EmployeeAttendance;
--22
INSERT INTO Investments (InvestmentID, CustomerID, InvestmentType, Amount, ROI, MaturityDate)
SELECT InvestmentID, CustomerID, InvestmentType, Amount, ROI, MaturityDate FROM staging_Investments;
--23
INSERT INTO StockTradingAccounts (AccountID, CustomerID, BrokerageFirm, TotalInvested, CurrentValue)
SELECT AccountID, CustomerID, BrokerageFirm, TotalInvested, CurrentValue FROM staging_StockTradingAccounts;
--24
INSERT INTO ForeignExchange (FXID, CustomerID, CurrencyPair, ExchangeRate, AmountExchanged)
SELECT FXID, CustomerID, CurrencyPair, ExchangeRate, AmountExchanged FROM staging_ForeignExchange;
--25
INSERT INTO InsurancePolicies (PolicyID, CustomerID, InsuranceType, PremiumAmount, CoverageAmount)
SELECT PolicyID, CustomerID, InsuranceType, PremiumAmount, CoverageAmount FROM staging_InsurancePolicies;
--26
INSERT INTO Claims (ClaimID, PolicyID, ClaimAmount, Status, FiledDate)
SELECT ClaimID, PolicyID, ClaimAmount, Status, FiledDate FROM staging_Claims;
--27
INSERT INTO UserAccessLogs (LogID, UserID, ActionType, Timestamp)
SELECT LogID, UserID, ActionType, Timestamp FROM staging_UserAccessLogs;
--28
INSERT INTO CyberSecurityIncidents (IncidentID, AffectedSystem, ReportedDate, ResolutionStatus)
SELECT IncidentID, AffectedSystem, ReportedDate, ResolutionStatus FROM staging_CyberSecurityIncidents;
--29
INSERT INTO Merchants (MerchantID, MerchantName, Industry, Location, CustomerID)
SELECT MerchantID, MerchantName, Industry, Location, CustomerID FROM staging_Merchants;
--30
INSERT INTO MerchantTransactions (TransactionID, MerchantID, Amount, PaymentMethod, Date)
SELECT TransactionID, MerchantID, Amount, PaymentMethod, Date FROM staging_MerchantTransactions;

select EmploymentStatus, count(*) from Customers
group by EmploymentStatus
--Top 3 Customers with the Highest Total Balance
Select top 3 c.CustomerID, c.FullName, sum(a.Balance) as TotalBalance
from Customers c
join Accounts a on c.CustomerID = a. CustomerID
group by c.CustomerID, c.FullName
order by TotalBalance desc

--Customers Who Have More Than One Active Loan
Select * from Loans
Select CustomerID, count(*) as Activeloancount
from Loans 
Where Status= 'Active'
Group by CustomerID
Having count(*) > 1;

--Transactions That Were Flagged as Fraudulent

SELECT 
    t.TransactionID,
    t.AccountID,
    t.TransactionType,
    t.Amount,
    t.Currency,
    t.Date,
    f.RiskLevel
FROM Transactions t
JOIN FraudDetection f ON t.TransactionID = f.TransactionID
WHERE f.RiskLevel = 'High';

--4.Total Loan Amount Issued Per Branch 
SELECT 
    a.BranchID, 
    SUM(l.Amount) AS TotalLoanAmount
FROM Loans l
JOIN Accounts a ON l.CustomerID = a.CustomerID
GROUP BY a.BranchID;

--5. Customers Who Made Multiple Large Transactions (> $10,000) Within 1 Hour
Select * from transactions
SELECT DISTINCT 
    c.CustomerID,
    t1.TransactionID AS Transaction1, 
    t2.TransactionID AS Transaction2,
    t1.Date AS Time1,
    t2.Date AS Time2
FROM Transactions t1
JOIN Accounts a1 ON t1.AccountID = a1.AccountID
JOIN Customers c ON a1.CustomerID = c.CustomerID
JOIN Transactions t2 ON a1.CustomerID = (SELECT CustomerID FROM Accounts WHERE AccountID = t2.AccountID)
WHERE 
    t1.TransactionID < t2.TransactionID
    AND t1.Amount > 10000 
    AND t2.Amount > 10000
    AND DATEDIFF(MINUTE, t1.Date, t2.Date) BETWEEN 0 AND 60;
;
--6.Customers who have made transactions from different countries within 10 minutes, a common red flag for fraud.

SELECT DISTINCT 
    c.CustomerID,
    t1.TransactionID AS Transaction1,
    t2.TransactionID AS Transaction2,
    b1.Country AS Country1,
    b2.Country AS Country2,
    t1.Date AS Time1,
    t2.Date AS Time2
FROM Transactions t1
JOIN Accounts a1 ON t1.AccountID = a1.AccountID
JOIN Branches b1 ON a1.BranchID = b1.BranchID
JOIN Customers c ON a1.CustomerID = c.CustomerID

JOIN Transactions t2 ON t1.TransactionID < t2.TransactionID
JOIN Accounts a2 ON t2.AccountID = a2.AccountID
JOIN Branches b2 ON a2.BranchID = b2.BranchID

WHERE 
    a1.CustomerID = a2.CustomerID
    AND b1.Country <> b2.Country
    AND ABS(DATEDIFF(MINUTE, t1.Date, t2.Date)) <= 10;
