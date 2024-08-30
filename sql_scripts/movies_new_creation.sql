DROP DATABASE IF EXISTS disney_movies_new;
CREATE DATABASE IF NOT EXISTS disney_movies_new;

USE disney_movies_new;

CREATE TABLE `movies`(
    `movie_id` BIGINT  NOT NULL PRIMARY KEY,
    `title` TEXT NOT NULL,
    `running_time` INT NOT NULL,
    `budget` FLOAT(53) NOT NULL,
    `box_office` FLOAT(53) NOT NULL,
    `year` VARCHAR(4) NOT NULL
);

CREATE TABLE `directors`(
    `director_id` BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `directed_by` TEXT NOT NULL,
    `movie_id` BIGINT ,
    CONSTRAINT `movie_directors_movie_id_foreign` FOREIGN KEY(`movie_id`) REFERENCES `movies`(`movie_id`)
);

CREATE TABLE `genres`(
    `genre_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `genre` TEXT NOT NULL,
    `movie_id` BIGINT ,
    CONSTRAINT `movie_genres_movie_id_foreign` FOREIGN KEY(`movie_id`) REFERENCES `movies`(`movie_id`)
);

-- CREATE TABLE `movie_directors`(
--    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    `movie_id` BIGINT,
--    `director_id` BIGINT ,
--    CONSTRAINT `movie_directors_director_id_foreign` FOREIGN KEY(`director_id`) REFERENCES `directors`(`director_id`),
--    CONSTRAINT `movie_directors_movie_id_foreign` FOREIGN KEY(`movie_id`) REFERENCES `movies`(`movie_id`)
--    );

CREATE TABLE `adaptations`(
    `adaptation_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `movie_id` BIGINT ,
    `book_title` VARCHAR(255) ,
	`book_writer` VARCHAR(255) ,
    CONSTRAINT `adaptations_movie_id_foreign` FOREIGN KEY(`movie_id`) REFERENCES `movies`(`movie_id`)
);

CREATE TABLE `reviews`(
    `review_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `movie_id` BIGINT ,
    `imdb` FLOAT ,
    `metascore` INT ,
    `rotten_tomatos` int,
    CONSTRAINT `reviews_movie_id_foreign` FOREIGN KEY(`movie_id`) REFERENCES `movies`(`movie_id`)
);

-- CREATE TABLE `movie_genres`(
--    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    `movie_id` BIGINT ,
--    `genre_id` BIGINT ,
--    CONSTRAINT `movie_genres_genre_id_foreign` FOREIGN KEY(`genre_id`) REFERENCES `genres`(`genre_id`),
--    CONSTRAINT `movie_genres_movie_id_foreign` FOREIGN KEY(`movie_id`) REFERENCES `movies`(`movie_id`)
-- );

-- ALTER TABLE
--    `movie_genres` ADD CONSTRAINT `movie_genres_genre_id_foreign` FOREIGN KEY(`genre_id`) REFERENCES `genres`(`genre_id`);
-- ALTER TABLE
--    `movie_genres` ADD CONSTRAINT `movie_genres_movie_id_foreign` FOREIGN KEY(`movie_id`) REFERENCES `movies`(`movie_id`);
-- ALTER TABLE
--     `movie_directors` ADD CONSTRAINT `movie_directors_director_id_foreign` FOREIGN KEY(`director_id`) REFERENCES `directors`(`director_id`);
-- ALTER TABLE
 --   `adaptations` ADD CONSTRAINT `adaptations_movie_id_foreign` FOREIGN KEY(`movie_id`) REFERENCES `movies`(`movie_id`);
-- ALTER TABLE
--    `reviews` ADD CONSTRAINT `reviews_movie_id_foreign` FOREIGN KEY(`movie_id`) REFERENCES `movies`(`movie_id`);
-- ALTER TABLE
-- `movie_directors` ADD CONSTRAINT `movie_directors_movie_id_foreign` FOREIGN KEY(`movie_id`) REFERENCES `movies`(`movie_id`);