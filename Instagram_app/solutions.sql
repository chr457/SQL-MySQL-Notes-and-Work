-- Find 5 oldest users
--select * from users order by created_at limit 5;

-- Most popular registration day
--select dayname(created_at) as day, count(*) as total from users group by day order by total desc;

-- Find users who never posted a photo
-- select username from users left join photos on users.id = photos.user_id where photos.id is null;

-- See who has the most likes on a photo
-- select username,
-- photos.id, 
-- photos.image_url, 
-- count(*) as total 
-- from photos 
-- join likes on likes.photo_id = photos.id
-- join users on photos.user_id = users.id
-- group by photos.id 
-- order by total desc limit 1;

-- How many times does the avg user post
--select (select count(*) from photos) / (select count(*) from users) as 'Average posts';

-- 5 most popular hashtags
--select tag_name, count(tag_name) as total from tags join photo_tags on photo_tags.tag_id = tags.id group by tag_name order by total desc limit 5;

-- Users who have liked every photo(bots)
--select id, count(likes.user_id) as likes from users join likes on likes.user_id = users.id 
--group by users.id having likes = (select count(*) from photos);












