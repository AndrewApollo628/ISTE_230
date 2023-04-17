DROP DATABASE IF EXISTS MLB;
CREATE DATABASE MLB;

USE MLB;

CREATE TABLE Team (
    Name VARCHAR(30),
    City VARCHAR(50),
    State VARCHAR(50),
    Stadium VARCHAR(50),
    League VARCHAR(2) CHECK(League = 'NL'or League = 'AL'),
    Divison VARCHAR(10) CHECK(Divison = 'East' or Divison = 'West' or Divison = 'Central'),
    Abbreviation VARCHAR(3),
    Team_id INT PRIMARY KEY
);

CREATE TABLE Player(
    Team_id INT,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    age INT,
    JerseyNum INT,
    Salary INT,
    Position VARCHAR(20),
    Bats CHAR CHECK(Bats = 'R' or Bats = 'L' or Bats = 'S'),
    Throws CHAR CHECK (Throws = 'R' or Throws = 'L' or Throws = 'S'),
    PRIMARY KEY (Team_id, JerseyNum),
    CONSTRAINT team_fk FOREIGN KEY(Team_id) REFERENCES Team(Team_id)
);

-- AL East Teams 
INSERT INTO Team VALUES("New York Yankees", 'New York', "New York", "Yankee Stadium", "AL", "East", "NYY", 1);
INSERT INTO Team VALUES("Boston Red Sox", 'Boston', "Massachusetts", "Fenway Park", "AL", "East", "BOS", 2);
INSERT INTO Team VALUES("Tampa Bay Rays", 'Tampa', "Florida", "Tropicana Field", "AL", "East", "TB", 3);
INSERT INTO Team VALUES("Baltimore Orioles", 'Baltimore', "Maryland", "Camden Yards", "AL", "East", "BAL", 4);
INSERT INTO Team VALUES("Toranto Blue Jays", 'Toranto', "Canada", "Rogers Centre", "AL", "East", "TOR", 5);

-- AL Central Teams 
INSERT INTO Team VALUES("Minnesota Twins", 'Minneapolis', "Minnesota", "Target Field", "AL", "Central", "MIN", 6);
INSERT INTO Team VALUES("Cleveland Guardians", 'Cleveland', "Ohio", "Progressive Field", "AL", "Central", "CLE", 7);
INSERT INTO Team VALUES("Chicago White Sox", 'Chicago', "Illinois", "Guaranteed Rate Feild", "AL", "Central", "CWS", 8);
INSERT INTO Team VALUES("Detriot Tigers", 'Detriot', "Michigan", "Comerica Park", "AL", "Central", "DET", 9);
INSERT INTO Team VALUES("Kansas City Royals", 'Kansas City', "Missouri", "Kauffman Stadium", "AL", "Central", "KC", 10);

-- AL West Teams 
INSERT INTO Team VALUES("Texas Rangers", 'Arlington', "Texas", "Globe Life Field", "AL", "West", "TEX", 11);
INSERT INTO Team VALUES("Seattle Mariners", 'Seattle', "Washington", "T-Mobile Park", "AL", "West", "SEA", 12);
INSERT INTO Team VALUES("Los Angeles Angels", 'Los Angeles', "California", "Angel Stadium of Anaheim", "AL", "West", "LAA", 13);
INSERT INTO Team VALUES("Houston Astros", 'Houston', "Texas", "Minute Maid Park", "AL", "West", "HOU", 14);
INSERT INTO Team VALUES("Oakland Athletics", 'Oakland', "California", "Oakland-Alameda County Coliseum", "AL", "West", "OAK", 15);

-- NL East Teams
INSERT INTO Team VALUES("New York Mets", 'New York', "New York", "Citi Field", "NL", "East", "NYM", 0);
INSERT INTO Team VALUES("Atlanta Braves", 'Atlanta', "Georgia", "Truist Park", "NL", "East", "ATL", 16);
INSERT INTO Team VALUES("Miami Marlins", 'Miami', "Florida", "LoanDepot Park", "NL", "East", "MIA", 17);
INSERT INTO Team VALUES("Washington Nationals", 'Washington', "D.C.", "Nationals Park", "NL", "East", "WAS", 18);
INSERT INTO Team VALUES("Philadelphia Phillies", 'Philadelphia', "Pennsylvania", "Citizens Bank Park", "NL", "East", "PHI", 19);

