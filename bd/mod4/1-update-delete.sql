/*Crea tablas */
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT);
    
CREATE TABLE diary_logs (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    date TEXT,
    content TEXT
    );
    
/* After user submitted their new diary log */
INSERT INTO diary_logs (user_id, date, content) VALUES (1, "2015-04-01",
    "I had a horrible fight with OhNoesGuy and I buried my woes in 3 pounds of dark chocolate.");
    
INSERT INTO diary_logs (user_id, date, content) VALUES (1, "2015-04-02",
    "We made up and now we're best friends forever and we celebrated with a tub of ice cream.");

/*consulta a la tabla */
SELECT * FROM diary_logs;

/*Actualizar la tabla por id */
UPDATE diary_logs SET content = "I had a horrible fight with OhNoesGuy" WHERE id = 1;

/*Otro update */
UPDATE diary_logs SET content = "I had a horrible fight with OhNoesGuy" WHERE user_id=1 AND date = "2015-04-01";
/* Consultar tablas */

SELECT * FROM diary_logs;

DELETE FROM diary_logs WHERE id = 1;

SELECT * FROM diary_logs;