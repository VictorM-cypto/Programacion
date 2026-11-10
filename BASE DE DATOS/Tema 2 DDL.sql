SHOW DATABASES;

CREATE DATABASE ejemplo2 CHARACTER SET utf8;

USE ejemplo2;

SELECT @@character_set_database, @@collation_database;

SHOW CREATE DATABASE ejemplo2;

DROP DATABASE ejemplo2;

DROP DATABASE IF EXIST proveedores;

CREATE DATABASE proveedores CHARSET utf8mb4;

USE proveedores

CREATE TABLE categoria (
    -- La columna id es una clave primaria entera si signo con autoincremento
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    -- La columna nombre es un varchar de longitud 100 que no admite valores nulos
    nombre  VARCHAR (100) NOT NULL
)

CREATE TABLE pieza (
    -- La columna id es una clave primaria entera sin signo con autoincremento
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    -- La columna nombre es un varchar de longitud 100 que no admite valores nulos 
    nombre VARCHAR(100) NOT NULL,
    -- La columna color es un varchar de longitud 50 que no admite valores nulos 
    color VARCHAR(50) NOT NULL,
    -- La columna precio guarda valores decimales de 7 dígitos en total y 2 decimales.
    -- No admite valores nulos y estos valores serán mayores que 0.
    precio DECIMAL (7,2) NOT NULL CHECK (precio > 0),
    -- La columna id_categoria almacenará valores enteros sin signo.
    -- No admite valores nulos
    id_categoría INT UNSIGNED NOT NULL,
    -- La columna id_categoría es una clave foránea que referencia a la columna id de la tabla categoría,
    -- que es la clave primaria
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);
-- Se inserta una fila en la tabla categoría
INSERT INTO categoria (nombre) VALUES ("Herramienta");
-- Muestra las filas que hay en la tabla categoría
SELECT * FROM categoría;

INSERT INTO pieza(nombre, color, precio, id_categoria)
VALUES("Sierra", "Amarilla", 20, 2);
SELECT * FROM pieza;

-- Se crea la base de datos de una agencia de viajes
DROP DATABASE agenca CHARSET utf8mb4;
USE agnecia;

CREATE TABLE turista (
    nombre VARCHA(50) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(9) NOT NULL 
);

INSERT INTO turista(nombre, apellidos, direccion, telefono)
VALUES ("Ana", "Castillo Perez", "C\ Larios", 611345111),
("Juan", "Lopez Perez", "C\ San Miguel", 689345111);

