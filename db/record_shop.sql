DROP TABLE albums;
DROP TABLE artists;

CREATE TABLE artists (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  label VARCHAR(255)
  );

CREATE TABLE albums (
id SERIAL8 PRIMARY KEY,
name VARCHAR(255),
genre VARCHAR(255),
cover_art VARCHAR(255),
wholesale_price INT4,
retail_price INT4,
artist_id SERIAL8 REFERENCES artists(id),
stock_amount INT4
);