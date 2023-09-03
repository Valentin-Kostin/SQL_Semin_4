/*Подсчитать общее количество лайков, которые получили пользователи младше 12 лет.*/
SELECT COUNT(likes.user_id), users.id,  users.firstname, profiles.birthday
FROM likes
JOIN users ON likes.user_id = users.id
JOIN profiles ON users.id = profiles.user_id WHERE birthday>'2011-09-03'
GROUP BY users.id;

/*Определить кто больше поставил лайков (всего): мужчины или женщины.*/
SELECT COUNT(likes.user_id), profiles.gender
FROM likes
JOIN users ON likes.user_id = users.id
JOIN profiles ON users.id = profiles.user_id 
GROUP BY gender;

/*Вывести всех пользователей, которые не отправляли сообщения.*/
SELECT users.id, from_user_id AS nomess
FROM users
LEFT JOIN messages ON messages.from_user_id = users.id 
GROUP BY users.id;
