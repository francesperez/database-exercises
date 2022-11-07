UPDATE albums SET sales = sales * 10;
SELECT artist, name, sales FROM albums;


UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT artist, name, release_date FROM albums WHERE release_date < 1980;

UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist='Peter Jackson';