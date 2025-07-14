-- TABLA: TYPES
CREATE TABLE types(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(10) NOT NULL
);

CREATE SEQUENCE types_seq START WITH 1;

CREATE OR REPLACE TRIGGER types_pk
BEFORE INSERT ON types
FOR EACH ROW

BEGIN
    SELECT types_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: CLASIFICATIONS
CREATE TABLE clasifications(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(35) NOT NULL
);

CREATE SEQUENCE clasifications_seq START WITH 1;

CREATE OR REPLACE TRIGGER clasifications_pk
BEFORE INSERT ON clasifications
FOR EACH ROW

BEGIN
    SELECT clasifications_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: STATUS
CREATE TABLE status(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(20) NOT NULL
);

CREATE SEQUENCE status_seq START WITH 1;

CREATE OR REPLACE TRIGGER status_pk
BEFORE INSERT ON status
FOR EACH ROW

BEGIN
    SELECT status_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: SEASONS
CREATE TABLE seasons(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(10) NOT NULL
);

CREATE SEQUENCE seasons_seq START WITH 1;

CREATE OR REPLACE TRIGGER seasons_pk
BEFORE INSERT ON seasons
FOR EACH ROW

BEGIN
    SELECT seasons_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: SOURCES
CREATE TABLE sources(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(15) NOT NULL
);

CREATE SEQUENCE sources_seq START WITH 1;

CREATE OR REPLACE TRIGGER sources_pk
BEFORE INSERT ON sources
FOR EACH ROW

BEGIN
    SELECT sources_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: LICENSORS
CREATE TABLE licensors(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(50) NOT NULL
);

CREATE SEQUENCE licensors_seq START WITH 1;

CREATE OR REPLACE TRIGGER licensors_pk
BEFORE INSERT ON licensors
FOR EACH ROW

BEGIN
    SELECT licensors_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: PRODUCERS
CREATE TABLE producers(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(50) NOT NULL
);

CREATE SEQUENCE producers_seq START WITH 1;

CREATE OR REPLACE TRIGGER producers_pk
BEFORE INSERT ON producers
FOR EACH ROW

BEGIN
    SELECT producers_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: STUDIOS
CREATE TABLE studios(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(50) NOT NULL
);

CREATE SEQUENCE studios_seq START WITH 1;

CREATE OR REPLACE TRIGGER studios_pk
BEFORE INSERT ON studios
FOR EACH ROW

BEGIN
    SELECT studios_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: GENRES
CREATE TABLE genres(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(20) NOT NULL
);

CREATE SEQUENCE genres_seq START WITH 1;

CREATE OR REPLACE TRIGGER genres_pk
BEFORE INSERT ON genres
FOR EACH ROW

BEGIN
    SELECT genres_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: GENDERS
CREATE TABLE genders(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(10) NOT NULL
);

CREATE SEQUENCE genders_seq START WITH 1;

CREATE OR REPLACE TRIGGER genders_pk
BEFORE INSERT ON genders
FOR EACH ROW

BEGIN
    SELECT genders_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: NATIONS
CREATE TABLE nations(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(30) NOT NULL
);

CREATE SEQUENCE nations_seq START WITH 1;

CREATE OR REPLACE TRIGGER nations_pk
BEFORE INSERT ON nations
FOR EACH ROW

BEGIN
    SELECT nations_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: USERS
CREATE TABLE users(
	id NUMBER(7) PRIMARY KEY,
    username VARCHAR2(80) NOT NULL,
    birthday DATE,
    joined DATE,
    total_entries NUMBER NOT NULL,
    mean_score FLOAT NOT NULL,
    gender_id NUMBER NOT NULL,
    nation_id NUMBER NOT NULL,
    FOREIGN KEY (gender_id) REFERENCES genders(id),
    FOREIGN KEY (nation_id) REFERENCES nations(id)
);

CREATE SEQUENCE users_seq START WITH 1;

CREATE OR REPLACE TRIGGER users_pk
BEFORE INSERT ON users
FOR EACH ROW

BEGIN
    SELECT users_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: ANIMES
CREATE TABLE animes(
	id NUMBER(7) PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    english_name VARCHAR2(100),
    other_name NVARCHAR2(80),
    synopsis VARCHAR2(4000) NOT NULL,
    episodes NUMBER,
    scored_by NUMBER NOT NULL,
    members NUMBER NOT NULL,
    favorites NUMBER NOT NULL,
    popularity NUMBER NOT NULL,
    duration NUMBER NOT NULL,
    score FLOAT NOT NULL,
    image_url VARCHAR2(300) NOT NULL,
    rank NUMBER NOT NULL,
    type_id NUMBER NOT NULL,
    clasification_id NUMBER NOT NULL,
    status_id NUMBER NOT NULL,
    season_id NUMBER NOT NULL,
    source_id NUMBER NOT NULL,
    FOREIGN KEY (type_id) REFERENCES types(id),
    FOREIGN KEY (clasification_id) REFERENCES clasifications(id),
    FOREIGN KEY (status_id) REFERENCES status(id),
    FOREIGN KEY (season_id) REFERENCES seasons(id),
    FOREIGN KEY (source_id) REFERENCES sources(id)
);

