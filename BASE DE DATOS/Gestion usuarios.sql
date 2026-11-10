#Crear una cuenta de usuario llamado miguel con contraseña 1234
-- CREATE USER 'miguel'@'localhost' IDENTIFIED BY '1234';
CREATE USER IF NOT EXISTS 'miguel'@'localhost' IDENTIFIED BY '1234';

# Borrar una cuenta de usuario
-- DROP USER 'miguel'@'localhots';
DROP USER IF EXISTS 'miguel'@'localhost';

# Consultar las cuentas de usuarios creadas en el servidor
SELECT user,host FROM mysql.user;

# Creamos el usuario y le asignamos todos los permisos
DROP USER IF EXISTS  'miguel'@'localhost';
CREATE USER  'miguel'@'localhost';
GRANT ALL privileges ON world.* TO 'miguel'@'localhost';
REVOKE ALL privileges, GRANT OPTION FROM 'miguel'@'localhost';

# Creamos un usuario y le asignamios los permisos de lectura, inserción, actualización
# y borrado de registros de las tablas world
DROP USER IF EXISTS  'antonio'@'localhost';
CREATE USER  'antonio'@'localhost' IDENTIFIED BY '1234';
GRANT SELECT , INSERT, update, DELETE
ON world.* TO 'antonio'@'localhost';

# Refrescamos los privilegios si queremos que se apliquen los nuevos cambios inmediatamente
FLUSH privileges;

#Creamos un usuario llamado pepe
DROP USER IF EXISTS  'pepe'@'localhost';
CREATE USER  'pepe'@'localhost' IDENTIFIED BY '1234';

# El usuario 'pepe'@'localhost' solo tendrá el permiso de SELECT sobre la tabla cliente
# de la base datos jardineria y podrá asignar este permiso a otros usuarios.
GRANT SELECT ON world.city TO 'pepe'@'localhost' WITH GRANT OPTION;

#Vamos a eliminar los permisos de SELECT, UPDATE, DELETE
REVOKE SELECT, INSERT, UPDATE, DELETE ON world.* FROM 'antonio'@'localhost';

 #El usuario 'antonio'@'localhost' tendrá el permiso de SELECT sobre la tabla country
# de la base datos world y podrá asignar este permiso a otros usuarios.
GRANT SELECT ON world.country TO'antonio'@'localhost';

# Eliminamos el permiso de lectura sobre la tabla country de las base de datos world
# al usuario 'antonio'@'localhost'
REVOKE SELECT ON world.country FROM 'antonio'@'localhost';

#Mostrar todos los permisos de 'antonio'@'localhost'
SHOW GRANTS FOR 'antonio'@'localhost';

# 1) Vamos a crear tres roles: rol_lectura_escritura, rol_lectura y rol_escritura
DROP ROLE IF EXISTS 'rol_lectura_escritura', 'rol_lectura', 'rol_escritura';
CREATE ROLE 'rol_lectura_escritura', 'rol_lectura', 'rol_escritura';

# 2) Vamos a asignar los privilegios que tendrá cada rol y sobre qué base de datos tendrá estos privilegios.
GRANT ALL ON worl.* TO 'rol_lectura_escritura' 

# 3) Creamos los usuarios
DROP USER IF EXISTS 'admin'@'localhost';
CREATE USER  'admin'@'localhost' IDENTIFIED BY 'password1';

DROP USER IF EXISTS 'usuario_lectura_1'@'localhost';
CREATE USER  'usuario_lectura_1'@'localhost' IDENTIFIED BY 'password2';

DROP USER IF EXISTS 'usuario_lectura_2'@'localhost';
CREATE USER  'usuario_lectura_2'@'localhost' IDENTIFIED BY 'password3';

DROP USER IF EXISTS 'usuario_escritura_1'@'localhost';
CREATE USER  'usuario_escritura_1'@'localhost' IDENTIFIED BY 'password4';

DROP USER IF EXISTS 'usuario_escritura_2'@'localhost';
CREATE USER  'usuario_escritura_1'@'localhost' IDENTIFIED BY 'password5';

# 4) Asignamos los roles a los usuarios
GRANT 'rol_lectura_escritura' TO 'admin'@'localhost';
GRANT 'rol_lectura' TO 'usuario_lectura_1'@'localhost', 'usuario_lectura_2'@'localhost';
GRANT 'rol_escritura' TO 'usuario_escritura_1'@'localhost', 'usuario_escritura_2'@'localhost';

# 5) Activar los roles a cada usuario
SET DEFAULT ROLE 'rol_lectura_escritura' TO 'admin'@'localhost';
SET DEFAULT ROLE 'rol_lectura' TO 'usuario_lectura_1'@'localhost', 'usuario_lectura_2'@'localhost';
SET DEFAULT ROLE 'rol_escritura' TO 'usuario_escritura_1'@'localhost', 'usuario_escritura_2'@'localhost';

# Eliminar un rol de un usuario
REVOKE rol_lectura_escritura FROM 'admin'@'localhost';

#Para mostrar los
SHOW GRANTS FOR 'admin'@'localhost';

DROP ROLE IF EXISTS rol_lectura_escritura;

SELECT mysql.user.user
FROM mysql.user
WHERE mysql.user.account_locket='Y' AND mysql.user.password_expired='Y' AND mysql.user.authentication_string='';


