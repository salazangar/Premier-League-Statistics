psql 

CREATE DATABASE prem_stats;

GRANT ALL PRIVILEGES ON DATABASE "prem_stats" TO username; 
GRANT ALL PRIVILEGES ON DATABASE "prem_stats" TO postgres;

CREATE TABLE player_data (
    player_name VARCHAR(100),
    nation VARCHAR(50),
    position VARCHAR(10),
    age INTEGER,
    matches_played INTEGER,
    starts INTEGER,
    minutes_played FLOAT,
    goals FLOAT,
    assists FLOAT,
    penalties_scored FLOAT,
    yellow_cards FLOAT,
    red_cards FLOAT,
    expected_goals FLOAT,
    expected_assists FLOAT,
    team_name VARCHAR(100)
);

SELECT * FROM player_data;

--copy the csv file over to postgres
\COPY player_data FROM 'destination_to_file' DELIMITER ',' CSV HEADER; 

SELECT * FROM player_data;