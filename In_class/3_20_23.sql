USE imdbmovies;

SELECT * FROM movies;

SELECT * FROM movies JOIN movies_stars ON movies.id = movies_stars.movies_id
	JOIN stars ON movies_stars.stars_id = stars.id;

SELECT * FROM movies JOIN directors ON movies.id = movies_directors.directors.id
	JOIN directors ON movie_directors.id = directors.id;
    
SELECT title, name FROM movies JOIN movies_genres ON movies.id = movies_genres.genres_id 
	join genres ON movies_genres.genres_id = genres.id;
    
SELECT movies.title, movies.year, stars.name AS "Movie Star", genres.name AS "Genre", directors.name AS "Director" 
	FROM movies JOIN movies_stars ON movies.id = movies_stars.movies_id
    JOIN stars ON movies_stars.stars_id = stars.id
    JOIN movie_directors ON movie_directors.movies_id = movies.id
    JOIN directors ON movie_directors.Directors_id = directors.id
    JOIN movies_genres ON movies_genres.movies_id = movies.id
    JOIN genres ON movies_genres.genres_id = genres.id;