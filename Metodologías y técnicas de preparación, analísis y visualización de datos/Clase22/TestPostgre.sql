select version();

/*
DDL Data Definition Language (Lenguaje de definición de datos)
Baja Compatibilidad entre distintos motores
- CREATE TABLE
- DROP TABLE
- ALTER TABLE
- TRUNCATE

DML Data Manipulation Language (Lengaje de manipulación de registros)
Alta Compatibilidad entre distintos motores
- INSERT
- DELETE
- UPDATE
- SELECT

https://www.tutorialesprogramacionya.com/
*/

 -- Creamos la tabla
 create table usuarios(
  nombre varchar(30),
  clave varchar(10)
 );

 -- Agregamos varios registros a la tabla:
 insert into usuarios (nombre, clave) values ('Mariano','payaso');
 insert into usuarios (nombre, clave) values ('Pablo','jfx344');
 insert into usuarios (nombre, clave) values ('Ana','tru3fal');
 
 --Veamos cómo PostgreSQL almacenó los datos:
 select * from usuarios;