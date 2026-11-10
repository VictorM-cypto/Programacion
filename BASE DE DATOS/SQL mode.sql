SELECT @@GLOBAL.sql_mode;
SELECT @@SESSION.SQL_mode;

CREATE DATABASE tipos_de_datos;

USE tipos_de_datos;

CREATE TABLE test (data TINYINT UNSIGNED);

SET sql_mode = '';

INSERT INTO test VALUES (256);