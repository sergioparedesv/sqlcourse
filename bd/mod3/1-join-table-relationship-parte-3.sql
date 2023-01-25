CREATE TABLE students (id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    birthdate TEXT);

INSERT INTO students (first_name, last_name, email, phone, birthdate)
    VALUES ("Peter", "Rabbit", "peter@rabbit.com", "555-6666", "2002-06-24");
INSERT INTO students (first_name, last_name, email, phone, birthdate)
    VALUES ("Alice", "Wonderland", "alice@wonderland.com", "555-4444", "2002-07-04");
    
CREATE TABLE student_grades (id INTEGER PRIMARY KEY,
    student_id INTEGER,
    test TEXT,
    grade INTEGER);

INSERT INTO student_grades (student_id, test, grade)
    VALUES (1, "Nutrition", 95);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (2, "Nutrition", 92);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (1, "Chemistry", 85);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (2, "Chemistry", 95);
    
SELECT * FROM student_grades;

/* cross join
-INCORRECTO
*/
SELECT * FROM student_grades, students;demo

/* inner join
Unión interna, utilizaremos EHERE para hacer una combinación interna implicita.
Entramos a la tabla student_grados, extraemos el student_id y lo hacemos igual a student.id
*/

SELECT * FROM student_grades, students
	where student_grades.student_id = students.id;demo
    
/* explicit inner join - JOIN 
SELECCIONAMOS todos los campos
DE la tabla estudiantes
UNIR con la tabla grado de estudiantes
EN donde la columna id de la tabla estudiantes sea igual a la columna estudiantes_id de la tabla estudiantes de grado.demo
*/

SELECT * FROM students
    JOIN student_grades
    ON students.id = student_grades.student_id;demo
    
/*
SELECCIONAMOS, primer nombre, apellido, email, test, grado, agregamos las tablas de donde salen.
DE la tabla estudiantes UNIDA con grado de estudiantes.
DONDE los grados sean por encima de 90
*/

SELECT students.first_name, students.last_name, students.email, student_grades.test, student_grades.grade FROM students
    JOIN student_grades
    ON students.id = student_grades.student_id
    WHERE grade > 90;
    
    