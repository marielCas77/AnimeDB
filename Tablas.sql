CREATE TABLE types (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(10) NOT NULL
);

CREATE TABLE clasifications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(35) NOT NULL
);

CREATE TABLE status (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(20) NOT NULL
);

CREATE TABLE seasons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(10) NOT NULL
);

CREATE TABLE sources (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(15) NOT NULL
);

CREATE TABLE licensors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE producers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE studios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE genres (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(20) NOT NULL
);

CREATE TABLE genders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(10) NOT NULL
);

CREATE TABLE nations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(80) NOT NULL,
    birthday DATE,
    joined DATE,
    total_entries INTEGER NOT NULL,
    mean_score FLOAT NOT NULL,
    gender_id INTEGER NOT NULL,
    nation_id INTEGER NOT NULL,
    FOREIGN kEY (gender_id) REFERENCES genders(id),
    FOREIGN kEY (nation_id) REFERENCES nations(id)

);

CREATE TABLE animes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL,
    english_name VARCHAR(100),
    other_name NVARCHAR(80),
    synopsis VARCHAR(10000) NOT NULL,
    episodes INTEGER,
    scored_by INTEGER NOT NULL,
    members INTEGER NOT NULL,
    favorites INTEGER NOT NULL,
    popularity INTEGER NOT NULL,
    duration INTEGER NOT NULL,
    score FLOAT NOT NULL,
    image_url VARCHAR(300) NOT NULL,
    rank INTEGER NOT NULL,
    type_id INTEGER NOT NULL,
    clasification_id INTEGER NOT NULL,
    status_id INTEGER NOT NULL,
    season_id INTEGER NOT NULL,
    source_id INTEGER NOT NULL,
    FOREIGN kEY (type_id) REFERENCES types(id),
    FOREIGN kEY (clasification_id) REFERENCES clasifications(id),
    FOREIGN kEY (status_id) REFERENCES status(id),
    FOREIGN kEY (season_id) REFERENCES seasons(id),
    FOREIGN kEY (source_id) REFERENCES sources(id)
);

CREATE TABLE recommendations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    comments VARCHAR(1000),
    anime_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    recommendation_id INTEGER NOT NULL,
    FOREIGN kEY (anime_id) REFERENCES animes(id),
    FOREIGN kEY (user_id) REFERENCES users(id),
    FOREIGN kEY (recommendation_id) REFERENCES recommendations(id)
);

CREATE TABLE watch_status (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE lists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rating INTEGER NOT NULL,
    rewatched INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    anime_id INTEGER NOT NULL,
    watch_status_id INTEGER NOT NULL,
    FOREIGN kEY (user_id) REFERENCES users(id),
    FOREIGN kEY (anime_id) REFERENCES animes(id),
    FOREIGN kEY (watch_status_id) REFERENCES watch_status(id)
    
);

CREATE TABLE animes_licensors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    licensor_id INTEGER NOT NULL,
    anime_id INTEGER NOT NULL,
    FOREIGN kEY (licensor_id) REFERENCES licensors(id),
    FOREIGN kEY (anime_id) REFERENCES animes(id)
);

CREATE TABLE animes_producers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    producer_id INTEGER NOT NULL,
    anime_id INTEGER NOT NULL,
    FOREIGN kEY (producer_id) REFERENCES producers(id),
    FOREIGN kEY (anime_id) REFERENCES animes(id)
);

CREATE TABLE animes_studios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    studio_id INTEGER NOT NULL,
    anime_id INTEGER NOT NULL,
    FOREIGN kEY (studio_id) REFERENCES studios(id),
    FOREIGN kEY (anime_id) REFERENCES animes(id)
);

CREATE TABLE animes_genres (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    genre_id INTEGER NOT NULL,
    anime_id INTEGER NOT NULL,
    FOREIGN kEY (genre_id) REFERENCES genres(id),
    FOREIGN kEY (anime_id) REFERENCES animes(id)
);