CREATE TABLE tienda (id INTEGER PRIMARY KEY, name TEXT, cantidad INTEGER, pasillo INTEGER, precio INTEGER);

INSERT INTO tienda VALUES(1, "Chocolate", 20, 1, 20000);
INSERT INTO tienda VALUES(2, "Leche", 3, 2, 6000);
INSERT INTO tienda VALUES(3, "Pan", 30, 3, 9000);
INSERT INTO tienda VALUES(4, "Papel higienico", 12, 4, 2400);
INSERT INTO tienda VALUES(5, "Platano", 4, 1, 2000);
INSERT INTO tienda VALUES(6, "Papa", 20, 2, 4000);
INSERT INTO tienda VALUES(7, "Gaseosa", 4, 3, 10000);
INSERT INTO tienda VALUES(8, "Pasteles", 24, 4, 7200);
INSERT INTO tienda VALUES(9, "Embutidos", 4, 1, 8000);
INSERT INTO tienda VALUES(10, "Paquetes Salchichas", 2, 2, 16000);
INSERT INTO tienda VALUES(11, "Arroz", 10, 3, 16000);
INSERT INTO tienda VALUES(12, "Lentejas", 3, 4, 6000);
INSERT INTO tienda VALUES(13, "Frijol", 3, 1, 7500);
INSERT INTO tienda VALUES(14, "Jugos", 4, 2, 8000);
INSERT INTO tienda VALUES(15, "Jabón", 8, 3, 16000);

CREATE TABLE comprador (id INTEGER PRIMARY KEY, name TEXT, compras INTEGER);

INSERT INTO comprador VALUES(1, "Sergio", 20000);
INSERT INTO comprador VALUES(2, "Carlos", 6000);
INSERT INTO comprador VALUES(3, "Andrés", 9000);