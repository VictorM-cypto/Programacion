-- Bloque 1 --
DROP DATABASE IF EXISTS instituto;

CREATE DATABASE instituto;

USE instituto;

CREATE TABLE profesores (
DNI CHAR(9) PRIMARY KEY,
Nombre VARCHAR(40) NOT NULL,
Direccion VARCHAR(50) NOT NULL,
Telefono VARCHAR(15) NOT NULL
);

CREATE TABLE modulos (
Codigo VARCHAR(10) PRIMARY KEY,
Nombre VARCHAR(40) NOT NULL,
Curso VARCHAR(10) NOT NULL,
DNI_profesor CHAR(9)
);

ALTER TABLE modulos
ADD CONSTRAINT dni_profesor_fk FOREIGN KEY (DNI_profesor) REFERENCES profesores(DNI);

CREATE TABLE alumnos (
N_exp VARCHAR(10) PRIMARY KEY,
Nombre VARCHAR(40) NOT NULL,
Apellidos VARCHAR(50) NOT NULL,
Fecha_Nac DATE NOT NULL,
N_exp_delegado VARCHAR(10),
Grupo VARCHAR(10) NOT NULL,
FOREIGN KEY (N_exp_delegado) REFERENCES alumnos(N_exp)
);

CREATE TABLE matriculaciones (
N_exp_alumno VARCHAR(10) PRIMARY KEY,
Codigo_modulo VARCHAR(10) PRIMARY KEY,
FOREIGN KEY (N_exp_alumno) REFERENCES alumnos(N_exp)
);
ALTER TABLE modulos
DROP FOREIGN KEY dni_profesor_fk;

ALTER TABLE modulos
DROP PRIMARY KEY;

ALTER TABLE modulos 
MODIFY Codigo INT(4) ZEROFILL;

ALTER TABLE 


