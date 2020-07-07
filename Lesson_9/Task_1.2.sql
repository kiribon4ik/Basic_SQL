-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products
--    и соответствующее название каталога name из таблицы catalogs.

CREATE OR REPLACE VIEW name_prod_cat AS 
  SELECT products.name AS product_name, catalogs.name AS catalog_name
    FROM products
      JOIN catalogs 
        ON products.id = catalogs.id;

SELECT * FROM name_prod_cat;