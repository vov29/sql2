INSERT INTO music (id, name_music)
VALUES (1, 'Рок'), 
(2, 'Джаз'),
(3, 'Поп');
INSERT INTO singer (id, name_singer)
VALUES (1, 'Кино'),
(2, 'Наутилус'),
(3, 'Майкл Джексон'),
(4, 'Нина Симон');
INSERT INTO music_singer (name_singer, name_music)
VALUES (1, 1),
(2, 1),
(3, 3),
(4, 2);
INSERT INTO album (id, name_album, year)
VALUES (1, 'Thriller', '1983-01-01'),
(2, 'I Put a Spell on You', '1965-01-01'),
(3, 'Князь тишины', '1989-01-01'),
(4, 'Группа крови', '1988-01-01');
INSERT INTO album_singer (id_album, id_singer)
VALUES (1, 3),
(2, 4),
(3, 2),
(4, 1);
INSERT INTO track (id, name, duration, id_album) VALUES (1, 'Billie Jean', '00:04:50', 1),
(2, 'The Girl Is Mine', '00:03:41', 1),
(3, 'Я хочу быть с тобой', '00:04:20', 3),
(4, 'Feeling Good', '00:02:57', 2),
(5, 'Группа крови', '00:04:44', 4);

INSERT INTO collection_track (id_collection, name, year, id_track)
VALUES (1, 'Папка 1', '1990-01-01', 1),
(2, 'Папка 2', '2000-01-01', 3),
(3, 'Папка 3', '2005-01-01', 5),
(4, 'Папка 4', '1999-01-01', 4),
(5, 'Папка 1', '1990-01-01', 2),
(6, 'Папка 2', '2000-01-01', 4),
(7, 'Папка 3', '2005-01-01', 3),
(8, 'Папка 4', '1999-01-01', 2);
