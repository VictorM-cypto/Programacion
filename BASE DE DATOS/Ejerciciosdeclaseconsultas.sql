USE reservas;

-- Mostrar todas las columnas de todas las filas de la tabla usuarios
SELECT *
FROM usuarios;

-- Mostrar los nombres de todos los usuarios --
SELECT nombre
FROM usuarios;

-- Mostrar el listado de usuarios sin repeticiones --
SELECT DISTINCT nombre
FROM usuarios;

-- Mostrar los polideportivos que hay en zaragoza --
SELECT *
FROM polideportivos
WHERE ciudad= 'Zaragoza';

-- Mostrar un listado de los usuarios ordenados por apellidos y no por nombre --
-- El orden por defecto es ascendente --
SELECT *
FROM usuarios
ORDER BY apellidos, nombre;

-- Mostrar el listado anterior, pero apellidos se ordenara descendentemente y nombre ascendentemente --
SELECT *
FROM usuarios
ORDER BY apellidos DESC, nombre ASC;

-- Mostramos los nombres de los usuarios usando un alias para el nombre
SELECT nombre "Nombre de usuario"
FROM usuarios;

-- Creamos una columna calculada con el alias precio_iva
SELECT id,codigo, tipo, precio, 1.21 * precio "precio_iva"
FROM pistas;

-- Muestra todos los usuarios que no sean Zaragoza
SELECT *
FROM usuarios
WHERE ciudad != 'Zaragoza';

-- Muestra aquellos usuarios con un id mayor a 10 y que sean de la ciudad de Zaragoza
SELECT *
FROM usuarios
WHERE id > 10 AND ciudad = 'Zaragoza';

-- Muestra aquellos usuarios que sean de la ciudad de Zaragoza o de Huesca
SELECT *
FROM usuarios
WHERE ciudad = 'Zaragoza' OR ciudad = 'Huesca';

-- Muestra aquellos usuarios que no sean de la ciudad de Zaragoza 
SELECT *
FROM usuarios
WHERE NOT ciudad = 'Zaragoza';

-- Nombre de los usuarios que están en una ciudad  
-- cuyo nombre empieza por Z y tiene 8 caractertes

SELECT *
FROM usuarios
WHERE ciudad LIKE 'Z________';

-- Nombre de los polideportivos que están en una ciudad cuyo nombre empieza por Z
SELECT nombre
FROM polideportivos
WHERE ciudad LIKE 'Z%';

-- Nombre de los polideportivos que están en una ciudad cuyo nombre tenga una 'a' en la 2ª posición y una 't0 en la 4ª posicion.
SELECT nombre
FROM polideportivos
WHERE ciudad LIKE '_a_t%';

-- Nombre y apellidos de los usuarios que no indicaron su fecha de macimiento
SELECT nombre apellidos
FROM usuarios WHERE fecha_nacimiento IS NULL;

-- Nombre y apellidos de los usuarios que indicaron su fecha de nacimiento
SELECT nombre apellidos
FROM usuarios WHERE fecha_nacimiento IS NOT NULL;

-- Muestra los polideportivos que se encuentran en la ciudad de Zaragoza,
-- Huesca y Teruel.

SELECT *
FROM polideportivos
WHERE (ciudad = 'Zaragoza') OR (ciudad = 'Huesca') OR (ciudad = 'Teruel');

SELECT *
FROM polideportivos
WHERE ciudad IN ('Zaragoza', 'Huesca', 'Teruel');

-- Muestra los polideportivos que no se encuentran en la ciudad de Zaragoza,
-- Huesca y Teruel.

SELECT *
FROM polideportivos
WHERE ciudad NOT IN ('Zaragoza', 'Huesca', 'Teruel');

-- Muestra los uduarios nacidos en el año 2013 --
SELECT *
FROM usuarios
WHERE fecha_nacimiento BETWEEN '2013-01-01' AND fecha_nacimiento >= '2013-12-31' ;

-- Muestra los usuarios no nacidos en el año 2013 --
SELECT *
FROM usuarios
WHERE fecha_nacimiento NOT BETWEEN '2013-01-01' AND fecha_nacimiento >= '2013-12-31' ;

-- Muestra en una sola columna los apellidos y los nombres de los usuarios ordenados
-- por apellidos y nombre.

SELECT CONCAT(apellidos, ',', nombre) AS 'Apellidos y nombre'
FROM usuarios
ORDER BY apellidos, nombre;

-- Mostrar las 10 primeras filas de la tabla usuarios ordenadas por apellidos y nombre
SELECT *
FROM usuarios
ORDER BY apellidos, nombre
LIMIT 10;

-- Número de polideportivos en Zaragoza --
SELECT COUNT(*) AS "Num Polideportivos" FROM polideportivos WHERE ciudad = 'Zaragoza';

-- Cuanto dinero costaria alquilar todas las pistas del polideportivo
-- cuyo id es 23
SELECT SUM(precio) FROM pistas WHERE id_poideportivo = 23;

-- Cuanto vale la pista más barata?
SELECT * FROM pistas ORDER BY precio LIMIT 1;

SELECT min(precio) AS "Pista más barata" FROM pistas;

-- Cuanto vale la pista más cara --
SELECT max(precio) AS "Pista más barata" FROM pistas;

-- Cual es el precio promedio de las pistas --
SELECT AVG(precio) AS "Precio promedio" FROM pistas;

-- Funcion UPPER()
-- Convierte una cadena de caracteres a matuscula
SELECT UPPER('SQL es un lenguaje de consulta estructurado');

-- Funcion LOWER()
-- Convierte una cadena de caracteres a minusculo
SELECT LOWER('SQL es un lenguaje de consulta estructurado');

-- Funcion LENGTH()
-- Devuelve la longitud de una cadena de caracteres
SELECT LENGTH('SQL es un lenguaje de consulta estructurado');

-- Funcion CONCAT()
-- Concadena dos cadenas de caracteres
SELECT CONCAT('SQL es un lenguaje de consulta estructurado');

-- Funcion TRIM()
-- Elimina los espacios iniciales y finales de una cadena de caracteres determinada
-- Sustituye el caracter 'A' por el caracter 'C' en el texto.
SELECT REPLACE ('ABC ABC ABC', 'AB', ' ');

-- Funcion REVERSE()
-- Invierte una cadena de caracteres.
SELECT REVERSE ('AGALAM');

-- Funcion NOW()
-- Devuelve fecgha y hora actual
SELECT NOW();

-- Funcion ROUND()
-- Devuelve un vaor numérico, redondeando a a longitus o precisión especificadas.alter
-- Redondea el numero a dos decimales
SELECT ROUND(235.415, 2);
