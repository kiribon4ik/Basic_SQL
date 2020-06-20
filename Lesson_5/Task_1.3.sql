TRUNCATE storehouses_products;

INSERT INTO storehouses_products (value) VALUES 
	(1),
    (30),
    (500),
    (2500),
    (0),(0);
   
SELECT value FROM storehouses_products ORDER BY value != 0 DESC;