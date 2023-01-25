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

CREATE TABLE student_projects (id INTEGER PRIMARY KEY,
    student_id INTEGER,
    title TEXT);
    
INSERT INTO student_projects (student_id, title)
    VALUES (1, "Carrotapault");
    

/* Cuando generamos esta tabla solo veremos el registro de un estudiante
Pues solo uno de ellos tiene proyectos.
*/
SELECT students.first_name, students.last_name, student_projects.title
	from students
    JOIN student_projects
    ON students.id = student_projects.student_id;
    
 /* Outer Join.
SELECCIONA las columnas de las dos tablas que quiere mostrar.
DE la unición entre estudiantes y proyectos de estudiante
IZQUIERDA conservar todos los datos OUTHER externo
EN donde tengan la misma ID
*/
SELECT students.first_name, students.last_name, student_projects.title
	from students
    LEFT OUTER JOIN student_projects
    ON students.id = student_projects.student_id;
    
SELECT students.first_name, students.last_name, student_projects.title
	from students
    LEFT OUTER JOIN student_projects
    ON students.id = student_projects.student_id;