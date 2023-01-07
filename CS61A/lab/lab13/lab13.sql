.read data.sql


CREATE TABLE bluedog AS
SELECT color, pet
from students
where color = 'blue'
  and pet = 'dog';

CREATE TABLE bluedog_songs AS
SELECT color, pet, song
from students
where color = 'blue'
  and pet = 'dog';


CREATE TABLE matchmaker AS
SELECT t1.pet, t1.song, t1.color, t2.color
from students as t1
         join students as t2 on t1.pet = t2.pet and t1.song = t2.song and t1.time < t2.time;


CREATE TABLE sevens AS
SELECT seven
from students t1
         join numbers t2 on t1.time = t2.time and t2.'7' = 'True' and t1.number = 7;


CREATE TABLE favpets AS
SELECT pet, count(pet)
from students
group by pet
order by count(pet) desc
limit 10;


CREATE TABLE dog AS
SELECT pet, count(pet)
from students
where pet = 'dog'
group by pet;


CREATE TABLE bluedog_agg AS
SELECT song, count(song)
from bluedog_songs
group by song
order by count(song) desc;


CREATE TABLE instructor_obedience AS
SELECT seven, instructor, count(instructor)
from students
where seven = '7'
group by instructor;

