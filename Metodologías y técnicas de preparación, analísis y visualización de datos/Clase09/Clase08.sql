use Negocio;

-- Comando DML insert   

-- insert normal con definición de campos       ANSI
insert into clientes (nombre,apellido,direccion) values 
    ('Laura','Salinas','Monroe 2626');

-- insert abreviado sin definición de campos    ANSI
insert into clientes values 
    (null,'Debora','Vargas','22232332','Medrano 23','');

-- insert set       NO ANSI
insert clientes set nombre='David', apellido='Campana';

-- insert masivo    ANSI
insert into clientes (nombre, apellido) values 
    ('Florencia','Gomez'),
    ('Giselle','Gomez'),
    ('Cristian','Gomez'),
    ('Mariano','Gomez'),
    ('Flavio','Gomez');

-- Comando DML delete   ANSI
delete from clientes where codigo=12;
select * from clientes; 

-- delete masivo
set sql_safe_updates=0;     -- desactivo la protección de borrado masivo de workbench
delete from clientes where nombre='Juan';

-- Comando DML update   ANSI
update clientes set nombre='Roberto' where codigo=3;


-- Laboratorio

/*
	- Crear la siguiente tabla
    - Ingresar 5 registros
    ----------------------------
	|	Empleados				|
    |---------------------------|
    | nroLegajo int PK auto		|
    | nombre varchar(20)        |
    | apellido varchar(20)      |
    | cargo varchar(20)			|
    | edad int                  |
    | fecha_ingreso date        |
    -----------------------------
*/
use Negocio;
drop table if exists empleados;
create table empleados(
    nroLegajo int auto_increment primary key,
    nombre varchar(20),
    apellido varchar(20),
    cargo varchar(20),
    edad int,
    fecha_ingreso date
);
INSERT INTO empleados (nombre, apellido, cargo, edad, fecha_ingreso) VALUES
('Juan', 'Perez', 'Analista', 35, '2018-03-12'),
('Maria', 'Gomez', 'Desarrollador', 29, '2021-07-05'),
('Carlos', 'Fernandez', 'Supervisor', 42, '2015-11-20'),
('Laura', 'Martinez', 'Administrativo', 31, '2020-01-15'),
('Diego', 'Rodriguez', 'Gerente', 48, '2012-09-03');
select * from empleados;

 
-- Laboratorio 
-- Usando la base de datos negocio.
use Negocio;

-- Basándose en la tabla clientes realizar los siguientes puntos.

-- 1- 	Insertar 5 clientes en la tabla clientes utilizando el insert into sin utilizar 
--      campos como parte de la sentencias, es decir de la forma simplificada.
INSERT INTO clientes VALUES
    (NULL, 'Sofia', 'Martinez', '27-31876542-1', 'Av. Rivadavia 4521, Buenos Aires', 'Cliente frecuente'),
    (NULL, 'Lucas', 'Fernandez', '20-28765431-4', 'San Martin 123, Rosario', 'Prefiere contacto por email'),
    (NULL, 'Valentina', 'Gomez', '27-35678901-8', 'Belgrano 987, Cordoba', 'Solicita factura A'),
    (NULL, 'Matias', 'Lopez', '20-30123456-7', 'Mitre 654, Mendoza', 'Realiza compras mensuales'),
    (NULL, 'Camila', 'Ruiz', '27-33456789-5', 'Sarmiento 321, La Plata', 'Sin observaciones');

-- 2-	Insertar 5 clientes en la tabla clientes utilizando los campos como parte de la 
--      sentencias, es decir de la forma extendida. Completar 
--      solo los campos nombre, apellido y CUIT.
INSERT INTO clientes (nombre, apellido, cuit) VALUES
    ('Sofia', 'Martinez', '27-31876542-1'),
    ('Lucas', 'Fernandez', '20-28765431-4'),
    ('Valentina', 'Gomez', '27-35678901-8'),
    ('Matias', 'Lopez', '20-30123456-7'),
    ('Camila', 'Ruiz', '27-33456789-5');
-- 3-	Actualizar el nombre del cliente 1 a Jose.
use Negocio;
select * from clientes;
update clientes set nombre='Jose' where codigo=2;
-- 4-	Actualizar el nombre apellido y cuit del cliente 3 a Pablo Fuentes 20-21053119-0.
update clientes set nombre='Pablo', apellido='Fuentes', cuit='20-21053119-0' 
    where codigo=3;
-- 5-	Actualizar todos los comentarios NULL  a ''
update clientes set comentarios='' where comentarios is null;
-- 6-	Eliminar los clientes con apellido Perez.
delete from clientes where apellido='Perez';
-- 7-	Eliminar los clientes con CUIT Terminan en 0.
delete from clientes where cuit like '%0';
-- Basando se en la tabla artículos, realizar los siguientes puntos.
-- 	8- Aumentar un 20% los precios de los artículos con precio menor igual a 50.
update articulos set precio=round(precio*1.2,2) where precio<=50;
-- 	9- Aumentar un 15% los precios de los artículos con precio mayor a 50.
update articulos set precio=round(precio*1.15,2) where precio>50;
-- 	10- Bajar un 5% los precios de los artículos con precio mayor a 200.
update articulos set precio=round(precio*.95,2) where precio>200;
-- 	11- Eliminar los artículos con stock menor a 0.
delete from articulos where stock<0;
-- 	12- Agregar a la tabla articulos, los campos stockMinimo y stockMaximo. 
-- (usar alter table add)
alter table articulos add stockMinimo int;
alter table articulos add stockMaximo int;
describe articulos;
select * from articulos;
--  13- Completar en los registros los valores de los campos 
--      stockMinimo y stockMaximo (usar update)
--      teniendo en cuenta que el stock mínimo debe ser menor que el stock máximo.
update articulos set stockMinimo=20, stockMaximo=50;
--  14- Lista los articulos que se deben reponer y que cantidad se debe reponer 
--      de cada articulos.
--      Tener en cuenta que se debe reponer cuando el stock es menor al stockMinimo 
--      y la cantidad de articulos a reponer es stockMaximo - stock.
select codigo,nombre,precio, stockMaximo-stock cantidad_a_reponer 
        from articulos where stock<stockMinimo;
--  15- Calcular el valor de venta de toda la mercaderia que hay en stock.
select round(sum(precio*stock),2) valor_total from articulos;
--  16- Calcular el valor de venta + iva de toda la mercaderia que hay en stock.
select round(sum(precio*stock)*1.21,2) valor_total from articulos;
        
-- Funciones de agrupamiento

-- función min(arg)         arg: número, texto, fecha
select min(monto) from facturas;
select min(monto) monto_mínimo from facturas;
select min(fecha) primer_fecha from facturas;
select min(nombre) primer_nombre from clientes;

-- función max(arg)         arg: número, texto, fecha
select max(monto) monto_máximo from facturas;
select max(fecha) ultima_fecha from facturas;
select max(nombre) ultimo_nombre from clientes;

-- función sum(arg)         arg: número
select sum(monto) total_facturas from facturas;
select replace(round(sum(monto),2),'.',',') 'total facturado' from facturas;

-- función avg(arg)         arg: número
select avg(monto) ticket_promedio from facturas;
select replace(round(avg(monto),2),'.',',') ticket_promedio from facturas;

-- función count(*)
select count(*) cantidad from facturas;
select count(*) cantidad from clientes;         -- 48
select count(direccion) cantidad from clientes; -- 43


-- Función de Varianza var_pop()
select var_pop(monto) varianza from facturas;

select * from facturas;

-- TODO - Hacer todas las agrupadas de estadistica
