/* Put your data in here and query it! */

/*Sacar el promedio, minimo, maximo */
SELECT name, AVG(popularity) FROM marvels;
SELECT name, AVG(height_m) FROM marvels;
SELECT name, AVG(wight_kg) FROM marvels;
SELECT name, MIN(popularity) FROM marvels;
SELECT name, MIN(height_m) FROM marvels;
SELECT name, MIN(wight_kg) FROM marvels;
SELECT name, MAX(popularity) FROM marvels;
SELECT name, MAX(height_m) FROM marvels;
SELECT name, MIN(wight_kg) FROM marvels;

/*Sacar los que tienen menos de 70 kgr*/
SELECT name, weight_kg from marvels GROUP BY popularity HAVING weight_kg < 70;

/*Selecciona las ciudades de origen que son unicas */
SELECT hometown FROM marvels GROUP BY hometown HAVING COUNT(*) <=2;

/*Selecciona las ciuades de origen que se repiten. */
SELECT hometown FROM marvels GROUP BY hometown HAVING COUNT(*) >=2;

/*Los clasificaremos por tamaños */
SELECT name, COUNT(*),
	CASE
    	when height_m > 2.20 THEN "Gigante"    
    	when height_m > 1.85 THEN "Alto"
        WHEN height_m > 1.75 THEN "Mediano"
        ELSE "Bajito"
	end AS "Estatura_grados"
from marvels
GROUP BY Estatura_grados

/* Filtrar diferentes campos de lo mismo para disminuir resultados */
select * FROM marvels WHERE alignment = "Good" AND hometown = "USA" AND gender = "Male";


/*Filtro para establecer si alguien  es bueno o de usa*/
select * FROM marvels WHERE alignment = "Good" OR hometown = "USA";