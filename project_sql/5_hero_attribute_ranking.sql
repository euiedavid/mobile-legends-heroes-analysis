/*
Question: Who are the top 10 heroes based on a combined offensive and defensive ranking?

- Rank heroes based on `phy_damage + magic_damage`.
- Rank heroes based on `phy_defence + mag_defence`.
- Use window functions to generate rankings.
- Compare their offensive and defensive rankings.


*/

WITH rankings AS (
SELECT
    name,
    primary_role,
    RANK() OVER (ORDER BY physical_damage + magic_damage DESC) AS damage_rank,
    RANK() OVER (ORDER BY physical_defense + magic_defense DESC) AS defense_rank
FROM mlbb_heroes
)

SELECT
    name,
    primary_role,
    damage_rank,
    defense_rank,
    damage_rank + defense_rank AS combined_stats
FROM rankings
ORDER BY
    combined_stats ASC,
    damage_rank ASC,
    defense_rank ASC
LIMIT 10;


/*
RESULTS:


[
  {
    "name": "Phoveus",
    "damage_rank": "5",
    "defense_rank": "3",
    "combined_stats": "8"
  },
  {
    "name": "Martis",
    "damage_rank": "10",
    "defense_rank": "3",
    "combined_stats": "13"
  },
  {
    "name": "Carmilla",
    "damage_rank": "14",
    "defense_rank": "3",
    "combined_stats": "17"
  },
  {
    "name": "Julian",
    "damage_rank": "10",
    "defense_rank": "12",
    "combined_stats": "22"
  },
  {
    "name": "Zilong",
    "damage_rank": "25",
    "defense_rank": "3",
    "combined_stats": "28"
  },
  {
    "name": "Grock",
    "damage_rank": "2",
    "defense_rank": "31",
    "combined_stats": "33"
  },
  {
    "name": "Atlas",
    "damage_rank": "2",
    "defense_rank": "31",
    "combined_stats": "33"
  },
  {
    "name": "Roger",
    "damage_rank": "10",
    "defense_rank": "23",
    "combined_stats": "33"
  },
  {
    "name": "Alpha",
    "damage_rank": "30",
    "defense_rank": "3",
    "combined_stats": "33"
  },
  {
    "name": "Ruby",
    "damage_rank": "30",
    "defense_rank": "3",
    "combined_stats": "33"
  }
]

*/