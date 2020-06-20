USE shop;

SELECT 
	EXP(SUM(LN(id))) 
AS
	sum_id
FROM 
	catalogs;