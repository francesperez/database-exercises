USE codeup_test_db;

# The name of all albums by Pink Floyd.
SELECT name FROM albums WHERE artist = 'Pink Floyd';

# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

# The genre for Thriller
SELECT genre FROM albums WHERE name = 'Thriller';

# Which albums were released in the 1990s
SELECT artist, name, release_date FROM albums WHERE release_date BETWEEN 1990 AND 1999;

# Which albums had less than 30 million certified sales
SELECT artist, name, sales FROM albums WHERE sales > 30;

# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT * FROM albums WHERE genre = 'Rock';