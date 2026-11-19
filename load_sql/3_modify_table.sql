-- load dataset
COPY mlbb_heroes
FROM 'C:\Users\admin\Desktop\Data Analysis\mobile-legends-heroes-analysis\dataset\Mlbb_Heroes.csv'
DELIMITER ',' CSV HEADER;


-- due to permission concerns, the data was loaded using the PSQ TOOL in PgAdmin4
--\copy mlbb_heroes FROM 'C:\Users\admin\Desktop\Data Analysis\mobile-legends-heroes-analysis\dataset\Mlbb_Heroes.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');


-- alter data type of release_date from DATE to TEXT
ALTER TABLE mlbb_heroes
ALTER COLUMN release_date TYPE TEXT;

-- alter data type of hp_regen from INT to NUMERIC (decimal points)
ALTER TABLE mlbb_heroes
ALTER COLUMN hp_regen TYPE NUMERIC(10,2);

SELECT *
FROM mlbb_heroes;