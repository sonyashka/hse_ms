select payment_status, sum(total_amount) as sum_amount, avg(total_amount) as avg_amount
from orders
group by payment_status;

-- #  payment_status    sum_amount	       avg_amount
-- 1	"paid"       11198.989990234375 1119.8989990234375
-- 2	"pending"        3049.5              762.375 
-- 3	"cancelled"        120                 60

-- справедливо при условии, что нас интересуют только те товары, по заказам которых есть информация в orders
-- иначе замена типа джойна
select sum(oi.quantity) as total_cnt, 
    sum(o.total_amount) as total_amount, 
    avg(oi.product_price) as avg_item_amount
from orders o
join order_items oi on oi.order_id=o.order_id;

-- #	total_cnt	total_amount	  avg_item_amount
-- 1	   33    14118.489990234375  347.0357142857143

select toDate(order_date) as day, count(*) as day_cnt, sum(total_amount) as day_amount
from orders
group by toDate(order_date);

-- #	    day	   day_cnt	day_amount
-- 1	"2023-03-01"  5        4149.5
-- 2	"2023-03-02"  6         4769
-- 3	"2023-03-03"  5      5449.989990234375

select user_id, sum(total_amount) as total_amount
from orders
group by user_id
order by total_amount
limit 3;

-- #	user_id	total_amount
-- 1	   12      1570
-- 2	   14      1650
-- 3	   11     1798.5