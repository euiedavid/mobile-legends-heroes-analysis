/*
Question: How has the number of hero releases changed over the years?

- Extract the release year from `release_date`.
- Count the number of heroes released per year.
- Identify the year with the highest number of releases.
- Account for values containing only a year and values containing full dates.


*/

SELECT
    CASE
        WHEN release_date ~ '^\d{4}'
            THEN LEFT(release_date, 4)
        WHEN release_date ~ '^\d{2}-\d{2}-\d{4}$'
            THEN RIGHT(release_date, 4)
    END AS release_year,
    COUNT(*) AS hero_count
FROM
    mlbb_heroes
GROUP BY
    release_year
ORDER BY
    hero_count DESC;


/*
RESULTS:

[
  {
    "release_year": "2017",
    "hero_count": "25"
  },
  {
    "release_year": "2016",
    "hero_count": "24"
  },
  {
    "release_year": "2018",
    "hero_count": "22"
  },
  {
    "release_year": "2019",
    "hero_count": "16"
  },
  {
    "release_year": "2020",
    "hero_count": "11"
  },
  {
    "release_year": "2021",
    "hero_count": "11"
  },
  {
    "release_year": "2022",
    "hero_count": "5"
  }
]

*/