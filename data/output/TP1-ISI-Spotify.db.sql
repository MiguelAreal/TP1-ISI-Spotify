BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "albums" (
	"id"	TEXT,
	"artist_id"	TEXT,
	"name"	TEXT,
	"release_date"	TEXT,
	"popularity"	INTEGER,
	"image_url"	TEXT,
	"total_tracks"	INTEGER,
	PRIMARY KEY("id"),
	CONSTRAINT "fk_artist_albums" FOREIGN KEY("artist_id") REFERENCES "artists"("id")
);
CREATE TABLE IF NOT EXISTS "artist_genres" (
	"id"	TEXT,
	"genre"	TEXT,
	PRIMARY KEY("id","genre"),
	CONSTRAINT "fk_artist_genre" FOREIGN KEY("id") REFERENCES "artists"("id")
);
CREATE TABLE IF NOT EXISTS "artists" (
	"id"	TEXT,
	"name"	TEXT,
	"popularity"	INTEGER,
	"followers"	INTEGER,
	"image_url"	TEXT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "tracks" (
	"name"	TEXT,
	"artist_id"	TEXT,
	"album_id"	TEXT,
	"popularity"	REAL,
	"danceability"	REAL,
	"key"	INTEGER,
	"loudness"	REAL,
	"mode"	INTEGER,
	"speechiness"	REAL,
	"acousticness"	REAL,
	"instrumentalness"	REAL,
	"liveness"	REAL,
	"valence"	BLOB,
	"tempo"	REAL,
	"duration_ms"	INTEGER,
	"energy"	REAL,
	PRIMARY KEY("name","artist_id","album_id"),
	CONSTRAINT "fk_id_album" FOREIGN KEY("album_id") REFERENCES "albums"("id"),
	CONSTRAINT "fk_id_tracks" FOREIGN KEY("artist_id") REFERENCES "artists"("id")
);
COMMIT;
