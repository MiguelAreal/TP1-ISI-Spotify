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
	"id"	INTEGER,
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
INSERT INTO "albums" VALUES ('2oCs0DGTsRO98Gh5ZSl2Cx','6eUKZXaKkcviH0Ku9w2n3V','I Don''t Care (with Justin Bieber) [Loud Luxury Remix]','2019-06-14',32,'https://i.scdn.co/image/ab67616d0000b273f4338f8884b86baa61c62fbe',1);
INSERT INTO "albums" VALUES ('63rPSO264uRjW1X5E6cWv6','04gDigrS5kc9YWfZHwBETP','Memories (Dillon Francis Remix)','2019-12-13',31,'https://i.scdn.co/image/ab67616d0000b273ae7b1530cdba86016e5168db',1);
INSERT INTO "albums" VALUES ('1HoSmj2eLcsrR0vE9gThr4','1Xylc3o4UrD53lo9CvFvVg','All the Time (Don Diablo Remix)','2019-07-05',33,'https://i.scdn.co/image/ab67616d0000b2738176105a5fba3ea98cd3fbe1',1);
INSERT INTO "albums" VALUES ('1nqYsOef1yKKuGOVchbsk6','69GGBxA162lTqCwzJG5jLp','Call You Mine (Remixes)','2019-07-19',34,'https://i.scdn.co/image/ab67616d0000b27318df50312686d7ff71c90045',6);
INSERT INTO "albums" VALUES ('7m7vv9wlQ4i0LFuJiE2zsQ','4GNC7GD6oZMSxPGyXy4MNB','Someone You Loved (Future Humans Remix)','2019-03-05',51,'https://i.scdn.co/image/ab67616d0000b273ccbbc243b809803ac62ad49a',2);
INSERT INTO "albums" VALUES ('2yiy9cd2QktrNvWC2EUi0k','6eUKZXaKkcviH0Ku9w2n3V','Beautiful People (feat. Khalid) [Jack Wins Remix]','2019-07-11',29,'https://i.scdn.co/image/ab67616d0000b2737ee1eddc842188f064a14cbc',1);
INSERT INTO "albums" VALUES ('7INHYSeusaFlyrHSNxm8qH','6jJ0s89eD6GaHleKKya26X','Never Really Over (R3HAB Remix)','2019-07-26',28,'https://i.scdn.co/image/ab67616d0000b2734f90afbb26c460f7cc63b79a',1);
INSERT INTO "albums" VALUES ('6703SRPsLkS4bPtMFFJes1','20gsENnposVs2I4rQ5kvrf','Post Malone (feat. RANI) [GATTÜSO Remix]','2019-08-29',34,'https://i.scdn.co/image/ab67616d0000b2738dedf497ea069fe80d516395',1);
INSERT INTO "albums" VALUES ('7CvAfGvq4RlIwEbT9o8Iav','1vCWHaC5f2uS3yhpwWbIA6','Tough Love (Tiësto Remix)','2019-06-14',32,'https://i.scdn.co/image/ab67616d0000b273aa6c5d246f9521cdd05dcfc6',2);
INSERT INTO "albums" VALUES ('4QxzbfSsVryEQwvPFEV5Iu','7n2wHs1TKAczGzO7Dd2rGr','If I Can''t Have You (Gryffin Remix)','2019-06-20',41,'https://i.scdn.co/image/ab67616d0000b273d58106bbe19331fb4306a248',1);
INSERT INTO "artist_genres" VALUES ('6eUKZXaKkcviH0Ku9w2n3V','soft pop');
INSERT INTO "artist_genres" VALUES ('04gDigrS5kc9YWfZHwBETP','pop');
INSERT INTO "artist_genres" VALUES ('4GNC7GD6oZMSxPGyXy4MNB','soft pop');
INSERT INTO "artist_genres" VALUES ('6jJ0s89eD6GaHleKKya26X','pop');
INSERT INTO "artist_genres" VALUES ('20gsENnposVs2I4rQ5kvrf','tropical house');
INSERT INTO "artist_genres" VALUES ('1vCWHaC5f2uS3yhpwWbIA6','edm');
INSERT INTO "artists" VALUES ('6eUKZXaKkcviH0Ku9w2n3V','Ed Sheeran',89,122354136,'https://i.scdn.co/image/ab6761610000e5ebd55c95ad400aed87da52daec');
INSERT INTO "artists" VALUES ('04gDigrS5kc9YWfZHwBETP','Maroon 5',86,45587146,'https://i.scdn.co/image/ab6761610000e5ebf8349dfb619a7f842242de77');
INSERT INTO "artists" VALUES ('1Xylc3o4UrD53lo9CvFvVg','Zara Larsson',78,10872772,'https://i.scdn.co/image/ab6761610000e5eb11be9310ef4b23734c13b5c8');
INSERT INTO "artists" VALUES ('69GGBxA162lTqCwzJG5jLp','The Chainsmokers',82,21314077,'https://i.scdn.co/image/ab6761610000e5eb4567279fac84a0375c3d819b');
INSERT INTO "artists" VALUES ('4GNC7GD6oZMSxPGyXy4MNB','Lewis Capaldi',80,13938474,'https://i.scdn.co/image/ab6761610000e5ebdc9e707b0d0e591e08d3f549');
INSERT INTO "artists" VALUES ('6jJ0s89eD6GaHleKKya26X','Katy Perry',85,38187541,'https://i.scdn.co/image/ab6761610000e5eb0988562f78810e47a6e3325f');
INSERT INTO "artists" VALUES ('20gsENnposVs2I4rQ5kvrf','Sam Feldt',67,801506,'https://i.scdn.co/image/ab6761610000e5ebf090afe7b8ea177c248d4f5f');
INSERT INTO "artists" VALUES ('1vCWHaC5f2uS3yhpwWbIA6','Avicii',80,23413252,'https://i.scdn.co/image/ab6761610000e5ebae07171f989fb39736674113');
INSERT INTO "artists" VALUES ('7n2wHs1TKAczGzO7Dd2rGr','Shawn Mendes',83,45598111,'https://i.scdn.co/image/ab6761610000e5eb58b4b9419486550f6fda0535');
INSERT INTO "tracks" VALUES ('I Don''t Care (with Justin Bieber) - Loud Luxury Remix','6eUKZXaKkcviH0Ku9w2n3V','2oCs0DGTsRO98Gh5ZSl2Cx',0.0,0.0,0,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0,0.0);
INSERT INTO "tracks" VALUES ('Memories - Dillon Francis Remix','04gDigrS5kc9YWfZHwBETP','63rPSO264uRjW1X5E6cWv6',-2.94530029861045e-06,-2.94530029861045e-06,-2.94530029861045e-06,-2.94530029861045e-06,-2.94530029861045e-06,-2.94530029861045e-06,-2.94530029861045e-06,-2.94530029861045e-06,-2.94530029861045e-06,-2.94530029861045e-06,-2.94530029861045e-06,-2.94530029861045e-06,-2.94530029861045e-06);
INSERT INTO "tracks" VALUES ('All the Time - Don Diablo Remix','1Xylc3o4UrD53lo9CvFvVg','1HoSmj2eLcsrR0vE9gThr4',0.0,0.0,0,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0,0.0);
INSERT INTO "tracks" VALUES ('Call You Mine - Keanu Silva Remix','69GGBxA162lTqCwzJG5jLp','1nqYsOef1yKKuGOVchbsk6',0.0,0.0,0,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0,0.0);
INSERT INTO "tracks" VALUES ('Someone You Loved - Future Humans Remix','4GNC7GD6oZMSxPGyXy4MNB','7m7vv9wlQ4i0LFuJiE2zsQ',0.0,0.0,0,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0,0.0);
INSERT INTO "tracks" VALUES ('Beautiful People (feat. Khalid) - Jack Wins Remix','6eUKZXaKkcviH0Ku9w2n3V','2yiy9cd2QktrNvWC2EUi0k',0.0,0.0,0,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0,0.0);
INSERT INTO "tracks" VALUES ('Never Really Over - R3HAB Remix','6jJ0s89eD6GaHleKKya26X','7INHYSeusaFlyrHSNxm8qH',0.0,0.0,0,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0,0.0);
INSERT INTO "tracks" VALUES ('Post Malone (feat. RANI) - GATTÜSO Remix','20gsENnposVs2I4rQ5kvrf','6703SRPsLkS4bPtMFFJes1',0.0,0.0,0,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0,0.0);
INSERT INTO "tracks" VALUES ('Tough Love - Tiësto Remix / Radio Edit','1vCWHaC5f2uS3yhpwWbIA6','7CvAfGvq4RlIwEbT9o8Iav',0.0,0.0,0,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0,0.0);
INSERT INTO "tracks" VALUES ('If I Can''t Have You - Gryffin Remix','7n2wHs1TKAczGzO7Dd2rGr','4QxzbfSsVryEQwvPFEV5Iu',0.0,0.0,0,0.0,0,0.0,0.0,0.0,0.0,0.0,0.0,0,0.0);
COMMIT;
