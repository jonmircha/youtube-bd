CREATE DATABASE curso_sql;

DROP DATABASE curso_sql;

USE curso_sql;

SHOW TABLES;

CREATE TABLE usuarios(
  usuario_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellidos VARCHAR(30) NOT NULL,
  correo VARCHAR(50) UNIQUE,
  edad INT DEFAULT 0
);

INSERT INTO usuarios (nombre, apellidos, correo, edad) VALUES 
  ("Jon","MirCha","jonmircha@gmail.com", 38),
  ("kEnAi","MirCha","kenai@gmail.com", 10),
  ("Irma","Campos","irma@outlook.com", 38),
  ("Pepito", "Perez", "pepito@hotmail.com", 28),
  ("Rosita", "Juárez", "rosita@yahoo.com", 19),
  ("Macario", "Guzman", "macario@outlook.com", 55);
  
CREATE TABLE productos (
  producto_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(50),
  precio DECIMAL(7,2),
  cantidad INT UNSIGNED
);

INSERT INTO productos (nombre, descripcion, precio, cantidad) VALUES
  ("Computadora", "Macbook Air M2", 29999.99, 5),
  ("Celular", "Nothing Phone 1", 11999.99, 15),
  ("Cámara Web", "Logitech C920", 1500, 13),
  ("Micrófono", "Blue Yeti", 2500, 19),
  ("Audífonos", "Audífonos Bose", 6500, 10);

SELECT * FROM usuarios;
SELECT * FROM productos;

DROP TABLE usuarios;
DROP TABLE productos;

TRUNCATE TABLE usuarios; 
TRUNCATE TABLE productos;


# Cálculos Aritméticos
SELECT 6 + 5 AS calculo;
SELECT 6 - 5 AS calculo;
SELECT 6 * 5 AS calculo;
SELECT 6 / 5 AS calculo;


# Funciones Matemáticas
SELECT MOD(4,2);
SELECT MOD(5,2);
SELECT CEILING(7.1);
SELECT FLOOR(7.9);
SELECT ROUND(7.5);
SELECT ROUND(7.4999);
SELECT POWER(2, 6);
SELECT SQRT(81);

# Columnas Calculadas
SELECT nombre, precio, cantidad, (precio * cantidad) AS ganancia FROM productos;

# Funciones de Agrupamiento
SELECT MAX(precio) AS precio_maximo FROM productos;
SELECT MIN(precio) AS precio_minimo FROM productos;
SELECT SUM(cantidad) AS existencias FROM productos;
SELECT AVG(precio) AS precio_promedio FROM productos;
SELECT COUNT(*) AS productos_total FROM productos;

SELECT nombre, precio, MAX(precio) AS precio_maximo FROM productos GROUP BY precio, nombre;

CREATE TABLE caballeros (
  caballero_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30),
  armadura VARCHAR(30),
  rango VARCHAR(30),
  signo VARCHAR(30),
  ejercito VARCHAR(30),
  pais VARCHAR(30)
);

INSERT INTO caballeros VALUES
  (0,"Seiya","Pegaso","Bronce","Sagitario","Athena","Japón"),
  (0,"Shiryu","Dragón","Bronce","Libra","Athena","Japón"),
  (0,"Hyoga","Cisne","Bronce","Acuario","Athena","Rusia"),
  (0,"Shun","Andromeda","Bronce","Virgo","Athena","Japón"),
  (0,"Ikki","Fénix","Bronce","Leo","Athena","Japón"),
  (0,"Kanon","Géminis","Oro","Géminis","Athena","Grecia"),
  (0,"Saga","Géminis","Oro","Géminis","Athena","Grecia"),
  (0,"Camus","Acuario","Oro","Acuario","Athena","Francia"),
  (0,"Rhadamanthys","Wyvern","Espectro","Escorpión","Hades","Inglaterra"),
  (0,"Kanon","Dragón Marino","Marino","Géminis","Poseidón","Grecia"),
  (0,"Kagaho","Bennu","Espectro","Leo","Hades","Rusia");

SELECT * FROM caballeros;

SELECT signo, COUNT(*) AS total FROM caballeros GROUP BY signo; 
SELECT armadura, COUNT(*) AS total FROM caballeros GROUP BY armadura; 
SELECT rango, COUNT(*) AS total FROM caballeros GROUP BY rango; 
SELECT pais, COUNT(*) AS total FROM caballeros GROUP BY pais; 
SELECT ejercito, COUNT(*) AS total FROM caballeros GROUP BY ejercito; 

SELECT rango, COUNT(*) AS total FROM caballeros WHERE ejercito = "Athena" GROUP BY rango; 

SELECT rango, COUNT(*) AS total FROM caballeros WHERE ejercito = "Athena" GROUP BY rango HAVING total >= 4; 

SELECT nombre, precio, MAX(precio) AS precio_maximo FROM productos GROUP BY precio, nombre HAVING precio_maximo >= 10000;

SELECT DISTINCT signo FROM caballeros;
SELECT DISTINCT armadura FROM caballeros;
SELECT DISTINCT ejercito FROM caballeros;
SELECT DISTINCT rango FROM caballeros;
SELECT DISTINCT pais FROM caballeros;

SELECT * FROM caballeros ORDER BY nombre ASC;

SELECT * FROM caballeros ORDER BY nombre DESC;

SELECT * FROM caballeros ORDER BY nombre, signo DESC;

SELECT * FROM caballeros ORDER BY nombre, armadura;

SELECT * FROM caballeros WHERE ejercito = "Athena" ORDER BY nombre, armadura;

SELECT ejercito, COUNT(*) AS total FROM caballeros GROUP BY ejercito ORDER BY ejercito DESC; 

SELECT nombre, precio, MAX(precio) AS precio_maximo FROM productos GROUP BY precio, nombre HAVING precio_maximo >= 1000 ORDER BY nombre;

SELECT * FROM productos;

SELECT * FROM productos WHERE precio >= 5000 AND precio <= 15000;

SELECT * FROM productos WHERE precio BETWEEN 5000 AND 15000;

SELECT * FROM productos WHERE nombre REGEXP '[a-z]';

SELECT * FROM productos WHERE descripcion REGEXP '[0-9]';

SELECT ('Hola Mundo');
SELECT LOWER('Hola Mundo');
SELECT LCASE('Hola Mundo');
SELECT UPPER('Hola Mundo');
SELECT UCASE('Hola Mundo');
SELECT LEFT('Hola Mundo', 6);
SELECT RIGHT('Hola Mundo', 6);
SELECT LENGTH('Hola Mundo');
SELECT REPEAT('Hola Mundo', 3);
SELECT REVERSE('Hola Mundo');
SELECT REPLACE('Hola Mundo', 'o', 'x');
SELECT LTRIM('    Hola Mundo    ');
SELECT RTRIM('    Hola Mundo    ');
SELECT TRIM('    Hola Mundo     ');
SELECT CONCAT('Hola Mundo',' desde ', 'SQL');
SELECT CONCAT_WS('-','Hola','Mundo','desde','SQL');

SELECT UPPER(nombre), LOWER(descripcion), precio  FROM productos;
