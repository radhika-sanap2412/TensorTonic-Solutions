-- Returns: name, price, vs_avg.
-- to calculate avg of all products including unsold 
select  p.name, p.price , ROUND(p.price - (select avg(price) from products ),2) as vs_avg from products p WHERE p.id in (select product_id from sales) order by vs_avg desc, p.name asc