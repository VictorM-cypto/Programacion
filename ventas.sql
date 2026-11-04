DROP DATABASE IF EXISTS ventas;
CREATE DATABASE ventas CHARACTER SET latin1;
USE ventas;

CREATE TABLE cliente (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(25),
    primer_apellido VARCHAR(15) NOT NULL,
    ciudad VARCHAR(100),
    categoria INT UNSIGNED
);

CREATE TABLE comercial (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido1 VARCHAR(100) NOT NULL,
    apellido2 VARCHAR(100),
    ciudad VARCHAR(100),
    comision FLOAT
);

-- Una vez que ha ejecutado el script y ha creado la base de datos en MySQL Server, ¿qué sentencia SQL
-- debería ejecutar para modificar el encoding de la base de datos y utilizar utf8mb4 en lugar de latin1?
ALTER DATABASE ventas CHARACTER SET utf8mb4;

SHOW CREATE DATABASE ventas;
-- Modifique la columna nombre de la tabla cliente para que pueda almacenar cadenas de hasta 100
-- caracteres y para que no pueda ser NULL.

ALTER TABLE cliente MODIFY nombre VARCHAR(100) NOT NULL;

SHOW CREATE TABLE cliente;
