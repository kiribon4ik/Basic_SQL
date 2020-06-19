/* Не успел преобразовать значения месяцев в список английских названий (may, august), сделал по числовому*/

SELECT name, birthday_at AS birthday_05_08 from users 
	where DATE_FORMAT(birthday_at, '%m') = '05' OR DATE_FORMAT(birthday_at, '%m') = '08';