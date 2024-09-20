/* 
	Akshat Debnath
    Bank Database Pt.3
    Querry Bank Database
*/

-- Select Database
USE bank;

/* 
Querry 1
Retrieve all customer records. 
*/
SELECT * FROM customers;

/*
QUERY 2  
Retreive account id's each of their total balances.
*/
SELECT account_id, SUM(balance) as total_balance
FROM accounts
GROUP BY account_id;

/*
QUERY 3 
Retrive all transactions records of account 202.
 */
SELECT * 
FROM transactions
WHERE account_id='202';

/* 
QUERY 4
Retrieve account id's and their avg balance.
*/ 
SELECT account_id,TRUNCATE(AVG(balance),2) AS 'AVG balance'
FROM accounts
GROUP BY account_id;

/*
QUERY 5
Retrieve all card records of customer 777.
*/
SELECT * 
FROM cards
WHERE customer_id= 777;

/*
Querry 6 
Retrieve all records of loans where there'd been a payment .
*/
SELECT l.loan_id,l.customer_id,l.loan_type,l.amount,l.approval_date
FROM loans l
JOIN payments p
ON p.loan_id=l.loan_id
WHERE p.loan_id=l.loan_id;

/* 
Querry 7
Retrieve records of accounts and amount of transactions 
ordered by greatest to least amount of transactions. 
*/
SELECT account_id, COUNT(transactions_id)
FROM transactions
GROUP BY account_id
ORDER BY COUNT(transactions_id) DESC;

/*
QUERY 8
Retrieve First and Last names of employees who earn more than $50000.
*/
SELECT first_name, last_name
FROM employees 
WHERE salary > 50000;

/*
QUERY 9
Retrieve most recent deposit records of customers with their names.
*/
SELECT d.deposit_id, c.customer_id, d.amount, d.deposit_date, c.first_name, c.last_name
FROM deposits d
JOIN customers c
ON d.customer_id=c.customer_id
JOIN(
SELECT customer_id, MAX(deposit_date) AS max_deposit_date
FROM deposits
GROUP BY customer_id) l
WHERE l.max_deposit_date = d.deposit_date;

/*
QUERY 10
Retrieve customer names who have a credit card.
*/
SELECT first_name, last_name
FROM customers cu
JOIN cards ca
ON ca.customer_id=cu.customer_id
WHERE ca.card_type='credit';

/*
QUERY 11
Retrieve average salary across all employees.
*/
SELECT TRUNCATE(AVG(salary),2) AS 'Avg salary'
FROM employees;

/*
QUERY 12
Retrieve accounts with the top 3 most balances.
*/
SELECT account_id, balance
FROM accounts 
ORDER BY balance DESC
LIMIT 3;

/*
QUERY 13
Retrieve loan_ids that have completed a payment in the past 30 days.
*/
SELECT l.loan_id
FROM loans l 
JOIN payments p
ON p.loan_id=l.loan_id
WHERE payment_date BETWEEN CURRENT_DATE() AND date_add(CURRENT_DATE(),INTERVAL 30 DAY);

/*
QUERY 14
Retrieve amount of cards in the system.
*/
SELECT COUNT(card_id)
FROM cards;

/*
QUERY 15
Retrieve customers who have savings and checking accounts.
*/
SELECT DISTINCT first_name,last_name
FROM customers c
JOIN(
SELECT customer_id as savings_id
FROM accounts
WHERE account_type='savings') SI
ON savings_id = c.customer_id
JOIN(
SELECT customer_id AS checking_id
FROM accounts
WHERE account_type='checking') CI
ON checking_id=c.customer_id
WHERE checking_id=savings_id;

/*
QUERY 16
Retrieve amount of loans approved per month.
*/
SELECT MONTHNAME(approval_date)AS MONTH, COUNT(loan_id) AS 'Loans Approved'
FROM loans
GROUP BY MONTH;

/*
QUERY 17
Retrieve account records which haven't had any transactions.
*/
SELECT DISTINCT a.account_id,a.customer_id, a.account_type, a.balance, a.open_date
FROM accounts a
LEFT JOIN transactions t
ON t.account_id=a.account_id
WHERE t.account_id IS NULL;

/*
QUERY 18
Retrieve customer records which have had a transfers in 2024.
*/
SELECT c.customer_id, c.first_name, c.last_name, c.email, c.phone
FROM customers c
JOIN accounts a
ON a.customer_id=c.customer_id
JOIN transfers t
ON t.source_account_id=a.account_id
WHERE t.transfer_date LIKE '2024%';

/*
QUERY 19
Retrieve account_id's which have a greater balance than the average of all accounts.
*/
SELECT account_id
FROM accounts
WHERE balance > (SELECT AVG(balance) FROM accounts);


/*
QUERY 20
Retrieve customer reccords which don't have loans.
*/
SELECT c.customer_id, c.first_name, c.last_name, c.email, c.phone
FROM customers c 
LEFT JOIN loans l
ON l.customer_id=c.customer_id
WHERE l.customer_id IS NULL;

/*
QUERY 21
Retrieve account records which have a negative balance.
*/
SELECT *
FROM accounts
WHERE balance<0;

/*
QUERY 22
Retrieve customer records which had a transaction the same day they opened.
*/
SELECT c.customer_id, c.first_name, c.last_name, c.email, c.phone
FROM customers c
JOIN accounts a
ON a.customer_id=c.customer_id
WHERE a.open_date IN (SELECT MIN(transaction_date) 
					  FROM transactions 
					  GROUP BY account_id);
                      
/*
QUERY 23
Retrieve customer_id's and names who have more than one card.
*/
SELECT cu.customer_id, cu.first_name, cu.last_name
FROM customers cu
JOIN (SELECT customer_id, COUNT(card_id) AS cardCOUNT
	  FROM cards
	  GROUP BY customer_id) ca 
ON ca.customer_id = cu.customer_id
WHERE ca.cardCOUNT>1;