CREATE USER shoes;
CREATE DATABASE shoes;
\connect shoes

-- CREATE TABLES
CREATE TABLE shoes (
        id SERIAL PRIMARY KEY,
        name VARCHAR (64) NOT NULL
);

CREATE TABLE truetosize (
        shoes_id integer NOT NULL,
        truetosize smallint NOT NULL
);

CREATE INDEX shoes_id_idx ON truetosize (shoes_id);

-- CREATE FOREIGN KEYS
ALTER TABLE truetosize
        ADD CONSTRAINT truetosize_shoes_fk 
        FOREIGN KEY(shoes_id)
        REFERENCES shoes (id) MATCH FULL;
									
-- GRANT USER PRIVILEGES
GRANT SELECT, INSERT ON TABLE shoes, truetosize TO shoes;

-- Populate shoes table
INSERT INTO shoes (name) VALUES
	('Jordan 4 Retro Raptors'),
	('adidas NMD Hu Pharrell Solar Pack Red'),
	('Vans Authetic Slim Red'),
	('adidas Yeezy Boost 350 V2 Butter'),
	('LeBron 6 Bred'),
	('Air Force 1 Low Travis Scott Sail'),
	('ADIDAS YEEZY POWERPHASE')
