-- Returns: avg_daily_orders, avg_daily_revenue, busiest_day_orders.
with daily_orders AS (
    select 
    order_date, 
    count(*) as daily_orders_per_customer , 
    sum(amount) as daily_revenue
    from orders group by order_date
)
select ROUND(AVG(daily_orders_per_customer), 2) as avg_daily_orders, 
    ROUND(AVG(daily_revenue), 2) as avg_daily_revenue, 
    MAX(daily_orders_per_customer ) as busiest_day_orders
    from daily_orders