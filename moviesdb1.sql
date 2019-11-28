use moviesdb;
CREATE TABLE  actor (
act_id		integer	NOT NULL,
act_fname		Char(20)		NOT NULL,
act_lname		Char(20)		Null,
act_gender		char(1) 		NOT NULL,
CONSTRAINT		actor_Pk		PRIMARY KEY(act_id)
);

CREATE TABLE  director (
dir_id		integer	NOT NULL,
dir_fname		Char(20)		NOT NULL,
dir_lname		Char(20)		Null,
CONSTRAINT		director_Pk		PRIMARY KEY(dir_id)
);

CREATE TABLE  movie_cast (
act_id		integer		NOT NULL,
mov_id		integer		NOT NULL,
mov_role		Char(20)	Null,
CONSTRAINT		movie_cast_Pk		PRIMARY KEY(act_id, mov_id),
FOREIGN KEY(act_id)
		REFERENCES		actor(act_id),
FOREIGN KEY(mov_id)
		REFERENCES		movie(mov_id)		
);

CREATE TABLE  movie_direction (
dir_id		integer		NOT NULL,
mov_id		integer		NOT NULL,
CONSTRAINT		movie_direction_Pk		PRIMARY KEY(dir_id, mov_id),
FOREIGN KEY(dir_id)
		REFERENCES		director(dir_id),
FOREIGN KEY(mov_id)
		REFERENCES		movie(mov_id)
);

CREATE TABLE  genres (
gen_id		integer		NOT NULL,
gen_title	char(20)	 NULL,
CONSTRAINT		genres_Pk		PRIMARY KEY(gen_id)
);

CREATE TABLE  movie_genres (
gen_id	integer		NOT NULL,
mov_id	integer	 NOT NULL,
CONSTRAINT		movie_genres_Pk		PRIMARY KEY(gen_id, mov_id),
FOREIGN KEY(gen_id)
		REFERENCES		genres(gen_id),
FOREIGN KEY(mov_id)
		REFERENCES		movie(mov_id)

);

CREATE TABLE  reviewer (
rev_id	integer		NOT NULL,
rev_name char(30)	 NULL,
CONSTRAINT	reviewer_PK		PRIMARY KEY(rev_id)
);

CREATE TABLE  ratings (
mov_id	integer		NOT NULL,
rev_id	integer	 NOT NULL,
rev_stars	integer	NOT NULL,
num_o_ratings	integer	NOT NULL,
CONSTRAINT		ratings_Pk		PRIMARY KEY(rev_id, mov_id),
FOREIGN KEY(rev_id)
		REFERENCES		reviewer(rev_id),
FOREIGN KEY(mov_id)
		REFERENCES		movie(mov_id)
);
CREATE TABLE  movie (
mov_id		integer	NOT NULL,
mov_title		Char(50)		NULL,
mov_lang		Char(50)		Null,
mov_year		integer 		NOT NULL,
mov_time		integer 		NOT NULL,
mov_dt_rel		date			NOT NULL,
mov_rel_country	char(5)			NULL,
CONSTRAINT		movie4_Pk		PRIMARY KEY(mov_id)
);



