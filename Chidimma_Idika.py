"""
author: chidimmaidika@gmail.com
"""

question_one = """
select txn_type, count(txn_id) as "transaction_count"
from raw.transactions 
where ticker = 'BTC'
group by txn_type;
"""


question_two = """
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
"""


question_three = """
select extract(month from txn_date::date) as calendar_month,
sum(CASE WHEN txn_type = 'BUY' AND ticker = 'ETH' THEN quantity ELSE 0 END) AS buy_quantity,
sum(CASE WHEN txn_type = 'SELL' AND ticker = 'ETH' THEN quantity ELSE 0 END) AS sell_quantity
from raw.transactions 
where ticker = 'ETH' and extract(year from txn_date::date) = 2020
group by calendar_month;
"""


question_four = """
select first_name, sum(quantity) as total_quantity
from raw.members m 
join raw.transactions t 
on m.member_id = t.member_id 
where ticker = 'BTC'
group by first_name
order by total_quantity desc
limit 3;
"""