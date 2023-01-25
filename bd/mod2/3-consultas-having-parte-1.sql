CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);

INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 30, 115, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 10, 45, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 200, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 165, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("tree climbing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("tree climbing", 25, 72, 80);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("rowing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("hiking", 60, 80, 85);

/*Consulta báse */ 
SELECT * FROM exercise_logs;

/*Agrupar la consulta con GROUP BY*/
SELECt type, SUM(calories) FROM exercise_logs GROUP BY type;

/* AS para renombrar columnas */
SELECt type, SUM(calories) AS total_calories FROM exercise_logs GROUP BY type;

/*
No vemos el ciclismo por que la clausula ehre consulta individualmente y busca una por una cual la supera.
*/
SELECT type, SUM(calories) AS total_calories FROM exercise_logs
    WHERE calories > 150
    GROUP BY type;
    
/*
Utilizaremos la clausula havin sobre el campo total_calories para obtener el resultadodemo
*/

SELECT type, SUM(calories) AS total_calories FROM exercise_logs
    GROUP BY type
    HAVING total_calories > 150
    ;
    

