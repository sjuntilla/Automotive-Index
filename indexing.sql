DROP USER IF EXISTS indexed_car_user;

CREATE USER indexed_car_user;

DROP DATABASE IF EXISTS indexed_cars;

CREATE DATABASE indexed_cars OWNER indexed_car_user;

\c indexed_cars;
\i 'scripts/car_models.sql';
\i 'scripts/car_model_data.sql';
\i 'scripts/car_model_data.sql';
\i 'scripts/car_model_data.sql';
\i 'scripts/car_model_data.sql';
\i 'scripts/car_model_data.sql';
\i 'scripts/car_model_data.sql';
\i 'scripts/car_model_data.sql';
\i 'scripts/car_model_data.sql';
\i 'scripts/car_model_data.sql';
\i 'scripts/car_model_data.sql';
\timing
SELECT DISTINCT
    make_title
FROM
    car_models
WHERE
    make_code = 'LAM';

SELECT DISTINCT
    model_title
FROM
    car_models
WHERE
    make_code = 'NISSAN'
    AND model_code = 'GT-R';

SELECT DISTINCT
    COUNT(model_title)
FROM
    car_models
WHERE
    make_code = 'LAM';

SELECT DISTINCT
    COUNT(*)
FROM
    car_models
WHERE
    year BETWEEN 2010 AND 2015;

SELECT DISTINCT
    COUNT(*)
FROM
    car_models
WHERE
    year = 2010;

CREATE INDEX car_make ON car_models (make_code);

CREATE INDEX car_model ON car_models (model_code);

CREATE INDEX car_title ON car_models (model_title);

SELECT DISTINCT
    make_title
FROM
    car_models
WHERE
    make_code ~ 'LAM';

SELECT DISTINCT
    model_title
FROM
    car_models
WHERE
    make_code ~ 'NISSAN'
    AND model_code ~ 'GT-R';

SELECT DISTINCT
    COUNT(model_title)
FROM
    car_models
WHERE
    make_code ~ 'LAM';

SELECT DISTINCT
    COUNT(*)
FROM
    car_models
WHERE
    year BETWEEN 2010 AND 2015;

SELECT DISTINCT
    COUNT(*)
FROM
    car_models
WHERE
    year = 2010;

\timing
DROP USER indexed_car_user;

DROP DATABASE indexed_cars;

