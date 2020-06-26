-- Task 2
-- Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT 
  products.name, catalogs.name, catalogs.id 
FROM 
  products
JOIN 
  catalogs 
ON  products.catalog_id = catalogs.id;

