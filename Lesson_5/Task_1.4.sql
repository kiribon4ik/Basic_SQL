SELECT 
	name, birthday_at
FROM 
	users
WHERE DATE_FORMAT(birthday_at, '%M') IN ('may', 'august');