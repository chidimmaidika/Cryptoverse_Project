CREATE SCHEMA raw;

select * from raw.members;
select * from raw.prices;
select * from raw.transactions;

/* Q1. How many buy and sell transactions are there for Bitcoin? - your result should return
two columns - txn_type, transaction_count */
select txn_type, count(txn_id) as "transaction_count"
from raw.transactions 
where ticker = 'BTC'
group by txn_type;

/* Q2. For each year, calculate the following buy and sell metrics for bitcoin:
a. Total transaction count
b. Total quantity
c. Average quantity
Kindly note that you are generating a single query to calculate these metrics and
you should return exactly 5 columns - txn_year, txn_type, txn_count,
total_quantity, average_quantity */
select 
extract(year from txn_date::date) as txn_year, 
txn_type, 
count(txn_id) as txn_count,
sum(quantity) as total_quantity,
avg(quantity) as average_quantity
from raw.transactions
where ticker = 'BTC'
group by txn_type, txn_year
order by txn_year;

/* Q3. What was the monthly total quantity purchased and sold for Ethereum in 2020? Your
query should return exactly three columns - calendar_month, buy_quantity,
sell_quantity */
select extract(month from txn_date::date) as calendar_month,
sum(CASE WHEN txn_type = 'BUY' AND ticker = 'ETH' THEN quantity ELSE 0 END) AS buy_quantity,
sum(CASE WHEN txn_type = 'SELL' AND ticker = 'ETH' THEN quantity ELSE 0 END) AS sell_quantity
from raw.transactions 
where ticker = 'ETH' and extract(year from txn_date::date) = 2020
group by calendar_month;

/* Q4. Who are the top 3 members with the most bitcoin quantity? Your result should return
exactly two columns - first_name, total_quantity */
select first_name, sum(quantity) as total_quantity
from raw.members m 
join raw.transactions t 
on m.member_id = t.member_id 
where ticker = 'BTC'
group by first_name
order by total_quantity desc
limit 3;