-- Part 1 =======================

-- Drop DB if exists
DROP DATABASE IF EXISTS nba_db;


-- Create DB nba_db
CREATE DATABASE nba_db;

-- Connect to nba_db
\c nba_db;

-- Drop table if exists
DROP TABLE IF EXISTS players;

-- Create table here
CREATE TABLE players(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL,
  team VARCHAR (3) NOT NULL,
  games INTEGER NOT NULL,
  points INTEGER NOT NULL
);

-- Insert player here
INSERT INTO players(name, age, team, games, points)
VALUES('Anderson Verejao', 29, 'CLE', 25, 271);


-- Part 2 =======================
-- Uncomment COPY players statement and modify it with YOUR file path!


\COPY players(name, age, team, games, points) FROM '/Users/mfran/AppData/Local/Packages/CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc/LocalState/rootfs/home/mfran/workspace/ClassLession/nba_sql-master/nba_season_2011-2012.csv' DELIMITER ',' CSV;
1. SELECT * from  PLAYERS WHERE team = 'NYK';

2. SELECT * FROM players WHERE team = 'IND' AND age < 26;

3. SELECT * FROM players ORDER BY points ASC LIMIT 20; -- or  SELECT * FROM players ORDER BY points DESC LIMIT 20;

4. SELECT name, points/games AS points_per_game FROM players WHERE (points/game) >= 20;

5. SELECT AVG(age) FROM players; 

6. SELECT AVG(age) FROM players WHERE team = 'OKC';

7. SELECT AVG(age) FROM players WHERE games > 40;

8. SELECT team, SUM(points) FROM players GROUP BY team ORDER BY SUM(points) DESC;

9. SELECT age, AVG(points/games) FROM players GROUP BY age ORDER BY age DESC;

10. SELECT team, COUNT(name) FROM players WHERE points/games > 12 GROUP BY players.team ORDER BY COUNT(name) DESC;