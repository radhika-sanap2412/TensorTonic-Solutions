-- Returns: username, experiment_name, variant, revenue.
-- select u.username , e.experiment_name , e.variant, c.revenue from 
-- users u inner join experiment_assignments e on u.id = e.id INNER JOIN 
-- conversions c on u.id = c.id order by experiment_name asc c.revenue desc u.username asc 
SELECT
    u.username,
    e.experiment_name,
    e.variant,
    c.revenue
FROM users AS u
INNER JOIN experiment_assignments AS e
    ON u.id = e.user_id
INNER JOIN conversions AS c
    ON u.id = c.user_id
ORDER BY e.experiment_name ASC, c.revenue DESC, u.username ASC;