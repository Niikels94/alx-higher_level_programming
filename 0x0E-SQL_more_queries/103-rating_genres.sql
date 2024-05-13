-- Write a script that lists all genres in the database hbtn_0d_tvshows_rate by their rating.

SELECT g.name, SUM(rate) AS rating
FROM tv_genres AS g
JOIN tv_show_genres AS t ON g.id = t.genre_id
JOIN tv_show_ratings AS s ON t.show_id = s.show_id
GROUP BY name
ORDER BY rating DESC;
