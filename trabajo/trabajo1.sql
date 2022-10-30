-- pauta para ejecutar postgres

-- para comenzar iniciamos sesion en postgres con siguiente comando (linux)
-- sudo -u postgres psql
-- para salir ejecutamos el comando \q

-- creamos la base de datos

-- para comenzar iniciamos sesion en postgres con siguiente comando (linux)

-- para salir ejecutamos el comando \q

-- creamos la base de datos

CREATE DATABASE desafio_yonathan_cordero_144;

--selecciono la base de datos

\c desafio_yonathan_cordero_144;

--creamos la tabla

CREATE TABLE client(
  id SERIAL PRIMARY KEY,
  email VARCHAR(50),
  client_name VARCHAR,
  phone VARCHAR(16),
  company VARCHAR(50),
  priority SMALLINT NOT NULL CHECK (priority >= 1 AND priority <= 10)
);

--insertamos datos

INSERT INTO client (email, client_name, phone, company, priority) VALUES ('CHerrera@gmail.com', 'Carolina ', '123456789', 'Carolina Herrera', 10),
('CDior@gmail.com', 'Christian', '123456789', 'Dior', 9),('PRabanne@gmail.com', 'Francisco', '123456789', 'Paco Rabanne', 8),
('YSL@gmail.com', 'Yves', '123456789', 'Yves Saint Laurent', 7),('GArmani@gmail.com', 'Giorgio', '123456789', 'Armani', 6);

--Selecciona los tres clientes de mayor prioridad

SELECT * FROM client ORDER BY priority DESC, id ASC LIMIT 3;

-- Selecciona, de la tabla clientes, una prioridad o una empresa, de forma que el resultado devuelva 2 registros

SELECT * FROM client WHERE company = 'Dior'  OR priority = 10;
-- Sal de postgreSQL

\q