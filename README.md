# Cursos de Bases de Datos 🛢️

Hola, soy tu amigo y docente digital **Jonathan MirCha**, bienvenid@s a mis cursos de Bases de Datos.

En este repositorio encontrarás los archivos de mis cursos de bases de datos de mi canal de [_YouTube_](https://youtube.com/@jonmircha): los modelos, los diagramas y los _scripts_ que hacemos en cada uno. Son cuatro y van en orden: del diseño y el modelado de una base de datos a _SQL_ y _NoSQL_. Los cuatro están en la lista [Bases de Datos](https://www.youtube.com/playlist?list=PLvq-jIkSeTUbxupWtqWZI-agsR-b3S9_5).

## Cursos

| Curso                                                                           | Apuntes                                           | Archivos                                                                                                                                  |
| ------------------------------------------------------------------------------- | ------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| [Curso Diseño de Bases de Datos](https://www.youtube.com/watch?v=HXE169-n5pM)   | [/bd](https://jonmircha.com/bd)                   | [`ModeladoDatos.md`](./ModeladoDatos.md), [`NormalizacionBD.xlsx`](./NormalizacionBD.xlsx) y [`Modelados/Carreras`](./Modelados/Carreras) |
| [Curso Modelado de Bases de Datos](https://www.youtube.com/watch?v=aFgHVE_Y_YU) | [/bd](https://jonmircha.com/bd#modelado-de-datos) | [`Modelados`](./Modelados)                                                                                                                |
| [Curso _SQL_](https://www.youtube.com/watch?v=UAuZvxPTi58)                      | [/sql](https://jonmircha.com/sql)                 | [`SQL`](./SQL)                                                                                                                            |
| [Curso _NoSQL_](https://www.youtube.com/watch?v=3MWt3CCjHG8)                    | [/nosql](https://jonmircha.com/nosql)             | [`NoSQL`](./NoSQL)                                                                                                                        |

El [mapa mental de Bases de Datos](https://www.figma.com/board/Af7NoQC3xp7cu6unD7OqQl/Bases-de-Datos), en _FigJam_, resume los cuatro cursos.

## Archivos

### Curso Diseño de Bases de Datos

| Archivo                                          | Contenido                                                                                                                                                         |
| ------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [`ModeladoDatos.md`](./ModeladoDatos.md)         | Los 12 pasos para modelar los datos de un sistema y el glosario de las siglas de los diagramas: _PK_, _FK_, _UQ_, _ED_, _EP_ y _EC_.                              |
| [`NormalizacionBD.xlsx`](./NormalizacionBD.xlsx) | El ejercicio de normalización: un modelo desnormalizado llevado de la primera a la cuarta forma normal.                                                           |
| [`Modelados/Carreras`](./Modelados/Carreras)     | El modelo completo del curso: las entidades y su lógica de negocio, el modelo entidad-relación, el modelo relacional, la corrida de datos y el modelo documental. |

### Curso Modelado de Bases de Datos

Cada carpeta de [`Modelados`](./Modelados) es un sistema, con su lógica de negocio (`.md`) y su modelo relacional (`.drawio`, con su imagen `.png`).

| Carpeta                                            | Sistema                                                                    |
| -------------------------------------------------- | -------------------------------------------------------------------------- |
| [`Ventas`](./Modelados/Ventas)                     | Un sistema de ventas, con su corrida de datos.                             |
| [`Encuestas`](./Modelados/Encuestas)               | Un sistema de encuestas.                                                   |
| [`Autenticacion`](./Modelados/Autenticacion)       | Un sistema de autenticación, con usuarios, roles y permisos.               |
| [`MirChaGram`](./Modelados/MirChaGram)             | Una red social de publicaciones, con su modelo documental.                 |
| [`PeliSeries`](./Modelados/PeliSeries)             | Un catálogo de películas y series, con su modelo documental.               |
| [`SaintSeiya`](./Modelados/SaintSeiya)             | Los personajes de _Saint Seiya_ y sus armaduras, con su modelo documental. |
| [`EntrenaTuGlamour`](./Modelados/EntrenaTuGlamour) | Un sistema de registro de actividades, con sus requisitos.                 |

### Curso _SQL_

| _Script_                                                                                   | Contenido                                                                                                                 |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------- |
| [`Script01_ComandosBasicos.sql`](./SQL/Script01_ComandosBasicos.sql)                       | Bases de datos, usuarios, privilegios, tablas y el _CRUD_: `INSERT`, `SELECT`, `UPDATE`, `DELETE` y `TRUNCATE`.           |
| [`Script02_FuncionesBasicas.sql`](./SQL/Script02_FuncionesBasicas.sql)                     | Operaciones aritméticas, funciones matemáticas y de texto, y agrupamiento: `GROUP BY`, `HAVING`, `DISTINCT` y `ORDER BY`. |
| [`Script03_Indices.sql`](./SQL/Script03_Indices.sql)                                       | Índices, también los de tipo `FULLTEXT`.                                                                                  |
| [`Script04_Joins.sql`](./SQL/Script04_Joins.sql)                                           | Llaves foráneas, `JOIN`s, `UNION`, subconsultas y vistas.                                                                 |
| [`Script05_Restricciones.sql`](./SQL/Script05_Restricciones.sql)                           | Motores de tablas, juegos de caracteres, restricciones, transacciones y encriptación.                                     |
| [`Script06_ProcedimientosDisparadores.sql`](./SQL/Script06_ProcedimientosDisparadores.sql) | Procedimientos almacenados y disparadores.                                                                                |

### Curso _NoSQL_

| Archivo                                  | Contenido                                                                                               |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| [`Redis.sh`](./NoSQL/Redis.sh)           | Base de llave-valor: comandos de _Redis_ con _hashes_ y listas.                                         |
| [`Cassandra.sql`](./NoSQL/Cassandra.sql) | Base orientada a columnas: _keyspaces_, tablas y el _CRUD_ en _CQL_, el lenguaje de _Apache Cassandra_. |
| [`Neo4j.cyp`](./NoSQL/Neo4j.cyp)         | Base orientada a grafos: nodos, relaciones y consultas en _Cypher_, el lenguaje de _Neo4j_.             |
| [`Mongo.js`](./NoSQL/Mongo.js)           | Base orientada a documentos: comandos de la _shell_ de _MongoDB_ y el _CRUD_.                           |

## Cómo usar los archivos

Clona o descarga el repositorio:

```bash
git clone https://github.com/jonmircha/youtube-bd.git
```

- Los diagramas (`.drawio`) se abren en [_draw.io_](https://www.drawio.com/), gratis en el navegador o en su aplicación de escritorio; cada uno tiene a su lado su imagen `.png`.
- Las hojas de cálculo (`.xlsx`) se abren en _Excel_, _Numbers_, _LibreOffice_ o _Google Sheets_.
- Los _scripts_ de _SQL_ son para _MySQL_ o _MariaDB_. En el curso los ejecuto en [_DBeaver_](https://dbeaver.io/), y si no quieres instalar nada, puedes probarlos en [_DB Fiddle_](https://www.db-fiddle.com/).
- Los archivos de _NoSQL_ se ejecutan en la consola de cada base de datos. En el curso creamos un servicio gratuito en la nube para cada una.

## Mis redes

- 🦊 Visita mi web https://jonmircha.com
- 🔔 Suscríbete al canal https://youtube.com/@jonmircha
- 📬 Suscríbete a mi newsletter https://jonmircha.com/newsletter
- 🌮 ¿Me invitas un taco? https://jonmircha.com/taco
