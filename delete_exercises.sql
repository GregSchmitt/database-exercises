USE codeup_test_db;

DELETE FROM albums where release_date > 1990;

DELETE FROM albums where genre = 'disco';

DELETE FROM albums where artist = 'Led Zeppelin';