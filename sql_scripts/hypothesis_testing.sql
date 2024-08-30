Use disney_movies_new;

SELECT * FROM disney_movies_new.movies;

-- Hypothesis 3 - Based on books 
-- And compare the AVG;
SELECT 
    'Based on books' AS category,
    AVG(r.imdb) AS avg_imdb_rating,
    -- MEDIAN(r.imdb) AS median_imdb_rating,
    MIN(r.imdb) AS min_imdb_rating,
    MAX(r.imdb) AS max_imdb_rating
    -- STDDEV(r.imdb) AS stddev_imdb_rating
FROM 
    reviews AS r
JOIN 
    adaptations AS a ON r.movie_id = a.movie_id
WHERE 
    a.book_title <> 'Not based on books'
GROUP BY 
    category

UNION ALL

SELECT 
    'Not based on books' AS category,
    AVG(r.imdb) AS avg_imdb_rating,
    -- MEDIAN(r.imdb) AS median_imdb_rating,
    MIN(r.imdb) AS min_imdb_rating,
    MAX(r.imdb) AS max_imdb_rating
    -- STDDEV(r.imdb) AS stddev_imdb_rating
FROM 
    reviews AS r
LEFT JOIN 
    adaptations AS a ON r.movie_id = a.movie_id
WHERE 
    -- a.movie_id IS 
    a.book_title = 'Not based on books'
GROUP BY 
    category;