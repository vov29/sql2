CREATE TABLE IF NOT EXISTS singer (
	id INT PRIMARY KEY,
	name_singer VARCHAR (60) NOT NULL
	);
CREATE TABLE music (
	id INT PRIMARY KEY,
	name_music VARCHAR(60) NOT NULL
);
CREATE TABLE music_singer (
	name_singer INT REFERENCES singer (id),
	name_music INT REFERENCES music (id)
	);
CREATE TABLE IF NOT EXISTS album (
	id INT PRIMARY KEY,
	name_album VARCHAR (200) NOT NULL,
	year DATE
);
CREATE TABLE IF NOT EXISTS album_singer (id_album INT REFERENCES album (id), id_singer INT REFERENCES singer (id)
);
CREATE TABLE IF NOT EXISTS track (id INT PRIMARY KEY,
	name VARCHAR (60),
	duration TIME,
	id_album INT REFERENCES album (id)
	);
CREATE TABLE IF NOT EXISTS collection_track (id_collection INT, name VARCHAR (60) NOT NULL, 
	year DATE, 
	id_track INT REFERENCES track (id)
);
