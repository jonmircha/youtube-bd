CREATE DATABASE curso_sql;

DROP DATABASE curso_sql;

USE curso_sql;

SHOW TABLES;

DROP TABLE caballeros;

TRUNCATE TABLE caballeros;

CREATE TABLE caballeros (
  caballero_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30),
  armadura VARCHAR(30) UNIQUE,
  rango VARCHAR(30),
  signo VARCHAR(30),
  ejercito VARCHAR(30),
  pais VARCHAR(30),
  INDEX i_rango (rango),
  INDEX i_signo (signo),
  INDEX i_caballeros (ejercito, pais)
);

CREATE TABLE caballeros (
  caballero_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30),
  armadura VARCHAR(30),
  rango VARCHAR(30),
  signo VARCHAR(30),
  ejercito VARCHAR(30),
  pais VARCHAR(30),
  FULLTEXT INDEX fi_search (armadura, rango, signo, ejercito, pais)
);

CREATE TABLE caballeros (
  caballero_id INT UNSIGNED,
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
  (0,"Saga","Junini","Oro","Junini","Athena","Grecia"),
  (0,"Camus","Acuario","Oro","Acuario","Athena","Francia"),
  (0,"Rhadamanthys","Wyvern","Espectro","Escorpión Oro","Hades","Inglaterra"),
  (0,"Kanon","Dragón Marino","Marino","Géminis Oro","Poseidón","Grecia"),
  (0,"Kagaho","Bennu","Espectro","Leo","Hades","Rusia");

SELECT * FROM caballeros;

SELECT * FROM caballeros WHERE signo = "Leo";

SELECT * FROM caballeros
  WHERE MATCH(armadura, rango, signo, ejercito, pais)
  AGAINST('Oro' IN BOOLEAN MODE);

SHOW INDEX FROM caballeros;

ALTER TABLE caballeros ADD CONSTRAINT pk_caballero_id PRIMARY KEY (caballero_id);

ALTER TABLE caballeros MODIFY COLUMN caballero_id INT AUTO_INCREMENT;

ALTER TABLE caballeros ADD CONSTRAINT uq_armadura UNIQUE (armadura);
ALTER TABLE caballeros DROP CONSTRAINT uq_armadura;


ALTER TABLE caballeros ADD INDEX i_rango (rango);
ALTER TABLE caballeros DROP INDEX i_rango;


ALTER TABLE caballeros ADD INDEX i_ejercito_pais (ejercito, pais);
ALTER TABLE caballeros DROP INDEX i_ejercito_pais;


ALTER TABLE caballeros ADD FULLTEXT INDEX fi_search (nombre, signo);
ALTER TABLE caballeros DROP INDEX fi_search;
