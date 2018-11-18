/* To Create Users Table*/
CREATE TABLE users
(
    id serial PRIMARY KEY,
    username VARCHAR(40) NOT NULL,
    password VARCHAR(255) NOT NULL
);

/* To Populate Users Table */
INSERT INTO users (username, password) VALUES ($1, $2) RETURNING *;

/* To Create session Table */
CREATE TABLE "session" 
(
  		"sid" varchar NOT NULL COLLATE "default",
		"sess" json NOT NULL,
		"expire" timestamp(6) NOT NULL
);

/* To Create songs Table */
CREATE TABLE songs
(
    id serial PRIMARY KEY,
    title varchar(50) NOT NULL,
    artist varchar(50) NOT NULL,
    lyrics varchar(n) NOT NULL
);

/* To populate the songs table */
INSERT INTO users (title, artist, lyrics) VALUES ($1, $2, $3);

/* To Create the scores Table */
CREATE TABLE scores
(
    songid INTEGER,
    userid INTEGER,
    timeInSeconds INTEGER
);

/* To populate the scores table */
INSERT INTO scores (songid, userid, timesec) VALUES ($1, $2, $3);




