CREATE DATABASE Escuela;

USE Escuela;

CREATE TABLE Alumnos (
ID_Alumno INT auto_increment primary KEY,
Nombre VARCHAR(50) NOT NULL,
Apellidos VARCHAR(100) NOT NULL,
Curso VARCHAR (30) NOT NULL
);

INSERT INTO Alumnos(Nombre, Apellidos, Curso)
VALUES ('Ana', 'Pérez López', '1º ESO');

INSERT INTO Alumnos(Nombre, Apellidos, Curso)
VALUES ('Juan', 'Torres Ruiz', '1º ESO');

INSERT INTO Alumnos(Nombre, Apellidos, Curso)
VALUES ('Lucía', 'Martínez Gil', '2º ESO');

CREATE TABLE Profesores (
ID_Profesor INT unsigned primary KEY,
Nombre VARCHAR(50) NOT NULL,
Apellidos VARCHAR(100) NOT NULL,
Especialidad VARCHAR (30) NOT NULL
);

INSERT INTO Profesores(Nombre, Apellidos, Especialidad)
VALUES ('María', 'Gómez Castro', 'Matemáticas');

INSERT INTO Profesores(Nombre, Apellidos, Especialidad)
VALUES ('José', 'Romero Díaz', 'Historia');

CREATE TABLE Profesor_Alumno (
ID_Profesor INT unsigned,
ID_Alumno INT UNSIGNED,
Asignatura VARCHAR(20) NOT NULL,
FOREIGN KEY (ID_Profesor) REFERENCES Profesores(ID_Profesor),
FOREIGN KEY (ID_Alumno) REFERENCES Alumnos(ID_Alumno)
);



