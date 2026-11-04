SHOW CHARACTER SET;

SHOW COLLATION;

USE world;

SELECT @@character_set_database, @@collation_database;
CREATE DATABASE ejemplo1;

USE ejemplo1;
CREATE TABLE alumno (
    dni CHAR(9),
    nombre VARCHAR(20),
    apellidos VARCHAR(50),
    fecha_nac DATE,
    domicilio VARCHAR(100),
    telefono VARCHAR(12)
);

INSERT INTO alumno VALUES ('24567890', 'Antonio', 'Martínez Rodríguez', '2001-01-01',
                            'Larios 7 29001 Málaga', '951324567'); 