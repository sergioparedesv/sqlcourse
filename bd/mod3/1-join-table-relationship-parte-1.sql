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
    
/*tabla 1*/
SELECT * FROM students;

/*tabla 2*/
SELECT * FROM student_grades;

/* Unir tablas */
/* cross join */
select * FROM students, student_grades;

/* implicit inner join */
SELECT * FROM student_grades, students  WHERE student_grades.student_id= student_id

/* explicit inner join - JOIN 
En esta columna especificaremos als columnas que deben coincidir.
*/
SELECT * from students
	JOIN student_grades
    on student_id = student_grades.student_id;