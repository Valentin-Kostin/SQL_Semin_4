/*Подсчитать общее количество лайков, которые получили пользователи младше 12 лет.*/
SELECT COUNT(likes.user_id), users.id,  users.firstname, profiles.birthday
FROM likes
JOIN users ON likes.user_id = users.id
JOIN profiles ON users.id = profiles.user_id WHERE birthday>'2011-09-03'
GROUP BY users.id;

