-- 1.sql
SELECT username
FROM users
WHERE last_login_date > '2023.12.31';

-- 2.sql
SELECT expires_timestamp
FROM messages
WHERE id = 151;

-- 3.sql
SELECT to_user_id
FROM messages
WHERE from_user_id = (
    SELECT id
    FROM users
    WHERE username = "creativewisdom377"
)
GROUP BY to_user_id
ORDER BY COUNT(to_user_id) DESC
LIMIT 3;

-- 4.sql
SELECT username
FROM users AS u
JOIN messages AS m ON u.id = m.to_user_id
GROUP BY u.username
ORDER BY COUNT(m.to_user_id) DESC
LIMIT 1;

-- 5.sql
SELECT user_id
FROM friends
WHERE friend_id IN (
    SELECT id
    FROM users
    WHERE username = "lovelytrust487"
)
INTERSECT
SELECT user_id
FROM friends
WHERE friend_id IN (
    SELECT id
    FROM users
    WHERE username = "exceptionalinspiration482"
);