CREATE TABLE hotel (
    nombre VARCHA(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    ciudad VARCHAR(25) NOT NULL,
    plazas INT UNSIGNED NOT NULL DEFAULT 0,
    telefono VARCHAR(9) NOT NULL 
);

INSERT INTO hotel(nombre, direccion, ciudad, plazas, telefono)
VALUES ("Mirador del mar", "Paseos Marítimo", "Marbella", 600, "952234567"),
("ACB Bookings", "La Carihuela", "Torremolinos", 350, "952334846")

SELECT * FROM hotel;

CREATE TABLE reserva (
id_turista INT UNSIGNED NOT NULL,
id_hotel INT UNSIGNED NOT NULL,
fecha_entrada DATETIME NOT NULL,
fecha_salida DATETIME NOT NULL,
regimen ENUM('MP', 'PC'),
PRIMARY KEY (id_turista,id_hotel),
FOREIGN KEY (id_turista) REFERENCES turista(id) ON DELETE NULL,
FOREIGN KEY (id_hotel) REFERENCES hotel(id)
);

INSERT INTO reserva(id_turista, id_hotel, fecha_entrada, fecha_sañida, regimen)
VALUES (1, 1, "2026-07-20", "PC"), (2, 2, "2026-08-04", "2026-08-10 12:30", "PC");

SELECT FROM reserva;


-- BASE DE DATOS CON LA OPCIÓN DE "ON DELETE SET NULL"

DROP DATABASE agenca CHARSET utf8mb4;
USE agnecia;

CREATE TABLE turista (
    nombre VARCHA(50) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(9) NOT NULL 
);

INSERT INTO turista(nombre, apellidos, direccion, telefono)
VALUES ("Ana", "Castillo Perez", "C\ Larios", 611345111),
("Juan", "Lopez Perez", "C\ San Miguel", 689345111);

CREATE TABLE hotel (
    nombre VARCHA(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    ciudad VARCHAR(25) NOT NULL,
    plazas INT UNSIGNED NOT NULL DEFAULT 0,
    telefono VARCHAR(9) NOT NULL 
);

INSERT INTO hotel(nombre, direccion, ciudad, plazas, telefono)
VALUES ("Mirador del mar", "Paseos Marítimo", "Marbella", 600, "952234567"),
("ACB Bookings", "La Carihuela", "Torremolinos", 350, "952334846")

SELECT * FROM hotel;

CREATE TABLE reserva (
id_turista INT UNSIGNED NOT NULL,
id_hotel INT UNSIGNED NOT NULL,
fecha_entrada DATETIME NOT NULL,
fecha_salida DATETIME NOT NULL,
regimen ENUM('MP', 'PC'),
PRIMARY KEY (id_turista,id_hotel),
FOREIGN KEY (id_turista) REFERENCES turista(id) ON DELETE CASCADE,
FOREIGN KEY (id_hotel) REFERENCES hotel(id) ON DELETE CASCADE,
);

INSERT INTO reserva(id_turista, id_hotel, fecha_entrada, fecha_sañida, regimen)
VALUES (1, 1, "2026-07-20", "PC"), (2, 2, "2026-08-04", "2026-08-10 12:30", "PC");

SELECT FROM reserva;






DROP DATABASE agenca CHARSET utf8mb4;
USE agnecia;

CREATE TABLE turista (
    nombre VARCHA(50) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(9) NOT NULL 
);

INSERT INTO turista(nombre, apellidos, direccion, telefono)
VALUES ("Ana", "Castillo Perez", "C\ Larios", 611345111),
("Juan", "Lopez Perez", "C\ San Miguel", 689345111);

CREATE TABLE hotel (
    nombre VARCHA(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    ciudad VARCHAR(25) NOT NULL,
    plazas INT UNSIGNED NOT NULL DEFAULT 0,
    telefono VARCHAR(9) NOT NULL 
);

INSERT INTO hotel(nombre, direccion, ciudad, plazas, telefono)
VALUES ("Mirador del mar", "Paseos Marítimo", "Marbella", 600, "952234567"),
("ACB Bookings", "La Carihuela", "Torremolinos", 350, "952334846")

SELECT * FROM hotel;

CREATE TABLE reserva (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
id_turista INT UNSIGNED NOT NULL,
id_hotel INT UNSIGNED NOT NULL,
fecha_entrada DATETIME NOT NULL,
fecha_salida DATETIME NOT NULL,
regimen ENUM('MP', 'PC'),
UNIQUE (id_turista, id_hotel),
PRIMARY KEY (id_turista,id_hotel),
FOREIGN KEY (id_turista) REFERENCES turista(id) ON DELETE SET NULL,
FOREIGN KEY (id_hotel) REFERENCES hotel(id) ON DELETE SET NULL,
);

INSERT INTO reserva(id_turista, id_hotel, fecha_entrada, fecha_sañida, regimen)
VALUES (1, 1, "2026-07-20", "PC"), (2, 2, "2026-08-04", "2026-08-10 12:30", "PC");

SELECT FROM reserva;

DELETE FROM turista WHERE id=1
DELETE FROM hotel WHERE id=1

-- Borramos las tablas reserva y turista
DROP TABLE agencia.reserva;
DROP TABLE agencia.turista;


ALTER TABLE hotel modify VARCHAR(30) NOT NULL;
-- Cambiar un nombre por otro
ALTER TABLE hotel CHANGE nombre nombre_hotel VARCHAR(30) NOT NULL;
ALTER TABLE hotel CHANGE nombre_hotel nombre VARCHAR(30) NOT NULL;

-- Se fija en el valor por defecto de la columna regimen en 'MP'
ALTER TABLE reserva ALTER regimen SET DEFAULT 'MP';
-- Se elimina el valor por defecto de a columna regimen de la tabla 
ALTER TABLE reserva ALTER regimen DROP DEFAULT;

ALTER TABLE hotel ADD num_estrellas INT CHECK (num_estrellas > 0 AND num_estrellas <= 5);

ALTER TABLE hotel DROP num_estrellas;
-- Se añade la columna num_estrellas despues de la columna nombre
ALTER TABLE hotel ADD num_estrellas INT CHECK (num_estrellas > 0 AND num_estrellas <= 5) AFTER nombre;
-- Muestra la estructura de la tabla hotel
DESCRIBE hotel;
-- Muestra la sentencia CREATE TABLE QUE CREÓ la tabla hotel
SHOW CREATE TABLE hotel;

INSERT INTO hotel(nombre, direccion, ciudad, plazas, teléfono, num_estrelas) 
VALUES('Málaga Palace', 'Larios 11', 'Málaga', 250, 952321234, 6);





DROP DATABASE agencia CHARSET utf8mb4;
USE agnecia;

CREATE TABLE turista (
    nombre VARCHA(50) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(9) NOT NULL 
);

INSERT INTO turista(nombre, apellidos, direccion, telefono)
VALUES ("Ana", "Castillo Perez", "C\ Larios", 611345111),
("Juan", "Lopez Perez", "C\ San Miguel", 689345111);

CREATE TABLE hotel (
    nombre VARCHA(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    ciudad VARCHAR(25) NOT NULL,
    plazas INT UNSIGNED NOT NULL DEFAULT 0,
    telefono VARCHAR(9) NOT NULL 
);

INSERT INTO hotel(nombre, direccion, ciudad, plazas, telefono)
VALUES ("Mirador del mar", "Paseos Marítimo", "Marbella", 600, "952234567"),
("ACB Bookings", "La Carihuela", "Torremolinos", 350, "952334846")

SELECT * FROM hotel;

CREATE TABLE reserva (
id_turista INT UNSIGNED NOT NULL,
id_hotel INT UNSIGNED NOT NULL,
fecha_entrada DATETIME NOT NULL,
fecha_salida DATETIME NOT NULL,
regimen ENUM('MP', 'PC'),
PRIMARY KEY (id_turista,id_hotel),
FOREIGN KEY (id_turista) REFERENCES turista(id) ON DELETE CASCADE,
FOREIGN KEY (id_hotel) REFERENCES hotel(id) ON DELETE CASCADE,
);

INSERT INTO reserva(id_turista, id_hotel, fecha_entrada, fecha_sañida, regimen)
VALUES (1, 1, "2026-07-20", "PC"), (2, 2, "2026-08-04", "2026-08-10 12:30", "PC");

SELECT FROM reserva;






DROP DATABASE agenca CHARSET utf8mb4;
USE agnecia;

CREATE TABLE turista (
    nombre VARCHA(50) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(9) NOT NULL 
);

INSERT INTO turista(nombre, apellidos, direccion, telefono)
VALUES ("Ana", "Castillo Perez", "C\ Larios", 611345111),
("Juan", "Lopez Perez", "C\ San Miguel", 689345111);

CREATE TABLE hotel (
    nombre VARCHA(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    ciudad VARCHAR(25) NOT NULL,
    plazas INT UNSIGNED NOT NULL DEFAULT 0,
    telefono VARCHAR(9) NOT NULL 
);

INSERT INTO hotel(nombre, direccion, ciudad, plazas, telefono)
VALUES ("Mirador del mar", "Paseos Marítimo", "Marbella", 600, "952234567"),
("ACB Bookings", "La Carihuela", "Torremolinos", 350, "952334846")

SELECT * FROM hotel;

CREATE TABLE reserva (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
id_turista INT UNSIGNED NOT NULL,
id_hotel INT UNSIGNED NOT NULL,
fecha_entrada DATETIME NOT NULL,
fecha_salida DATETIME NOT NULL,
regimen ENUM('MP', 'PC'),
UNIQUE (id_turista, id_hotel),
PRIMARY KEY (id_turista,id_hotel),
FOREIGN KEY (id_turista) REFERENCES turista(id) ON DELETE SET NULL,
FOREIGN KEY (id_hotel) REFERENCES hotel(id) ON DELETE SET NULL,
);

INSERT INTO reserva(id_turista, id_hotel, fecha_entrada, fecha_sañida, regimen)
VALUES (1, 1, "2026-07-20", "PC"), (2, 2, "2026-08-04", "2026-08-10 12:30", "PC");

SELECT FROM reserva;