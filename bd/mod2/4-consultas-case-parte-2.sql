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

/*CASE */
/*
SELECCIONA tipo y frecuencia cardiaco. 
	CASO es la apertura de un switch
    	CUANDO frecuencia_cardiaca > 220-30 ENTONCES "por encima del maximo"
        CUANDO frecuencia_cardiaca > REDONDEAR (0.90*(220-30)) ENTONCES "debajo del rango" 
        CUANDO frecuencia_cardiaca > REDONDEAR (0.50*(220-30)) ENTONCES "dentro del rango"
        DE OTRO MODO "debajo del rango"
	TERMINAR COMO "la columna hr zone"
DE ejercicios de registros.
*/
SELECT type, heart_rate, 
	CASE
    	WHEN heart_rate > 220-30 THEN "above max"
        WHEN heart_rate > ROUND(0.50 * (220-30)) then "above target"
        WHEN heart_rate > ROUND(0.50 * (220-30)) THEN "within target"
        ELSE "below target"
	END as "hr_zone"
FROM exercise_logs;

/*CASE */
/*
SELECCIONA cuenta las filas hr_zone y publica type.
	CASO es la apertura de un switch
    	CUANDO frecuencia_cardiaca > 220-30 ENTONCES "por encima del maximo"
        CUANDO frecuencia_cardiaca > REDONDEAR (0.90*(220-30)) ENTONCES "debajo del rango" 
        CUANDO frecuencia_cardiaca > REDONDEAR (0.50*(220-30)) ENTONCES "dentro del rango"
        DE OTRO MODO "debajo del rango"
	TERMINAR COMO "la columna hr zone"
DE ejercicios de registros.
AGRUPAR POR hr_zone
*/
SELECT COUNT(*), type,
    CASE 
        WHEN heart_rate > 220-30 THEN "above max"
        WHEN heart_rate > ROUND(0.90 * (220-30)) THEN "above target"
        WHEN heart_rate > ROUND(0.50 * (220-30)) THEN "within target"
        ELSE "below target"
    END as "hr_zone"
FROM exercise_logs
GROUP BY hr_zone;