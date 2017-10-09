# SQL Homework

The Dominion Cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'

```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:

```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions.  Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1. Return ALL the data in the 'movies' table.

SELECT * FROM movies;

➜  homework psql -d marvel -f marvel.sql
DROP TABLE
DROP TABLE
CREATE TABLE
CREATE TABLE
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
 id |                title                | year | show_time
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 15:15
  2 | The Incredible Hulk                 | 2008 | 22:05
  3 | Iron Man 2                          | 2010 | 18:05
  4 | Thor                                | 2011 | 13:00
  5 | Captain America: The First Avenger  | 2011 | 22:15
  6 | Avengers Assemble                   | 2012 | 23:25
  7 | Iron Man 3                          | 2013 | 12:05
  8 | Thor: The Dark World                | 2013 | 13:25
  9 | Batman Begins                       | 2005 | 23:55
 10 | Captain America: The Winter Soldier | 2014 | 19:40
 11 | Guardians of the Galaxy             | 2014 | 18:55
 12 | Avengers: Age of Ultron             | 2015 | 21:10
 13 | Ant-Man                             | 2015 | 15:20
 14 | Captain America: Civil War          | 2016 | 22:45
 15 | Doctor Strange                      | 2016 | 22:00
 16 | Guardians of the Galaxy 2           | 2017 | 15:30
(16 rows)

2. Return ONLY the name column from the 'people' table
SELECT name FROM people;

➜  homework git:(master) ✗ psql -d marvel -f marvel.sql                                                
DROP TABLE
DROP TABLE
CREATE TABLE
CREATE TABLE
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
       name        
-------------------
 Miguel Almeida
 Callum Bentley
 Zackary Coleman
 Daniel Colyer
 Adm Conway
 Peter Crowther
 Marta Dabrowka
 Graeme Doran
 John Duncan
 Kayla Fowler
 Diana Prince
 Diana Prince
 Chris Marshall
 Aline Mokfa
 Joao Nequinha
 Yoni Satat
 Kynan Song
 Craig Morton
 Hamish Stewart
 Huascar Suave
 Rob Williams
 Laurence Woodward
 Andre Zyczkowski
(23 rows)


3.Oops! Someone at CodeClan spelled Adam's name wrong! Change it to reflect the proper spelling (change 'Adm Conway' to 'Adam Conway').

UPDATE people SET name = 'Adam Conway' WHERE name = 'Adm Conway';

-------------------
 Miguel Almeida
 Callum Bentley
 Zackary Coleman
 Daniel Colyer
 Peter Crowther
 Marta Dabrowka
 Graeme Doran
 John Duncan
 Kayla Fowler
 Diana Prince
 Diana Prince
 Chris Marshall
 Aline Mokfa
 Joao Nequinha
 Yoni Satat
 Kynan Song
 Craig Morton
 Hamish Stewart
 Huascar Suave
 Rob Williams
 Laurence Woodward
 Andre Zyczkowski
 Adam Conway
(23 rows)


4. Return ONLY your name from the 'people' table.

SELECT name FROM people WHERE name = 'Joao Nequinha';
---------------
 Joao Nequinha
(1 row)

5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';
SELECT * FROM movies;

id |                title                | year | show_time
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 15:15
  2 | The Incredible Hulk                 | 2008 | 22:05
  3 | Iron Man 2                          | 2010 | 18:05
  4 | Thor                                | 2011 | 13:00
  5 | Captain America: The First Avenger  | 2011 | 22:15
  6 | Avengers Assemble                   | 2012 | 23:25
  7 | Iron Man 3                          | 2013 | 12:05
  8 | Thor: The Dark World                | 2013 | 13:25
 10 | Captain America: The Winter Soldier | 2014 | 19:40
 11 | Guardians of the Galaxy             | 2014 | 18:55
 12 | Avengers: Age of Ultron             | 2015 | 21:10
 13 | Ant-Man                             | 2015 | 15:20
 14 | Captain America: Civil War          | 2016 | 22:45
 15 | Doctor Strange                      | 2016 | 22:00
 16 | Guardians of the Galaxy 2           | 2017 | 15:30
(15 rows)

6. Create a new entry in the 'people' table with the name of one of the instructors.
INSERT INTO people(name) VALUES ( 'Tony Goncalves');
id |       name        
----+-------------------
 1 | Miguel Almeida
 2 | Callum Bentley
 3 | Zackary Coleman
 4 | Daniel Colyer
 6 | Peter Crowther
 7 | Marta Dabrowka
 8 | Graeme Doran
 9 | John Duncan
10 | Kayla Fowler
11 | Diana Prince
12 | Diana Prince
13 | Chris Marshall
14 | Aline Mokfa
15 | Joao Nequinha
16 | Yoni Satat
17 | Kynan Song
18 | Craig Morton
19 | Hamish Stewart
20 | Huascar Suave
21 | Rob Williams
22 | Laurence Woodward
23 | Andre Zyczkowski
 5 | Adam Conway
24 | Tony Goncalves
(24 rows)

