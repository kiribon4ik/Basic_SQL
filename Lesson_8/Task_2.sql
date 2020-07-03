-- 4. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

-- Решение с вложенным запросом

SELECT COUNT(*) FROM likes 
  WHERE target_type_id = 2
    AND target_id IN (SELECT * FROM (
      SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
    ) AS sorted_profiles ) 
;


-- Запрос с помощью JOIN. 

-- Вижу, что всего два лайка получли 10 самых молодых пользователей, а вывести суммой не могу сообразить как

SELECT
  birthday , likes.target_id , profiles.user_id, likes.target_type_id 
FROM profiles
  LEFT JOIN likes 
    ON profiles.user_id = likes.target_id AND likes.target_type_id = 2
ORDER BY birthday
DESC LIMIT 10;

