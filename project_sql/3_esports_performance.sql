/*
Question: Which heroes have the highest esports win rates?

- Calculate win rate using `esport_wins` and `esport_loss`.
- Include total matches played.
- Return the top 10 heroes by win rate.
- Exclude heroes with zero esports appearances.

*/

SELECT
    name,
    primary_role,
    esport_wins,
    esport_loss,
    esport_wins + esport_loss AS total_matches_played,
    ROUND(
        (esport_wins::NUMERIC /
        NULLIF(esport_wins + esport_loss, 0)) * 100,
        2
    ) AS win_rate
FROM mlbb_heroes
WHERE
    esport_wins + esport_loss > 0
ORDER BY
    win_rate DESC
LIMIT 10;


/*
RESULTS:

[
  {
    "name": "Faramis",
    "primary_role": "Support",
    "esport_wins": 162,
    "esport_loss": 118,
    "total_matches_played": 280,
    "win_rate": "57.86"
  },
  {
    "name": "Franco",
    "primary_role": "Tank",
    "esport_wins": 360,
    "esport_loss": 267,
    "total_matches_played": 627,
    "win_rate": "57.42"
  },
  {
    "name": "Kadita",
    "primary_role": "Mage",
    "esport_wins": 198,
    "esport_loss": 148,
    "total_matches_played": 346,
    "win_rate": "57.23"
  },
  {
    "name": "Wanwan",
    "primary_role": "Marksman",
    "esport_wins": 413,
    "esport_loss": 312,
    "total_matches_played": 725,
    "win_rate": "56.97"
  },
  {
    "name": "Miya",
    "primary_role": "Marksman",
    "esport_wins": 18,
    "esport_loss": 14,
    "total_matches_played": 32,
    "win_rate": "56.25"
  },
  {
    "name": "Vexana",
    "primary_role": "Mage",
    "esport_wins": 5,
    "esport_loss": 4,
    "total_matches_played": 9,
    "win_rate": "55.56"
  },
  {
    "name": "Moskov",
    "primary_role": "Marksman",
    "esport_wins": 42,
    "esport_loss": 36,
    "total_matches_played": 78,
    "win_rate": "53.85"
  },
  {
    "name": "Hanabi",
    "primary_role": "Marksman",
    "esport_wins": 14,
    "esport_loss": 12,
    "total_matches_played": 26,
    "win_rate": "53.85"
  },
  {
    "name": "Lolita",
    "primary_role": "Support",
    "esport_wins": 508,
    "esport_loss": 436,
    "total_matches_played": 944,
    "win_rate": "53.81"
  },
  {
    "name": "Eudora",
    "primary_role": "Mage",
    "esport_wins": 78,
    "esport_loss": 67,
    "total_matches_played": 145,
    "win_rate": "53.79"
  }
]

*/