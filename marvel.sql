DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Miguel Almeida');
INSERT INTO people (name) VALUES ('Callum Bentley');
INSERT INTO people (name) VALUES ('Zackary Coleman');
INSERT INTO people (name) VALUES ('Daniel Colyer');
INSERT INTO people (name) VALUES ('Adm Conway');
INSERT INTO people (name) VALUES ('Peter Crowther');
INSERT INTO people (name) VALUES ('Marta Dabrowka');
INSERT INTO people (name) VALUES ('Graeme Doran');
INSERT INTO people (name) VALUES ('John Duncan');
INSERT INTO people (name) VALUES ('Kayla Fowler');
INSERT INTO people (name) VALUES ('Diana Prince');
INSERT INTO people (name) VALUES ('Diana Prince');
INSERT INTO people (name) VALUES ('Chris Marshall');
INSERT INTO people (name) VALUES ('Aline Mokfa');
INSERT INTO people (name) VALUES ('Joao Nequinha');
INSERT INTO people (name) VALUES ('Yoni Satat');
INSERT INTO people (name) VALUES ('Kynan Song');
INSERT INTO people (name) VALUES ('Craig Morton');
INSERT INTO people (name) VALUES ('Hamish Stewart');
INSERT INTO people (name) VALUES ('Huascar Suave');
INSERT INTO people (name) VALUES ('Rob Williams');
INSERT INTO people (name) VALUES ('Laurence Woodward');
INSERT INTO people (name) VALUES ('Andre Zyczkowski');
UPDATE people SET name = 'Adam Conway' WHERE name = 'Adm Conway';
INSERT INTO people(name) VALUES ( 'Tony Goncalves');
DELETE FROM people WHERE name = 'Craig Morton';
UPDATE people SET name = 'Tony Stark' WHERE id = 11 ;
UPDATE people SET name = 'David Banner' WHERE id = 12;
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:15');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '22:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '22:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '23:25');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '12:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '13:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:40');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '21:10');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '15:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '22:45');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '15:30');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '00:00');
DELETE FROM movies WHERE title = 'Batman Begins';
UPDATE movies SET show_time = '18:55' WHERE id = 11;

DELETE FROM movies WHERE id = 11 OR title = 'Ant-Man';
-- SELECT name FROM people WHERE name = 'Joao Nequinha';
SELECT * FROM movies;
