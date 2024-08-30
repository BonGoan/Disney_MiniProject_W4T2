CREATE DATABASE IF NOT EXISTS disney_movies;
USE disney_movies;

DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS adaptations;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS directors;

CREATE TABLE genre(
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre VARCHAR(255) NOT NULL
);
CREATE TABLE directors(
    director_id INT AUTO_INCREMENT PRIMARY KEY,
    directed_by TEXT NOT NULL
);

CREATE TABLE movies(
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    running_time INT NOT NULL,
    budget FLOAT(53) NOT NULL,
    box_office FLOAT(53) NOT NULL,
    director_id INT NOT NULL,
    year CHAR(4) NOT NULL,
    genre_id INT NOT NULL,
    FOREIGN KEY(genre_id) REFERENCES genre(genre_id),
    FOREIGN KEY(director_id) REFERENCES directors(director_id)
    );
    
CREATE TABLE reviews(
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    imdb INT NOT NULL,
    metascore INT NOT NULL,
    rotten_tomatoes INT NOT NULL, 
     FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE adaptations(
    adaptation_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    book_title TEXT NOT NULL,
    book_writer TEXT NOT NULL,
    FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);directors
