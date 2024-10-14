CREATE TABLE Users (
    UserId SERIAL PRIMARY KEY,  
    Username VARCHAR(50) NOT NULL UNIQUE,
    PasswordHash VARCHAR(256) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    DateRegistered TIMESTAMP NOT NULL
);
CREATE TABLE Incomes (
    IncomeId SERIAL PRIMARY KEY,
    UserId INT REFERENCES Users(UserId),
    Amount DECIMAL(10, 2) NOT NULL,
    Source VARCHAR(100) NOT NULL,  
    DateReceived TIMESTAMP NOT NULL  
);
CREATE TABLE Expenses (
    ExpenseId SERIAL PRIMARY KEY,
    UserId INT REFERENCES Users(UserId),
    Amount DECIMAL(10, 2) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    DateSpent TIMESTAMP NOT NULL  
);

