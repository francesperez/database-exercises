USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
      artist VARCHAR(35) NOT NULL,
      name VARCHAR(65) NOT NULL,
      release_date INT NOT NULL,
      sales FLOAT NOT NULL,
      genre VARCHAR(35) NOT NULL,

      PRIMARY KEY (id),
      UNIQUE (name,artist)
);

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('The Beatles','Abbey Road', 1969, 30, 'Rock');
