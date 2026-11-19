/*
Question: Which primary role has the highest average HP, physical damage, and physical defense?

- Group heroes by `primary_role`.
- Calculate the average HP, `phy_damage`, and `phy_defence`.
- Round averages to two decimal places.


*/


SELECT
    primary_role,
    ROUND(AVG(hp), 2) AS average_hp,
    ROUND(AVG(physical_damage), 2) AS average_physical_damage,
    ROUND(AVG(physical_defense), 2) AS average_physical_defense
FROM mlbb_heroes
GROUP BY
    primary_role
ORDER BY
    average_hp DESC;



/*
RESULTS:


[
  {
    "primary_role": "Tank",
    "average_hp": "2722.19",
    "average_physical_damage": "120.88",
    "average_physical_defense": "19.13"
  },
  {
    "primary_role": "Fighter",
    "average_hp": "2635.30",
    "average_physical_damage": "118.45",
    "average_physical_defense": "22.06"
  },
  {
    "primary_role": "Assassin",
    "average_hp": "2559.92",
    "average_physical_damage": "116.92",
    "average_physical_defense": "18.00"
  },
  {
    "primary_role": "Mage",
    "average_hp": "2523.16",
    "average_physical_damage": "111.48",
    "average_physical_defense": "17.76"
  },
  {
    "primary_role": "Marksman",
    "average_hp": "2490.78",
    "average_physical_damage": "111.17",
    "average_physical_defense": "17.11"
  },
  {
    "primary_role": "Support",
    "average_hp": "2462.56",
    "average_physical_damage": "118.33",
    "average_physical_defense": "18.78"
  }
]

*/
