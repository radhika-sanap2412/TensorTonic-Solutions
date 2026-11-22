-- Returns: customer, order_count, total_spent.
with order_counts as (
    select customer, count(order_date) as order_count,
    sum(amount) as total_spent from orders group by customer 
)
select customer, order_count, total_spent from order_counts where order_count > 1 order by total_spent desc, customer asc