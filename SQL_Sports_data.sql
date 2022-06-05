-- 1. Create a table named ‘matches’ with appropriate data types for columns
CREATE TABLE matches(
	id	int,
    city varchar(50),	
    _date DATE,	
    player_of_match	varchar(100),
    venue varchar(50),		
    neutral_venue varchar(50),		
    team1 varchar(50),		
    team2 varchar(50),		
    toss_winner varchar(50),		
    toss_decision varchar(50),		
    winner varchar(50),	
    result varchar(50),		
    result_margin int,	
    eliminator varchar(50),		
    method varchar(50),		
    umpire1	varchar(50),	
    umpire2 varchar(50));
    SELECT * FROM matches;
-- 2. Create a table named ‘deliveries’ with appropriate data types for columns
CREATE TABLE deliveries(
	id	int,
    inning	int,
    _over int,	
    ball int,	
    batsman	varchar(30),
    non_striker	varchar(30),
    bowler	varchar(30),
    batsman_runs int,	
    extra_runs	int,
    total_runs	int,
    is_wicket	int,
    dismissal_kind	varchar(30),
    player_dismissed varchar(30),
    fielder	varchar(30),
    extras_type	varchar(30),
    batting_team varchar(30),	
    bowling_team varchar(30));
-- 5. Select the top 20 rows of the deliveries table.
SELECT * FROM deliveries LIMIT 20;
-- 6. Select the top 20 rows of the matches table.
SELECT * FROM matches LIMIT 20;
-- 7. Fetch data of all the matches played on 2nd May 2013.
SELECT * FROM matches WHERE _date = '2013-05-02';
-- 8. Fetch data of all the matches where the margin of victory is more than 100 runs
SELECT * FROM matches WHERE result_margin >= 100;
-- 9. Fetch data of all the matches where the final scores of both teams tied and order it in descending order of the date.
SELECT * FROM matches WHERE result = 'tie'  ORDER BY _date desc; 

-- 10. Get the count of cities that have hosted an IPL match
SELECT count(DISTINCT city) FROM matches ;



SELECT DISTINCT result FROM matches;
SELECT city,count(id) as count FROM matches GROUP BY city;
