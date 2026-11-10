CREATE DATABASE IF NOT EXISTS tienda;
USE tienda;
CREATE TABLE clientes (
id_cliente INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL
);

CREATE TABLE pedidos (
id_pedido INT NOT NULL,
fecha DATE NOT NULL,
importe DECIMAL(10, 2) NOT NULL,
id_cliente INT NOT NULL
);


ALTER TABLE clientes
ADD CONSTRAINT pk_clientes PRIMARY KEY (id_cliente);

ALTER TABLE pedidos
ADD CONSTRAINT pk_pedidos PRIMARY KEY (id_pedido);

ALTER TABLE pedidos
ADD CONSTRAINT fk_pedidos_clientes
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);

ALTER TABLE pedidos
DROP FOREIGN KEY fk_pedidos_clientes;

ALTER TABLE clientes
DROP PRIMARY KEY;

ALTER TABLE pedidos
DROP PRIMARY KEY;

ALTER TABLE clientes
ADD PRIMARY KEY (id_cliente);

ALTER TABLE pedidos
ADD PRIMARY KEY (id_pedido);

ALTER TABLE pedidos
ADD FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);


