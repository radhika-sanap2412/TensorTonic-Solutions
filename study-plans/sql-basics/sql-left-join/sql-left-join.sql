SELECT
    c.name,
    c.city,
    COALESCE(SUM(o.amount), 0) AS total_spent
FROM customers AS c
LEFT JOIN orders AS o
    ON c.id = o.customer_id
GROUP BY c.id, c.name, c.city
ORDER BY total_spent DESC, c.name ASC NULLS LAST; 