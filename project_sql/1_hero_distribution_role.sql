/*
Question: How many heroes belong to each primary role?

- Count the number of heroes for each primary_role.
- Calculate each role's percentage of the total hero population.
- Sort the results by the highest number of heroes.

*/



SELECT
    primary_role,
    COUNT(*) AS total_count,
    ROUND(
        COUNT(*) * 100.0 / 
        (SELECT COUNT(*) FROM mlbb_heroes)
    ) AS role_percentage
FROM
    mlbb_heroes
GROUP BY
    primary_role
ORDER BY
    total_count DESC;



/*

RESULTS:

[
  {
    "primary_role": "Fighter",
    "total_count": "33",
    "role_percentage": "29"
  },
  {
    "primary_role": "Mage",
    "total_count": "25",
    "role_percentage": "22"
  },
  {
    "primary_role": "Marksman",
    "total_count": "18",
    "role_percentage": "16"
  },
  {
    "primary_role": "Tank",
    "total_count": "16",
    "role_percentage": "14"
  },
  {
    "primary_role": "Assassin",
    "total_count": "13",
    "role_percentage": "11"
  },
  {
    "primary_role": "Support",
    "total_count": "9",
    "role_percentage": "8"
  }
]

*/