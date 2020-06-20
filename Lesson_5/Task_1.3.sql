TRUNCATE storehouses_products;

INSERT INTO 
	storehouses_products (storehouse_id, product_id, value) 
VALUES 
	(1, 1, 1),
	(1, 23, 30),
	(2, 12, 500),
	(1, 34, 2500),
	(2, 2, 0),
	(1, 89, 0);


SELECT 
	*
FROM
	storehouses_products
ORDER BY value = 0, value;