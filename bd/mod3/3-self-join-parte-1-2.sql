CREATE TABLE students (id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    birthdate TEXT,
    buddy_id INTEGER);

INSERT INTO students 
    VALUES (1, "Peter", "Rabbit", "peter@rabbit.com", "555-6666", "2002-06-24", 2);
INSERT INTO students 
    VALUES (2, "Alice", "Wonderland", "alice@wonderland.com", "555-4444", "2002-07-04", 1);
INSERT INTO students 
    VALUES (3, "Aladdin", "Lampland", "aladdin@lampland.com", "555-3333", "2001-05-10", 4);
INSERT INTO students 
    VALUES (4, "Simba", "Kingston", "simba@kingston.com", "555-1111", "2001-12-24", 3);

/* Paso 1, unir consigo misma */
SELECT students.first_name, students.last_name, buddies.email as buddy_email
	FROM students 
	JOIN students buddies
    
    
/*Unir la tabla con si misma, pero para especificar que se tomara el email del 
compañero y no el del usuario, tenemos que utilizar un alias */
/* Self Join */
SELECT students.first_name, students.last_name, buddies.email as buddy_email
	FROM students 
	JOIN students buddies
    ON students.buddy_id = buddies.id;
    