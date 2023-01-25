CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);

INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 10, 30, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 200, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 165, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("tree climbing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("tree climbing", 25, 72, 80);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("rowing", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("hiking", 60, 80, 85);

SELECT * FROM exercise_logs;

/*
Verificaremos si mi ritmo cardiaco no esta por encima del maximo en algun ejercicio 
Le pediremos que nos cuente cuantas veces a pasado, utilizando operadores matematicos
*/

SELECT count(*) FROM exercise_logs WHERE heart_rate > 220 - 30;

/* Revisaremos si mi corazón alcanza la sona objetivo del ritmo cardiaco */

/* 50%-90% OF MAX */

/*Tra: (SELECCIONE CONTAR(todas las columnas) DE la tabla registro de ejercicios 
DONDE el ritmo cardiaco este REDONDEADO entre el 50% Y el 90%*/
SELECT COUNT(*) FROM exercise_logs WHERE heart_rate >= ROUND(0.50 *(220-30)) AND ROUND(0.90 * (220-30));

