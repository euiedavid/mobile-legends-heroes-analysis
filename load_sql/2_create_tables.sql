# create table 
CREATE TABLE mlbb_heroes (
    name VARCHAR(255),
    title VARCHAR(255),
    voice_line VARCHAR(300),
    release_date DATE,
    primary_role VARCHAR(50),
    secondary_role VARCHAR(50),
    lane VARCHAR(50),
    hp INT,
    hp_regen INT,
    mana INT,
    mana_regen INT,
    physical_damage INT,
    magic_damage INT,
    physical_defense INT,
    magic_defense INT,
    movement_speed INT,
    esport_wins INT,
    esport_loss INT
);