7. Craig Morton, has decided to hijack our movie evening, Remove him from the table of people.

DELETE FROM people WHERE name = 'Craig Morton';
id |       name        
----+-------------------
 1 | Miguel Almeida
 2 | Callum Bentley
 3 | Zackary Coleman
 4 | Daniel Colyer
 6 | Peter Crowther
 7 | Marta Dabrowka
 8 | Graeme Doran
 9 | John Duncan
10 | Kayla Fowler
11 | Diana Prince
12 | Diana Prince
13 | Chris Marshall
14 | Aline Mokfa
15 | Joao Nequinha
16 | Yoni Satat
17 | Kynan Song
19 | Hamish Stewart
20 | Huascar Suave
21 | Rob Williams
22 | Laurence Woodward
23 | Andre Zyczkowski
 5 | Adam Conway
24 | Tony Goncalves
(23 rows)


8. Somehow the list of people includes two people named 'Diana Prince'. Change these entries to the proper names ('Tony Stark' and 'David Banner')

UPDATE people SET name = 'Tony Stark' WHERE id = 11 ;
UPDATE people SET name = 'David Banner' WHERE id = 12;

id |       name        
----+-------------------
  1 | Miguel Almeida
  2 | Callum Bentley
  3 | Zackary Coleman
  4 | Daniel Colyer
  6 | Peter Crowther
  7 | Marta Dabrowka
  8 | Graeme Doran
  9 | John Duncan
 10 | Kayla Fowler
 13 | Chris Marshall
 14 | Aline Mokfa
 15 | Joao Nequinha
 16 | Yoni Satat
 17 | Kynan Song
 19 | Hamish Stewart
 20 | Huascar Suave
 21 | Rob Williams
 22 | Laurence Woodward
 23 | Andre Zyczkowski
  5 | Adam Conway
 24 | Tony Goncalves
 11 | Tony Stark
 12 | David Banner
(23 rows)

9. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '00:00');

id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 15:15
 2 | The Incredible Hulk                 | 2008 | 22:05
 3 | Iron Man 2                          | 2010 | 18:05
 4 | Thor                                | 2011 | 13:00
 5 | Captain America: The First Avenger  | 2011 | 22:15
 6 | Avengers Assemble                   | 2012 | 23:25
 7 | Iron Man 3                          | 2013 | 12:05
 8 | Thor: The Dark World                | 2013 | 13:25
10 | Captain America: The Winter Soldier | 2014 | 19:40
11 | Guardians of the Galaxy             | 2014 | 18:55
12 | Avengers: Age of Ultron             | 2015 | 21:10
13 | Ant-Man                             | 2015 | 15:20
14 | Captain America: Civil War          | 2016 | 22:45
15 | Doctor Strange                      | 2016 | 22:00
16 | Guardians of the Galaxy 2           | 2017 | 15:30
17 | Guardians of the Galaxy 2           | 2017 | 00:00
(16 rows)


10. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 18:55 to 21:30

UPDATE movies SET show_time = '18:55' WHERE id = 11;

id |                title                | year | show_time
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 15:15
  2 | The Incredible Hulk                 | 2008 | 22:05
  3 | Iron Man 2                          | 2010 | 18:05
  4 | Thor                                | 2011 | 13:00
  5 | Captain America: The First Avenger  | 2011 | 22:15
  6 | Avengers Assemble                   | 2012 | 23:25
  7 | Iron Man 3                          | 2013 | 12:05
  8 | Thor: The Dark World                | 2013 | 13:25
 10 | Captain America: The Winter Soldier | 2014 | 19:40
 12 | Avengers: Age of Ultron             | 2015 | 21:10
 13 | Ant-Man                             | 2015 | 15:20
 14 | Captain America: Civil War          | 2016 | 22:45
 15 | Doctor Strange                      | 2016 | 22:00
 16 | Guardians of the Galaxy 2           | 2017 | 15:30
 17 | Guardians of the Galaxy 2           | 2017 | 00:00
 11 | Guardians of the Galaxy             | 2014 | 18:55
(16 rows)



## Extension

1. Research how to delete multiple entries from your table in a single command.

DELETE FROM movies WHERE id = 11 OR title = 'Ant-Man';

id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 15:15
 2 | The Incredible Hulk                 | 2008 | 22:05
 3 | Iron Man 2                          | 2010 | 18:05
 4 | Thor                                | 2011 | 13:00
 5 | Captain America: The First Avenger  | 2011 | 22:15
 6 | Avengers Assemble                   | 2012 | 23:25
 7 | Iron Man 3                          | 2013 | 12:05
 8 | Thor: The Dark World                | 2013 | 13:25
10 | Captain America: The Winter Soldier | 2014 | 19:40
12 | Avengers: Age of Ultron             | 2015 | 21:10
14 | Captain America: Civil War          | 2016 | 22:45
15 | Doctor Strange                      | 2016 | 22:00
16 | Guardians of the Galaxy 2           | 2017 | 15:30
17 | Guardians of the Galaxy 2           | 2017 | 00:00
(14 rows)
