/** Lista de estudiantes
Tendra un ID
Tendran un nombre
Tendra un semestre
Tendra una carrera
**/

CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT, career TEXT, year INTEGER );

INSERT INTO students VALUES (1, "Carlos Gómez", "computer engineer",4);
INSERT INTO students VALUES (2, "Pedro Villamizar", "physical",1);
INSERT INTO students VALUES (3, "Daniel Fonda", "Business administrator",2);
SELECT * FROM students ;