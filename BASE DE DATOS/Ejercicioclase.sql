CREATE TABLE cursos (
id_curso INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(50) NOT NULL,
descripcion VARCHAR(250),
precio DECIMAL (10,2) UNSIGNED NOT NULL ,
nivel SET('Iniciación', 'Intermedio', 'Avanzado') NOT NULL,
CONSTRAINT uq_cursos_titulo UNIQUE (titulo)
);

CREATE TABLE estudiantes (
id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(25) NOT NULL,
fecha_nacimiento DATE,
pais_origen VARCHAR(50)  DEFAULT 'España',
CONSTRAINT uq_estudiantes_email UNIQUE (email)
);

CREATE TABLE matriculas (
id_matricula INT AUTO_INCREMENT PRIMARY KEY,
id_estudiante INT NOT NULL,
id_curso INT NOT NULL,
fecha_metricula DATE NOT NULL,
estado_pago ENUM('Pendiente', 'Pagado', 'Reembolso'),
FOREIGN KEY (id_estudiante) REFERENCES estudiantes (id_estudiante),
FOREIGN KEY (id_curso) REFERENCES cursos (id_curso),
CONSTRAINT uq_matriculas_estudiante UNIQUE (id_estudiante)
);

