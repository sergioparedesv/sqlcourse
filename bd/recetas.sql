CREATE TABLE recetas (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    precio FLOAT,
    calorias INT,
    proteina FLOAT,
    carbohidratos FLOAT,
    grasas FLOAT,
    ingredientes VARCHAR(255)
);

INSERT INTO recetas (nombre, precio, calorias, proteina, carbohidratos, grasas, ingredientes) VALUES
("Pollo a la parrilla", 12.5, 350, 30, 15, 12, "pollo, sal, pimienta, aceite de oliva"),
("Arroz frito", 8.5, 400, 20, 50, 15, "Arroz, huevos, cebolla, ajo, aceite"),
("Spaghetti Bolognesa", 9.0, 500, 25, 60, 20, "Espagueti, carne molida, salsa de tomate, queso rallado, ajo"),
("Paella", 15.0, 600, 30, 70, 25, "Arroz, mariscos, pollo, chorizo, pimiento, cebolla, ajo"),
("Taco al pastor", 2.5, 200, 10, 15, 5, "tortillas, pastor, cebolla, piña, cilantro, limon"),
("Churros", 5.0, 400, 5, 60, 20, "Agua, harina, huevos, azúcar, aceite, sal"),
("Enchiladas", 7.5, 450, 20, 40, 15, "tortillas, pollo, queso, chile, crema, cebolla, cilantro"),
("Lasagna", 10.0, 550, 30, 50, 25, "lasaña, carne molida, salsa de tomate, queso ricotta, queso rallado, ajo, orégano"),
("Sushi", 20.0, 250, 20, 30, 10, "Arroz de sushi, salmón, aguacate, pepino"),
("Ramen", 15.0, 400, 25, 50, 20, "Fideos ramen, caldo, pollo, cebolla, zanahoria, cebolla verde, chile");