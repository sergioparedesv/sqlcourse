/** Cambiamos la sintaxis, para que el ID se autoincremente en la tabla. **/

CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);

/**Insertar Datos**/
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("walk", 60, 30, 100);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 200, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("run", 30, 250, 140);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("swim", 60, 300, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("aerobics", 15, 200, 150);

/**Consultar toda la tabla**/
SELECT * FROM exercise_logs;

/**Consultar donde las calorias sean mayor a 50(WHERE) y ordernarolos (ORDER BY)**/
SELECT * FROM exercise_logs WHERE calories > 50 ORDER BY calories;

/**Consulta cruzada donde busquemos calorias superiores a 50 y(AND) minutos menores a 60 **/
SELECT * from exercise_logs WHERE calories > 50 and minutes <60;

/**Consulta paralela, calorias > 50 o(OR) minutos menores a 60**/
SELECT * from exercise_logs WHERE calories > 50 OR minutes <60;