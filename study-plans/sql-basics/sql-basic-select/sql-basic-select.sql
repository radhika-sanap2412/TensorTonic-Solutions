-- Returns: name, category, inventory_value.
select product_name AS name, category, unit_price * units_in_stock AS inventory_value from products