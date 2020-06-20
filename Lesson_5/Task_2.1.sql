SELECT AVG(FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25)) AS Average_AGE FROM users;
