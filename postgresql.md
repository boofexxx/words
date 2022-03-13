# [POSTGRESQL](https://www.postgresql.org/docs/current/index.html)

## Some of The Most Important SQL Commands
* SELECT - extracts data from a database
* UPDATE - updates data in a database
* DELETE - deletes data from a database
* INSERT INTO - inserts new data into a database
* CREATE DATABASE - creates a new database
* ALTER DATABASE - modifies a database
* DROP DATABASE - deletes a database
* CREATE TABLE - creates a new table
* ALTER TABLE - modifies a table
* DROP TABLE - deletes a table
* CREATE INDEX - creates an index (search key)
* DROP INDEX - deletes an index
* ORDER BY - The ORDER BY keyword is used to sort the result-set in ascending or descending order

## LINKS:
* Types - https://www.postgresql.org/docs/14/datatype.html
* Operators - https://www.postgresql.org/docs/6.3/c09.htm
* [Logical Operators](https://www.postgresql.org/docs/14/functions-logical.html) - AND, OR, NOT

## Examples:
```sql
    CREATE TABLE person (
        id BIGSERIAL NOT NULL PRIMARY KEY,
        first_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,
        gender VARCHAR(6) NOT NULL,
        date_of_birth DATE NOT NULL,
        email VARCHAR(150),
    )
    DROP TABLE name;
```

### INSERT:
```sql
    INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);
    INSERT INTO table_name VALUES (value1, value2, value3, ...);

    INSERT INTO person (
        first_name,
        last_name,
        gender,
        date_of_birth)
    VALUES ('Anne', 'Smith', 'Female', DATE '1988-01-09');
    INSERT INTO person (id, first_name, last_name, gender, email, date_of_birth, country_of_birth)
        VALUES (1, 'Russ', 'Ruddoch', 'Male', 'kittie@gmail.com', date '1952-09-25', 'Norway')
        ON CONFLICT (id) DO NOTHING;
    INSERT INTO person (id, first_name, last_name, gender, email, date_of_birth, country_of_birth)
        VALUES (1, 'Rus', 'Ruddoch', 'Male', 'kitti@gmail.com', date '1952-09-25', 'Norway')
        ON CONFLICT (id) DO UPDATE SET email = EXCLUDED.email, first_name = EXCLUDED.first_name;
```

### DELETE:
```sql
    DELETE FROM table_name WHERE condition;

    DELETE FROM person; // would delete every row
    DELETE FROM person WHERE id = 1;
```

### ALTERING TABLE:
```sql
    ALTER TABLE person DROP CONSTRAINT person_pkey;
    ALTER TABLE person ADD PRIMARY KEY (id);
    ALTER TABLE person ADD CONSTRAINT unique_email UNIQUE (email);
    ALTER TABLE person ADD UNIQUE (email); // name of constraint is defined by postgresql
    ALTER TABLE person ADD CONSTRAINT gender_constraint CHECK (gender = 'Female' OR gender = 'Male');
    ALTER TABLE person DROP COLUMN car_id;
```

### UPDATE:
```sql
    UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition; 

    UPDATE person SET email = 'someone@gmail.com'; // would update every row
    UPDATE person SET email = 'someone@gmail.com' WHERE id = 1;
    UPDATE person SET first_name = 'Kitie', last_name = 'Rowwetie', email = 'kittie@gmail.com' WHERE id = 5;
    UPDATE person SET car_id = 8 WHERE id = 1;
```

### JOIN:
```sql
    SELECT * FROM person JOIN car ON person.car_id = car.id;
    SELECT person.first_name, car.make, car.model FROM person JOIN car ON person.car_id = car.id;
    SELECT * FROM person LEFT JOIN car ON person.car_id = car.id;
    SELECT * FROM person JOIN car USING(car_uid);
```

### SELECT:
```sql
    SELECT column1, column2, ... FROM table_name; -- * means all the fields available in the table
    SELECT DISTINCT column1, column2, ... FROM table_name; -- The SELECT DISTINCT statement is used to return only distinct (different) values.
    SELECT column1, column2, ... FROM table_name WHERE condition; -- The WHERE clause is used to filter records
    SELECT * FROM person;
    SELECT * FROM person WHERE gender = 'Female' AND (country_of_birth = 'Poland' OR country_of_birth = 'China');
    SELECT * FROM person WHERE country_of_birth = 'China' OR country_of_birth = 'France' OR country_of_birth = 'Brazil'
    SELECT * FROM person WHERE country_of_birth IN ('China', 'France', 'Brazil');
    SELECT * FROM person WHERE date_of_birth BETWEEN DATE '2000-01-01' AND '2015-01-01';
    SELECT * FROM person WHERE email LIKE '%@bloomberg.com'; // % - any characters. case sensitive
    SELECT * FROM person WHERE country ILIKE 'p%'; // case insensitive
    SELECT column_name FROM table_name ORDER BY column_name [ASC/DESC];
    SELECT DISTINCT column_name FROM table_name ORDER BY column_name [ASC/DESC];
    SELECT * FROM Customers ORDER BY Country ASC, CustomerName DESC;
    SELECT * FROM person WHERE car_id IS NOT NULL;

    SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth ORDER BY country_of_birth;
    SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) > 5 ORDER BY country_of_birth;
```

### COPY:
```sql
    \copy (SELECT * FROM person JOIN car ON person.car_id = car.id) TO ~/s CSV HEADER;
```

### FUNCTIONS: MAX, MIN, AVG, ROUND, SUM, NOW, AGE
```sql
    SELECT MAX(*) FROM car;
    SELECT MIN(*) FROM car;
    SELECT AVG(*) FROM car;
    SELECT ROUND(AVG(*)) FROM car;
    SELECT make, MIN(price) FROM car GROUP BY make;
    SELECT make, SUM(price) FROM car GROUP BY make;
    SELECT NOW();
    SELECT NOW()::DATE; SELECT NOW()::TIME;
    SELECT AGE(NOW(), date_of_birth);

    SELECT * FROM person LIMIT 10;
    SELECT * FROM person FETCH FIRST 10 ROW ONLY;
    SELECT * FROM person OFFSET 5 LIMIT 10;
```

### OPERATORS
```sql
    SELECT 1 <> 1 ### 1 != 1 == f(false)

    SELECT 10 - 2;
    SELECT 10 + 2;
    SELECT 10 * 2;
    SELECT 10 / 2;
    SELECT 10^2;
    SELECT 5!;
    SELECT 10 % 3;

    SELECT *, ROUND(price * .10, 2), ROUND(price - (price * .10), 2) FROM car;
    SELECT id, make, model, price AS original_price, ROUND(price * .10, 2) AS ten_percent, ROUND(price - (price * .10), 2) AS eighty_percent FROM car;

    SELECT COALESCE(null, null, 1, 10) AS number;
    SELECT COALESCE(email, 'NOT PROVIDED') FROM person;
    SELECT NULLIF(email, null) FROM person;
    SELECT COALESCE(10 / NULLIF(0, 0), 0);

    SELECT NOW() - INTERVAL '1 YEAR'; // YEAR, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND...
    SELECT (NOW() - INTERVAL '1 YEAR')::DATE; // to get not timestamp but date
    SELECT EXTRACT(YEAR FROM NOW()); // you can extract year, month, etc. also DOW
    SELECT EXTRACT(YEAR FROM AGE(NOW(), date_of_birth)) FROM person;
```
