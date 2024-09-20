/*
  Akshat Debnath
  Bank Database pt. 1
  Create Bank Database
*/
CREATE DATABASE bank;
USE bank;
SHOW TABLES;

/*Customers Table*/

CREATE TABLE customers (
 customer_id INT(3) 
,first_name VARCHAR(15) NOT NULL
,last_name VARCHAR(15) NOT NULL
,email VARCHAR(50) NOT NULL UNIQUE
,phone VARCHAR(17) NOT NULL UNIQUE
,PRIMARY KEY (customer_id)
);


/*Accounts Table*/

CREATE TABLE accounts (
 account_id INT (3)
,customer_id INT (3) NOT NULL
,account_type VARCHAR (12) NOT NULL
,balance DECIMAL(8,2) NOT NULL
,open_date DATE NOT NULL
,PRIMARY KEY(account_id)
,FOREIGN KEY (customer_id) 
 REFERENCES customers(customer_id)
);

/*Transactions Table*/

CREATE TABLE transactions (
 transactions_id INT(4)
,account_id INT (3) NOT NULL
,transaction_type VARCHAR (12) NOT NULL
,amount DECIMAL(8,2) NOT NULL
,transaction_date DATE NOT NULL
,PRIMARY KEY(transactions_id)
,FOREIGN KEY(account_id)
 REFERENCES accounts(account_id)
);

/*Cards Table*/

CREATE TABLE cards (
 card_id INT(4)
,customer_id INT (3) NOT NULL
,card_type VARCHAR(12) NOT NULL
,expiry_date DATE NOT NULL
,is_activated BOOL NOT NULL
,PRIMARY KEY(card_id)
,FOREIGN KEY(customer_id)
 REFERENCES customers(customer_id)
);

/*Branches Table*/

CREATE TABLE branches (
 branch_id INT(3)
,branch_name VARCHAR(25) NOT NULL
,location VARCHAR(50) NOT NULL
,manager_name VARCHAR(50) NOT NULL
,phone VARCHAR(17) NOT NULL 
,PRIMARY KEY(branch_id)
);

/*Loans Table*/

CREATE TABLE loans (
 loan_id INT(4)
,customer_id INT(3) NOT NULL
,loan_type VARCHAR(15) NOT NULL
,amount DECIMAL(8,2) NOT NULL
,approval_date DATE NOT NULL
,PRIMARY KEY(loan_id)
,FOREIGN KEY(customer_id)
 REFERENCES customers(customer_id)
);


/*Payments Table*/

CREATE TABLE payments (
 payment_id INT(4)
,loan_id INT (4) NOT NULL
,amount_paid DECIMAL(8,2) NOT NULL
,payment_date DATE NOT NULL
,PRIMARY KEY(payment_id)
,FOREIGN KEY(loan_id)
 REFERENCES loans(loan_id)
);

/*Employees Table*/

CREATE TABLE employees (
employee_id INT(4)
,first_name VARCHAR(15) NOT NULL
,last_name VARCHAR(15) NOT NULL
,position VARCHAR(25) NOT NULL
,salary INT(7) NOT NULL
,PRIMARY KEY(employee_id)
);
ALTER TABLE employees
MODIFY COLUMN position VARCHAR(50);

/*Deposits Table*/

CREATE TABLE deposits (
 deposit_id INT(4)
,customer_id INT(3) NOT NULL
,amount DECIMAL(8,2) NOT NULL
,deposit_date DATE NOT NULL
,PRIMARY KEY (deposit_id)
,FOREIGN KEY(customer_id)
 REFERENCES customers(customer_id)
);

/*Transfers Table*/

CREATE TABLE transfers (
 transfer_id INT(4) 
,source_account_id INT(2) NOT NULL
,destination_account_id INT(2) NOT NULL
,amount DECIMAL(8,2) NOT NULL
,transfer_date DATE NOT NULL
,PRIMARY KEY(transfer_id)
,FOREIGN KEY(source_account_id)
 REFERENCES accounts(account_id)
,FOREIGN KEY(destination_account_id)
 REFERENCES accounts(account_id)
);
