-- Returns: month, revenue, prev_revenue, revenue_change.
select month, revenue, 
    lag(revenue,1,0) over (order by month asc, id asc) as prev_revenue, 
    revenue - lag(revenue,1,0) over (order by month asc, id asc) as revenue_change, 
from monthly_revenue order by month asc , id asc 