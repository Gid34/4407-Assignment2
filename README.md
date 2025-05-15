# Board Game Data Analysis Tools
A collection of bash scripts for analyzing and processing board game datasets. 
## Overview
This collection of bash scripts is designed to help analyze board game data from structured files. Each script serves a specific purpose in the data processing and analysis pipeline:

1. **empty_cells**: Counts and reports the number of empty cells in each column of a dataset.
2. **preprocess**: Converts semicolon-delimited files to tab-separated format with various data cleaning operations.
3. **analysis**: Analyzes board game data to find popular mechanics, domains, and correlations between ratings and other attributes.

## I. empty_cells
Counts the number of empty cells in each column of a dataset, helping identify data quality issues.

### Usage
_./empty_cells bgg_dataset.txt_

### Example Output:
/ID: 16

Name: 0

Year Published: 1

Min Players: 0

Max Players: 0

Play Time: 0

Min Age: 0

Users Rated: 0

Rating Average: 0

BGG Rank: 0

Complexity Average: 0

Owned Users: 23

Mechanics: 1598

Domains: 10159

## II. preprocess
Converts semicolon-delimited files to tab-separated format with various data cleaning operations.


### Usage
_./preprocess sample.txt_

_./preprocess sample1.txt_

### Output
Creates a new TSV file with the same base name as the input file.

### Example Output:
/ID	Name	Year Published	Min Players	Max Players	Play Time	Min Age	Users Rated	Rating Average	BGG Rank	Complexity Average	Owned Users	Mechanics	Domains
8355	Drive to the Baltic!	2000	1	2	180	12	39	7.42	10776	3.08	190	Chit-Pull System, Hexagon Grid	Wargames
213491	The Legend of the Wendigo	2017	2	6	10	6	177	6.00	10777	1	383	Cooperative Game, Memory	
213492	Ace of Aces: Jet Eagles	1990	2	2	20	10	110	6.26	10778	2	10	18	Bodgy
4276	Across the Potomac	1994	2	2	120	12	97	6.28	10779	2.44	434	Dice Rolling, Grid Movement, Hexagon Grid, Simulation	Wargames
138973	Camelot: The Build	2013	1	5	45	10	167	6.19	10780	2.10	396	Tile Placement	

## III. analysis
Analyzes board game data to extract insights about game mechanics, domains, and statistical correlations.

### Usage
_./analysis sample.tsv_

### Example Output:
 
The most popular game mechanics is Hand Management found in 48 games

The most game domain is Strategy Games found in 77 games
 
The correlation between the year of publication and the average rating is 0.226

The correlation between the complexity of a game and its average rating is 0.426

## License
This project is licensed under the MIT License - see the LICENSE file for details.
