-- Comentario en una línea en SQL

/*
  Este es un comentario
  de varias
  líneas
  
SQL, NO distingue entre MÁYUSCULAS y minúsculas pero:

  - Comandos y palabras reservadas de SQL van en MÁYUSCULAS.
  - Nombres de objetos y datos van en minúsculas con _snake_case_.
  - Para strings usar comillas simples ( `''` ).
  - Todas las sentencias terminan con punto y coma ( `;` ).
*/

SHOW DATABASES;

CREATE DATABASE curso_sql;

CREATE DATABASE IF NOT EXISTS curso_sql;

DROP DATABASE curso_sql;

DROP DATABASE IF EXISTS curso_sql;

CREATE DATABASE para_jonmircha;

CREATE USER 'jonmircha'@'localhost' IDENTIFIED BY 'qwerty';

GRANT ALL PRIVILEGES ON para_jonmircha TO 'jonmircha'@'localhost';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'jonmircha'@'localhost';

REVOKE ALL, GRANT OPTION FROM 'jonmircha'@'localhost';

DROP USER 'jonmircha'@'localhost';

USE curso_sql;

SHOW TABLES;

DESCRIBE usuarios;

CREATE TABLE usuarios(
  nombre VARCHAR(50),
  correo VARCHAR(50)
);

ALTER TABLE usuarios ADD COLUMN cumpleaños VARCHAR(15);

ALTER TABLE usuarios MODIFY cumpleaños DATE;

ALTER TABLE usuarios RENAME COLUMN cumpleaños TO nacimiento;

ALTER TABLE usuarios DROP COLUMN nacimiento;

DROP TABLE usuarios;

CREATE TABLE usuarios(
  usuario_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellidos VARCHAR(30) NOT NULL,
  correo VARCHAR(50) UNIQUE,
  direccion VARCHAR(100) DEFAULT "Sin dirección",
  edad INT DEFAULT 0
);

INSERT INTO usuarios VALUES (0,"Jon","MirCha","jonmircha@gmail.com","dirección de mircha", 38);

INSERT INTO usuarios (apellidos, edad, nombre) VALUES ("MirCha", 10, "kEnAi");

INSERT INTO usuarios SET nombre = "Irma", apellidos = "Campos", edad = 38;

INSERT INTO usuarios (nombre, apellidos, correo, edad) VALUES
  ("Pepito", "Perez", "pepito@gmail.com", 28),
  ("Rosita", "Juárez", "rosita@gmail.com", 19),
  ("Macario", "Guzman", "macario@gmail.com", 55);

SELECT * FROM usuarios;

SELECT nombre, edad, usuario_id FROM usuarios;

SELECT COUNT(*) FROM usuarios;

SELECT COUNT(*) AS total_usuarios FROM usuarios;

SELECT * FROM usuarios WHERE nombre = "Jon";

SELECT * FROM usuarios WHERE nombre IN ("Jon", "kEnAi", "Irma");

SELECT * FROM usuarios WHERE apellidos LIKE 'M%';

SELECT * FROM usuarios WHERE correo LIKE '%@gmail.com';

SELECT * FROM usuarios WHERE nombre LIKE '%it%';

SELECT * FROM usuarios WHERE apellidos NOT LIKE 'M%';

SELECT * FROM usuarios WHERE correo NOT LIKE '%@gmail.com';

SELECT * FROM usuarios WHERE nombre NOT LIKE '%it%';

SELECT * FROM usuarios WHERE edad != 38;
SELECT * FROM usuarios WHERE edad <> 38;

SELECT * FROM usuarios WHERE edad = 38;

SELECT * FROM usuarios WHERE edad > 38;

SELECT * FROM usuarios WHERE edad >= 38;

SELECT * FROM usuarios WHERE edad < 38;

SELECT * FROM usuarios WHERE edad <= 38;

SELECT * FROM usuarios WHERE NOT direccion = 'Sin dirección'; 

SELECT * FROM usuarios WHERE direccion != 'Sin dirección' AND edad >= 38;

SELECT * FROM usuarios WHERE direccion != 'Sin dirección' AND edad >= 38 AND nombre = "Jon";

SELECT * FROM usuarios WHERE direccion != 'Sin dirección' AND edad >= 38;

UPDATE usuarios SET correo = "irma@gmail.com", direccion = "Dirección de Irma" WHERE usuario_id = 3;

-- CUIDADO toda sentencia UPDATE debe llevar su claúsula WHERE 
UPDATE usuarios SET direccion = "nueva dirección";

DELETE FROM usuarios WHERE usuario_id = 6;

-- CUIDADO toda sentencia DELETE debe llevar su claúsula WHERE
-- NO TE OLVIDES DEL WHERE EN EL DELETE FROM
-- https://www.youtube.com/watch?v=i_cVJgIz_Cs
DELETE FROM usuarios;

TRUNCATE TABLE usuarios;

