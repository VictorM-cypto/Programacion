-- Una vez que ha ejecutado el script y ha creado la base de datos en MySQL Server, ¿qué sentencia SQL
-- debería ejecutar para modificar el encoding de la base de datos y utilizar utf8mb4 en lugar de latin1?
ALTER DATABASE ventas CHARACTER SET utf8mb4;

SHOW CREATE DATABASE ventas;
-- Modifique la columna nombre de la tabla cliente para que pueda almacenar cadenas de hasta 100
-- caracteres y para que no pueda ser NULL.

ALTER TABLE cliente MODIFY nombre VARCHAR(100) NOT NULL;

SHOW CREATE TABLE cliente;