-- NL Central Teams
INSERT INTO Team VALUES("Milwaukee Brewers", 'Milwaukee', "Wisconsin", "American Family Feild", "NL", "Central", "MIL", 20);
INSERT INTO Team VALUES("Chicago Cubs", 'Chicago', "Illinois", "Wrigley Field", "NL", "Central", "CHC", 21);
INSERT INTO Team VALUES("Pittsburg Pirates", 'Pittsburg', "Pennsylvania", "PNC Park", "NL", "Central", "PIT", 22);
INSERT INTO Team VALUES("St. Louis Cardinals", 'St. Louis', "Missouri", "Bush Stadium", "NL", "Central", "STL", 23);
INSERT INTO Team VALUES("Cincinnati Reds", 'Cincinnati', "Ohio", "Great American Ball Park", "NL", "Central", "CIN", 24);

-- NL West Teams
INSERT INTO Team VALUES("Arizona Dimoundbacks", 'Phoenix', "Arizona", "Chase Field", "NL", "West", "ARI", 25);
INSERT INTO Team VALUES("Los Angeles Dodgers", 'Los Angeles', "California", "Dodger Stadium", "NL", "West", "LAD", 26);
INSERT INTO Team VALUES("San Diego Padres", 'San Diego', "California", "Petco Park", "NL", "West", "SD", 27);
INSERT INTO Team VALUES("San Francisco Giants", 'San Francisco', "California", "Oracle Park", "NL", "West", "SF", 28);
INSERT INTO Team VALUES("Colorado Rockies", 'Denver', "Colorado", "Coors Field", "NL", "West", "COL", 29);

-- Random MLB Players 
INSERT INTO Player VALUES(1, "Anthony", "Rizzo", 33, 48, 20000000, "1B", 'L', 'L');
INSERT INTO Player VALUES(19, "Trea", "Turner", 29, 8, 27272727, "SS", 'R', 'R');
INSERT INTO Player VALUES(26, "Clayton", "Kershaw", 35, 22, 31000000, "SP", 'L', 'L');
INSERT INTO Player VALUES(1, "Gerrit", "Cole", 32, 45, 36000000, "SP", 'R', 'R');
INSERT INTO Player VALUES(24, "Joey", "Votto", 39, 19, 25000000, "1B", 'L', 'R');
INSERT INTO Player VALUES(14, "Alex", "Bregman", 29, 2, 20000000, "3B", 'R', 'R');
INSERT INTO Player VALUES(26, "Mookie", "Betts", 30, 50, 20000000, "RF", 'R', 'R');
INSERT INTO Player VALUES(6, "Jorge", "Polanco", 29, 11, 51500000, "2B/SS", 'S', 'R');
INSERT INTO Player VALUES(19, "Bryce", "Harper", 30, 3, 26000000, "RF", 'L', 'R');
INSERT INTO Player VALUES(19, "Nolan", "Arenado", 32, 28, 32500000, "3B", 'R', 'R');
INSERT INTO Player VALUES(0, "Fransisco", "Lindor", 29, 12, 34100000, "SS", 'S', 'R');
INSERT INTO Player VALUES(17, "Sixto", "Sanchez", 24, 73, 700000, "SP", 'S', 'R');
INSERT INTO Player VALUES(2, "Trevor", "Story", 30, 10, 20000000, "SS", 'R', 'R');
INSERT INTO Player VALUES(16, "Willson", "Contreras", 30, 40, 10000000, "C", 'R', 'R');
INSERT INTO Player VALUES(13, "Mike", "Trout", 31, 27, 35450000, "CF", 'R', 'R');
INSERT INTO Player VALUES(20, "Christian", "Yelich", 31, 22, 22000000, "LF", 'L', 'R');
INSERT INTO Player VALUES(4, "Adley", "Rutschman", 25, 35, 733900, "C", 'S', 'R');
INSERT INTO Player VALUES(22, "David", "Bednar", 28, 51, 7450000, "RP", 'R', 'R');

-- Selected all data from the strong entity 
SELECT * FROM Team;

-- Selected all data from the weak entity 
SELECT * FROM Player;

c
-- Scenerio: Team travel managers wants to know what city's the upcoming road trip will be in 
--           The team will be facing the Rangers and the Twins. They need the city and stadium name so they can 
--           find close aiprot and hotels for the teams players.
SELECT name as "Team Name", CONCAT(city, ",", State) as "Location", Stadium FROM team
    WHERE name like '%Rangers' or name like '%Twins'; 