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




