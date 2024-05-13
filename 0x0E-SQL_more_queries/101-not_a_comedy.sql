-- Write a script that lists all shows without the genre Comedy in the database hbtn_0d_tvshows.

SELECT s.title
FROM tv_shows AS s
LEFT JOIN tv_show_genres AS t ON t.show_id = s.id 
LEFT JOIN tv_genres AS g ON g.id = t.genre_id
WHERE s.title NOT IN (
    SELECT s.title
    FROM tv_shows AS s
    JOIN tv_show_genres AS t ON t.show_id = s.id
    JOIN tv_genres AS g ON g.id = t.genre_id
    WHERE g.name = "Comedy"
    )
ORDER BY s.title ASC;
