#إنشاء 6 مستخدمين (Query: Create 6 new users)
INSERT INTO users (first_name, last_name) VALUES
('Amy', 'Giver'),      -- id = 1
('Eli', 'Byers'),      -- id = 2
('Kermit', 'The Frog'),-- id = 3
('Marky', 'Mark'),     -- id = 4
('Big', 'Bird'),       -- id = 5
('Cookie', 'Monster'); -- id = 6

#علاقات الصداقة (حسب المطلوب بالضبط) user 1 صديق لـ 2, 4, 6
INSERT INTO friendships (user_id, friend_id) VALUES
(1, 2),
(1, 4),
(1, 6);

#user 2 صديق لـ 1, 3, 5
INSERT INTO friendships (user_id, friend_id) VALUES
(2, 1),
(2, 3),
(2, 5);

#user 3 صديق لـ 2, 5
INSERT INTO friendships (user_id, friend_id) VALUES
(3, 2),
(3, 5);

#user 4 صديق لـ 3
INSERT INTO friendships (user_id, friend_id) VALUES
(4, 3);

#user 5 صديق لـ 1, 6
INSERT INTO friendships (user_id, friend_id) VALUES
(5, 1),
(5, 6);

#user 6 صديق لـ 2, 3
INSERT INTO friendships (user_id, friend_id) VALUES
(6, 2),
(6, 3);
#عرض كل العلاقات (Query: Display the relationships)
SELECT
    u1.first_name,
    u1.last_name,
    u2.first_name AS friend_first_name,
    u2.last_name  AS friend_last_name
FROM friendships f
JOIN users u1 ON f.user_id = u1.id
JOIN users u2 ON f.friend_id = u2.id;

#كل الأصدقاء اللي عند المستخدم الأول، مع عرض أسمائهم
SELECT u2.first_name, u2.last_name
FROM friendships f
JOIN users u2 ON f.friend_id = u2.id
WHERE f.user_id = 1;

#عدد كل الصداقات (Count of all friendships)
SELECT COUNT(*) AS total_friendships
FROM friendships;

#مين عنده أكتر أصدقاء + العدد
SELECT u.first_name, u.last_name, COUNT(f.friend_id) AS friend_count
FROM friendships f
JOIN users u ON f.user_id = u.id
GROUP BY f.user_id
ORDER BY friend_count DESC
LIMIT 1;

#أصدقاء المستخدم الثالث مرتبين أبجديًا
SELECT u2.first_name, u2.last_name
FROM friendships f
JOIN users u2 ON f.friend_id = u2.id
WHERE f.user_id = 3
ORDER BY u2.first_name ASC;