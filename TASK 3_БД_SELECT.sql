SELECT name,duration 
FROM track
WHERE duration = (SELECT MAX(duration) FROM track);
SELECT name, duration FROM track WHERE duration >= '00:03:30';

SELECT name FROM music_collection WHERE year BETWEEN '2018-01-01' AND '2020-12-31';
SELECT name_singer FROM singer WHERE name_singer NOT LIKE '% %' AND name_singer NOT LIKE '% % %';

INSERT INTO track (id, name, duration, id_album) 
VALUES (8, 'Justify my love', '00:04:59', 3);
SELECT name FROM track WHERE name LIKE '%мой%' OR name LIKE '%my%';
INSERT INTO collection_track (id_collection, id_track)
 VALUES (1,1),
 (2, 3),
 (3, 5),
 (4, 7),
 (1, 2),
 (2, 4),
 (3, 3),
 (4, 2);

SELECT music.name_music, count(music_singer.name_singer) 
  FROM music
  JOIN music_singer ON music.id = music_singer.name_music 
  GROUP BY music.name_music;
SELECT album.name_album, album.year, count(track.id_album) 
  FROM album
  JOIN track ON album.id = track.id_album
  WHERE album.year BETWEEN '1987-01-01' AND '1989-01-01'
  GROUP BY album.name_album, album.year;
SELECT album.name_album, AVG(track.duration)
  FROM album
  JOIN track ON album.id = track.id_album
  GROUP BY album.name_album;
SELECT singer.name_singer
  FROM album_singer
  JOIN singer ON singer.id = album_singer.id_singer
  JOIN album ON album_singer.id_album = album.id
  WHERE singer.name_singer NOT IN (SELECT singer.name_singer
  	FROM album_singer
  	JOIN singer ON singer.id = album_singer.id_singer
  	JOIN album ON album_singer.id_album = album.id
  	WHERE album.year = '2020-01-01');
SELECT collection_track.name FROM collection_track
JOIN track ON track.id = collection_track.id_track
JOIN album ON album.id = track.id_album
JOIN album_singer ON album.id = album_singer.id_album
JOIN singer ON singer.id = album_singer.id_singer
WHERE singer.name_singer = 'Кино' 
;


