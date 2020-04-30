## SQL SELECT FROM

SELECT id, name
FROM accounts;

/*After SELECT you list the columns desired,
after FROM goes the table you want the data from
Syntax:
SELECT column1, column2, etc
FROM table_name
*/

## LIMIT

SELECT *
FROM accounts
LIMIT 10;

/* LIMIT: maximum number of rows displayed.
Prevents taking too long. You often only
need to see how a table looks like.
*/

## ORDER BY

SELECT *
FROM orders
ORDER BY occurred_at DESC
LIMIT 15;

/* ORDER BY sorts from A to Z,
older to recent, which corresponds
to ascending order. To invert order
add DESC meaning descending.
*/

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5;

/* Returns:
id	account_id	total_amt_usd
4016	4251	232207.07
3892	4161	112875.18
3963	4211	107533.55
5791	2861	95005.82
3778	4101	93547.84
*/

## ORDER BY more than one criteria

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY account_id, total_amt_usd DESC
LIMIT 60;

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC, account_id
LIMIT 60;

/* ORDER BY first_criteria, second_criteria
First by the first criteria,
then second and so on*/

## WHERE

SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
LIMIT 5;

/*WHERE is a restriction condition.
You can use with >, <, >=, <=, != */