CREATE SEQUENCE animes_seq START WITH 1;

CREATE OR REPLACE TRIGGER animes_pk
BEFORE INSERT ON animes
FOR EACH ROW

BEGIN
    SELECT animes_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: RECOMMENDATIONS
CREATE TABLE recommendations(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(30) NOT NULL
);

CREATE SEQUENCE recommendations_seq START WITH 1;

CREATE OR REPLACE TRIGGER recommendations_pk
BEFORE INSERT ON recommendations
FOR EACH ROW

BEGIN
    SELECT recommendations_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: REVIEWS
CREATE TABLE reviews(
	id NUMBER(7) PRIMARY KEY,
    comments VARCHAR2(1000),
    anime_id NUMBER NOT NULL,
    user_id NUMBER NOT NULL,
    recommendation_id NUMBER NOT NULL,
    FOREIGN KEY (anime_id) REFERENCES animes(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (recommendation_id) REFERENCES recommendations(id)
);

CREATE SEQUENCE reviews_seq START WITH 1;

CREATE OR REPLACE TRIGGER reviews_pk
BEFORE INSERT ON reviews
FOR EACH ROW

BEGIN
    SELECT reviews_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: WATCH_STATUS
CREATE TABLE watch_status(
	id NUMBER(7) PRIMARY KEY,
	name VARCHAR2(30) NOT NULL
);

CREATE SEQUENCE watch_status_seq START WITH 1;

CREATE OR REPLACE TRIGGER watch_status_pk
BEFORE INSERT ON watch_status
FOR EACH ROW

BEGIN
    SELECT watch_status_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: LISTS
CREATE TABLE lists(
	id NUMBER(7) PRIMARY KEY,
	rating NUMBER NOT NULL,
    rewatched NUMBER NOT NULL,
    user_id NUMBER NOT NULL,
    anime_id NUMBER NOT NULL,
    watch_status_id NUMBER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (anime_id) REFERENCES animes(id),
    FOREIGN KEY (watch_status_id) REFERENCES watch_status(id)
);

CREATE SEQUENCE lists_seq START WITH 1;

CREATE OR REPLACE TRIGGER lists_pk
BEFORE INSERT ON lists
FOR EACH ROW

BEGIN
    SELECT lists_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: ANIMES_LICENSORS
CREATE TABLE animes_licensors(
	id NUMBER(7) PRIMARY KEY,
	licensor_id NUMBER NOT NULL,
    anime_id NUMBER NOT NULL,
    FOREIGN KEY (licensor_id) REFERENCES licensors(id),
    FOREIGN KEY (anime_id) REFERENCES animes(id)
);

CREATE SEQUENCE animes_licensors_seq START WITH 1;

CREATE OR REPLACE TRIGGER animes_licensors_pk
BEFORE INSERT ON animes_licensors
FOR EACH ROW

BEGIN
    SELECT animes_licensors_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: ANIMES_PRODUCERS
CREATE TABLE animes_producers(
	id NUMBER(7) PRIMARY KEY,
	producer_id NUMBER NOT NULL,
    anime_id NUMBER NOT NULL,
    FOREIGN KEY (producer_id) REFERENCES producers(id),
    FOREIGN KEY (anime_id) REFERENCES animes(id)
);

CREATE SEQUENCE animes_producers_seq START WITH 1;

CREATE OR REPLACE TRIGGER animes_producers_pk
BEFORE INSERT ON animes_producers
FOR EACH ROW

BEGIN
    SELECT animes_producers_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: ANIMES_STUDIOS
CREATE TABLE animes_studios(
	id NUMBER(7) PRIMARY KEY,
	studio_id NUMBER NOT NULL,
    anime_id NUMBER NOT NULL,
    FOREIGN KEY (studio_id) REFERENCES studios(id),
    FOREIGN KEY (anime_id) REFERENCES animes(id)
);

CREATE SEQUENCE animes_studios_seq START WITH 1;

CREATE OR REPLACE TRIGGER animes_studios_pk
BEFORE INSERT ON animes_studios
FOR EACH ROW

BEGIN
    SELECT animes_studios_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/

-- TABLA: ANIMES_GENRES
CREATE TABLE animes_genres(
	id NUMBER(7) PRIMARY KEY,
	genre_id NUMBER NOT NULL,
    anime_id NUMBER NOT NULL,
    FOREIGN KEY (genre_id) REFERENCES genres(id),
    FOREIGN KEY (anime_id) REFERENCES animes(id)
);

CREATE SEQUENCE animes_genres_seq START WITH 1;

CREATE OR REPLACE TRIGGER animes_genres_pk
BEFORE INSERT ON animes_genres
FOR EACH ROW

BEGIN
    SELECT animes_genres_seq.NEXTVAL
    INTO   :new.id
    FROM   dual;
END;
/




drop table animes;
drop table animes_genres;
drop table animes_licensors;
drop table animes_producers;
drop table animes_studios;
drop table clasifications;
drop table genders;
drop table genres;
drop table licensors;
drop table lists;
drop table producers;
drop table recommendations;
drop table reviews;
drop table seasons;
drop table sources;
drop table status;
drop table studios;
drop table types;
drop table users;
drop table watch_status;