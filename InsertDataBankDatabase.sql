/*
	Akshat Debnath
    Bank Database Pt.2
    Insert data into Bank Database
*/

-- Insert data into customers table

INSERT INTO customers (customer_id, first_name, last_name, email, phone)
VALUES
(111, 'John', 'Doe', 'john.doe@example.com', '123-456-7890'),
(222, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210'),
(333, 'Bob', 'Johnson', 'bob.johnson@example.com', '555-123-4567'),
(444, 'Alice', 'Williams', 'alice.williams@example.com', '789-012-3456'),
(555, 'Charlie', 'Brown', 'charlie.brown@example.com', '456-789-0123'),
(666, 'Eva', 'Lee', 'eva.lee@example.com', '321-654-9870'),
(777, 'Michael', 'Taylor', 'michael.taylor@example.com', '111-222-3333'),
(888, 'Olivia', 'Miller', 'olivia.miller@example.com', '444-555-6666'),
(999, 'Daniel', 'Wilson', 'daniel.wilson@example.com', '777-888-9999'),
(1010, 'Sophia', 'Moore', 'sophia.moore@example.com', '000-999-8888'),
(1111, 'John', 'ALex', 'sjohn.alex@example.com', '111-999-8888'),
(1212, 'Mary', 'William', 'mary.william@example.com', '222-999-8888');

-- Insert data into Accounts table

INSERT INTO accounts (account_id, customer_id, account_type, balance, open_date)
VALUES
(101, 111, 'Savings', 5000.00, '2023-01-01'),
(202, 222, 'Checking', 2500.00, '2023-02-15'),
(303, 333, 'Savings', 10000.00, '2023-03-10'),
(404, 444, 'Checking', 7500.00, '2023-04-05'),
(505, 555, 'Savings', 12000.00, '2023-05-20'),
(606, 666, 'Checking', 8000.00, '2023-06-15'),
(707, 777, 'Savings', 3000.00, '2023-07-01'),
(808, 888, 'Checking', 6000.00, '2023-08-10'),
(909, 999, 'Savings', 9000.00, '2023-09-25'),
(100, 1010, 'Checking', 11000.00, '2023-10-30'),
(1001, 999, 'Checking', 11000.00, '2023-11-25'),
(1002, 1010, 'Savings', 12000.00, '2023-11-30'),
(1003, 1010, 'Checking', -12.00, '2023-11-30');

-- Insert data into Transactions table

INSERT INTO transactions (transactions_id, account_id, transaction_type, amount, transaction_date)
VALUES
(12, 101, 'Deposit', 1000.00, '2023-01-05'),
(23, 202, 'Withdrawal', 500.00, '2023-02-15'),
(34, 303, 'Deposit', 2000.00, '2023-03-15'),
(45, 404, 'Withdrawal', 1000.00, '2023-04-10'),
(56, 505, 'Deposit', 3000.00, '2023-05-25'),
(67, 606, 'Withdrawal', 1500.00, '2023-06-20'),
(78, 707, 'Deposit', 500.00, '2023-07-05'),
(89, 808, 'Withdrawal', 1000.00, '2023-08-15'),
(91, 909, 'Deposit', 1500.00, '2023-09-30'),
(102, 100, 'Withdrawal', 2000.00, '2023-10-05'),
(103, 909, 'Deposit', 2200.00, '2023-09-30'),
(104, 100, 'Withdrawal', 1000.00, '2023-10-05');

-- Insert data into Cards table

INSERT INTO cards (card_id, customer_id, card_type, expiry_date, is_activated)
VALUES
(10001, 111, 'Credit', '2025-01-01', true),
(20002, 222, 'Debit', '2025-02-15', true),
(30003, 333, 'Credit', '2025-03-10', false),
(40004, 444, 'Debit', '2025-04-05', true),
(50005, 555, 'Credit', '2025-05-20', true),
(60006, 666, 'Debit', '2025-06-15', false),
(70007, 777, 'Credit', '2025-07-01', true),
(80008, 888, 'Debit', '2025-08-10', true),
(90009, 999, 'Credit', '2025-09-25', false),
(10100, 1010, 'Debit', '2025-10-30', true),
(90008, 999, 'Debit', '2025-09-25', true),
(10108, 1010, 'Credit', '2025-10-30', true);

-- Insert data into Branches table

INSERT INTO branches (branch_id, branch_name, location, manager_name, phone)
VALUES
(1, 'Main Branch', 'City Center', 'John Manager', '123-456-7890'),
(2, 'North Branch', 'Northside Plaza', 'Jane Manager', '987-654-3210'),
(3, 'South Branch', 'South Mall', 'Bob Manager', '555-123-4567'),
(4, 'East Branch', 'Eastside Square', 'Alice Manager', '789-012-3456'),
(5, 'West Branch', 'West End', 'Charlie Manager', '456-789-0123'),
(6, 'Central Branch', 'Central Square', 'Eva Manager', '321-654-9870'),
(7, 'Downtown Branch', 'Downtown Mall', 'Michael Manager', '111-222-3333'),
(8, 'Uptown Branch', 'Uptown Plaza', 'Olivia Manager', '444-555-6666'),
(9, 'Suburb Branch', 'Suburb Center', 'Daniel Manager', '777-888-9999'),
(10, 'Metro Branch', 'Metro Square', 'Sophia Manager', '000-999-8888');

-- Insert data into Loans table

INSERT INTO loans (loan_id, customer_id, loan_Type, amount, approval_date)
VALUES
(112, 111, 'Home Loan', 150000.00, '2023-01-10'),
(212, 222, 'Auto Loan', 25000.00, '2023-02-25'),
(312, 333, 'Personal Loan', 5000.00, '2023-03-20'),
(412, 444, 'Education Loan', 30000.00, '2023-04-15'),
(512, 555, 'Home Loan', 200000.00, '2023-05-30'),
(612, 666, 'Auto Loan', 20000.00, '2023-06-25'),
(712, 777, 'Personal Loan', 10000.00, '2023-07-10'),
(812, 888, 'Education Loan', 40000.00, '2023-08-20'),
(912, 999, 'Home Loan', 120000.00, '2023-09-05'),
(1012, 1010, 'Auto Loan', 15000.00, '2023-10-10'),
(11013, 1010, 'Home Loan', 300000.00, '2023-11-10'),
(11014, 999, 'Auto Loan', 25000.00, '2023-03-25');

-- Insert data into Payments table

INSERT INTO payments (payment_id, loan_id, amount_paid, payment_date)
VALUES
(17, 112, 5000.00, '2024-01-15'),
(27, 212, 1000.00, '2024-02-28'),
(37, 312, 200.00, '2024-03-25'),
(47, 412, 1500.00, '2024-04-20'),
(57, 512, 8000.00, '2024-04-21'),
(67, 612, 1000.00, '2024-06-28'),
(77, 712, 500.00, '2024-07-15'),
(87, 812, 2000.00, '2024-08-25'),
(97, 912, 3000.00, '2024-09-10'),
(107, 1012, 400.00, '2024-10-15');

-- Insert data into Employees table

INSERT INTO employees (employee_id, first_name, last_name, position, salary)
VALUES
(8979, 'David', 'Johnson', 'Manager', 80000.00),
(3456, 'Amy', 'Williams', 'Teller', 45000.00),
(9876, 'Kevin', 'Davis', 'Loan Officer', 60000.00),
(7655, 'Lisa', 'Anderson', 'customer Service', 50000.00),
(5754, 'Brian', 'Moore', 'Financial Advisor', 70000.00),
(7654, 'Emily', 'Smith', 'Branch Manager', 85000.00),
(4557, 'Robert', 'Jones', 'Teller', 47000.00),
(8754, 'Jessica', 'Brown', 'Loan Processor', 55000.00),
(9456, 'Andrew', 'Miller', 'customer Service', 48000.00),
(7807, 'Sophie', 'Martin', 'Financial Analyst', 72000.00);

-- Insert data into Deposits table

INSERT INTO deposits (deposit_id, customer_id, amount, deposit_date)
VALUES
(199, 111, 2000.00, '2024-01-20'),
(299, 222, 1000.00, '2024-02-28'),
(399, 333, 3000.00, '2024-03-25'),
(499, 444, 1500.00, '2024-04-20'),
(599, 555, 4000.00, '2024-05-30'),
(699, 666, 2000.00, '2024-06-28'),
(799, 777, 800.00, '2024-07-15'),
(899, 888, 2500.00, '2024-08-25'),
(999, 999, 3500.00, '2024-09-10'),
(1099, 1010, 1000.00, '2024-10-15');

-- Insert data into Transfers table

INSERT INTO transfers (transfer_id, source_account_id, destination_account_id, amount, transfer_Date)
VALUES
(1, 101, 202, 1000.00, '2024-01-25'),
(2, 303, 404, 500.00, '2024-02-28'),
(3, 505, 606, 2000.00, '2024-03-25'),
(4, 707, 808, 1000.00, '2024-04-20'),
(5, 909, 100, 3000.00, '2024-05-30'),
(6, 202, 101, 500.00, '2024-06-28'),
(7, 404, 303, 800.00, '2024-07-15'),
(8, 606, 505, 1500.00, '2024-08-25'),
(9, 808, 707, 2500.00, '2024-09-10'),
(10, 100, 909, 1000.00, '2024-10-15');
