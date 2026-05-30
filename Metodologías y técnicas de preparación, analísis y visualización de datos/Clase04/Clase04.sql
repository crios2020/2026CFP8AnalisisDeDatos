
-- Laboratorio 1
-- 1- Borrar si existe la base de datos Agenda.
drop database if exists Agenda;

-- 2- Crear la base de datos Agenda.
create database if not exists Agenda;

-- 3- Ingresar a la base de datos creada.
use Agenda;
show databases;

-- 4- Crear una tabla llamada "agenda". Debe tener los siguientes campos:
--    nombre (cadena de 20), 
--    domicilio (cadena de 30)
--    telefono (cadena de 11)
create table agenda(
    nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);

-- 5- Visualizar las tablas existentes en la base de datos para verificar la creación de "agenda".
show tables;

-- 6- Visualizar la estructura de campos de la tabla "agenda". (describe).
describe agenda;

-- 7- Ingresar 10 registros con valores aleatorios.
insert into agenda (nombre, domicilio, telefono) values ('Carlos', 'Av. Rivadavia 1234', '1123456789');
insert into agenda (nombre, domicilio, telefono) values ('Lucia', 'San Martin 456', '1134567890');
insert into agenda (nombre, domicilio, telefono) values ('Matias', 'Belgrano 789', '1145678901');
insert into agenda (nombre, domicilio, telefono) values ('Sofia', 'Mitre 321', '1156789012');
insert into agenda (nombre, domicilio, telefono) values ('Fernando', 'Lavalle 654', '1167890123');
insert into agenda (nombre, domicilio, telefono) values ('Camila', 'Corrientes 987', '1178901234');
insert into agenda (nombre, domicilio, telefono) values ('Javier', 'Urquiza 159', '1189012345');
insert into agenda (nombre, domicilio, telefono) values ('Valentina', 'Sarmiento 753', '1190123456');
insert into agenda (nombre, domicilio, telefono) values ('Diego', 'Moreno 852', '1101234567');
insert into agenda (nombre, domicilio, telefono) values ('Martina', 'Callao 951', '1112345678');


insert into agenda (nombre, domicilio, telefono) values
    ('Gabriel', 'Pueyrredon 145', '1122334455'),
    ('Florencia', 'Alem 278', '1133445566'),
    ('Nicolas', 'Maipu 390', '1144556677'),
    ('Julieta', 'Santa Fe 512', '1155667788'),
    ('Ricardo', 'Independencia 640', '1166778899');

-- 8- Seleccione y muestre todos los registros de la tabla:
select * from agenda;

-- Felicitaciones usted ha armado su agenda personal!!!!


use colegio;
select * from alumnos;


-- -----------------------------------
-- Tipos de datos más comunes en MySQL
-- -----------------------------------


-- Tipo de datos Texto de datos más comunes

-- Tipo		Bytes de almacenamiento
-- _______________________________________
-- char(x)		x
-- varchar(x)	x+1

--  nombre char(20)             20 bytes

--  |ANA                 |      20 bytes
--  |CARLOS              |      20 bytes
--  |MAXIMILIANO         |      20 bytes
--                     Total:   60 bytes

-- nombre varchar(20)           longitud+1
--  |ANA                 |      3 + 1 =  4 bytes
--  |CARLOS              |      6 + 1 =  7 bytes
--  |MAXIMILIANO         |      11+ 1 = 12 bytes
--                     Total:   23 bytes


-- Tipo de datos Numérico

-- Tipo		Bytes de almacenamiento
-- _______________________________________
-- bool (boolean)	1	(0 es false distinto de 0 es true)
-- tinyint			1	2^8		    256
-- smallint			2	2^16		65536
-- mediumint		3	2^24		16777216
-- int (integer)	4	2^32		4294967296
-- bigint			8	2^64		18446744073709551616
-- float			4	 		
-- double			8
-- decimal(t,d)		t+2 

-- codigo tinyint signed,
--      |----|----|
--    -128   0    127

-- codigo tinyint unsigned;
--      |---------|
--      0        255

-- precio float
--      10/3
--      3.333333
--      --------


--      100/3
--      33.33333
--      --------

--      1000/3
--      333.3333
--      --------

--     precio double 
--      10/3
--      3.33333333333333
--      ----------------

--      100/3
--      33.3333333333333
--      ----------------

--      1000/3
--      333.333333333333
--      ----------------

--      precio decimal(9,2)     9+2=11 bytes
--      9999999,99
--      -------,--

--      precio decimal(10,2)    10+2=12 bytes
--      99999999,99
--      --------,--

--      precio decimal(9,3)     9+2=11 bytes
--      999999,999
--      ------,---


-- Tipo de datos Fecha y Hora

-- Tipo		Bytes de almacenamiento
-- _______________________________________
-- date		3	Año Mes Dia ‘2012-10-25’		
-- datetime	8
-- time		3
-- year		1

-- fecha date,          '2026-05-29' '2026/05/29'

select curdate();           -- fecha date
select sysdate();           -- fecha y hora datetime
select curtime();           -- fora time      


-- TODO HOLA MUNDO!!

-- ------------------------
-- Definiciones importantes
-- ------------------------


-- Significado de SQL
-- Structured Query Language

-- ANSI SQL
-- En la actualidad el SQL es el estándar de facto de la inmensa mayoría de los SGBD comerciales.
-- Y, aunque la diversidad de añadidos particulares que incluyen las distintas implementaciones
-- comerciales del lenguaje es amplia, el soporte al estándar SQL-92 es general y muy amplio.


-- DDL (DATA DEFINITION LANGUAGE)
-- Create table
-- Alter table
-- Drop table

-- DML (DATA MANIPULATION LANGUAGE)
-- Select
-- Insert
-- Update
-- Delete