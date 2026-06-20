-- 1- Crear la tabla 'autos' en una nueva base de datos (Vehiculos) con el siguiente detalle:

-- 	codigo	INTEGER y PK
-- 	marca	VARCHAR(25)
-- 	modelo	VARCHAR(25)
-- 	color	VARCHAR(25)
-- 	anio	INTEGER
-- 	precio	DOUBLE

--  nota: (anio - año) seguramente tu computadora tiene soporte para la letra ñ,
--        pero muchas instalaciones (ej: web host alquilados) pueden que no tenga soporte para esa letra.
-- 		  en programación se acostumbra a usar los caracteres menores a 128 en la tabla ASCII.
drop database if exists vehiculos;
create database vehiculos;
use vehiculos;

CREATE TABLE autos (
    codigo INTEGER AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(25),
    modelo VARCHAR(25),
    color VARCHAR(25),
    anio INTEGER,
    precio DOUBLE
);


-- 2- Agregar el campo patente despues del campo modelo.
alter table autos add patente char(10);

-- 3- Cargar la tabla con 15 autos (hacerlo con MySQL WorkBench o el INSERT INTO).
INSERT INTO autos (marca, modelo, color, anio, precio) VALUES
('Toyota', 'Corolla', 'Blanco', 2022, 32000),
('Ford', 'Focus', 'Negro', 2020, 24500),
('Volkswagen', 'Golf', 'Rojo', 2021, 28900),
('Chevrolet', 'Cruze', 'Azul', 2019, 21500),
('Renault', 'Sandero', 'Gris', 2023, 19800),
('Peugeot', '208', 'Blanco', 2024, 23500),
('Fiat', 'Cronos', 'Rojo', 2022, 21000),
('Honda', 'Civic', 'Negro', 2021, 34500),
('Nissan', 'Sentra', 'Azul', 2020, 27000),
('Hyundai', 'Elantra', 'Gris', 2023, 31000),
('Toyota', 'Yaris', 'Plata', 2019, 18500),
('Ford', 'Ka', 'Blanco', 2018, 14500),
('Volkswagen', 'Polo', 'Azul', 2022, 22500),
('Chevrolet', 'Onix', 'Rojo', 2024, 21500),
('Renault', 'Logan', 'Negro', 2021, 19000),
('Peugeot', '308', 'Gris', 2020, 25500),
('Fiat', 'Argo', 'Blanco', 2023, 20500),
('Honda', 'Fit', 'Azul', 2019, 19500),
('Nissan', 'Versa', 'Rojo', 2022, 24000),
('Hyundai', 'Accent', 'Negro', 2021, 23000),
('Toyota', 'Etios', 'Gris', 2018, 15000),
('Ford', 'Fiesta', 'Azul', 2017, 13500),
('Volkswagen', 'Vento', 'Negro', 2023, 35500),
('Chevrolet', 'Tracker', 'Blanco', 2024, 39000),
('Renault', 'Duster', 'Plata', 2022, 29500),
('Peugeot', '2008', 'Azul', 2021, 28500),
('Fiat', 'Pulse', 'Rojo', 2024, 27000),
('Honda', 'HR-V', 'Gris', 2023, 42000),
('Nissan', 'Kicks', 'Blanco', 2022, 33000),
('Hyundai', 'Creta', 'Negro', 2024, 37000),
('Toyota', 'Hilux', 'Plata', 2023, 52000),
('Ford', 'Ranger', 'Rojo', 2024, 55000),
('Volkswagen', 'Amarok', 'Negro', 2022, 51000),
('Chevrolet', 'S10', 'Azul', 2021, 48000),
('Renault', 'Kwid', 'Amarillo', 2023, 16500),
('Peugeot', 'Partner', 'Blanco', 2020, 24000),
('Fiat', 'Toro', 'Gris', 2022, 43000),
('Honda', 'Accord', 'Negro', 2021, 47000),
('Nissan', 'Frontier', 'Plata', 2023, 50000),
('Hyundai', 'Tucson', 'Azul', 2024, 45000),
('Toyota', 'Camry', 'Negro', 2020, 41000),
('Ford', 'EcoSport', 'Blanco', 2019, 22000),
('Volkswagen', 'Taos', 'Gris', 2024, 39500),
('Chevrolet', 'Spin', 'Rojo', 2022, 26000),
('Renault', 'Captur', 'Azul', 2021, 27500),
('Peugeot', '408', 'Negro', 2023, 34000),
('Fiat', 'Mobi', 'Blanco', 2020, 15500),
('Honda', 'City', 'Gris', 2024, 31500),
('Nissan', 'March', 'Rojo', 2018, 14000),
('Hyundai', 'i20', 'Azul', 2019, 17500);

-- 4- Realizar las siguientes consultas:
-- 	a. obtener el precio máximo.
select max(precio) precio_máximo from autos;
-- 	b. obtener el precio mínimo.
select min(precio) precio_mínimo from autos;
-- 	c. obtener el precio mínimo entre los años 2010 y 2018.
select min(precio) precio_mínimo from autos where anio between 2010 and 2018;
-- 	d. obtener el precio promedio.
select avg(precio) precio_promedio from autos;
-- 	e. obtener el precio promedio del año 2016.
select avg(precio) precio_promedio from autos where anio=2016;
-- 	f. obtener la cantidad de autos.
select count(*) cantidad_de_autos from autos;
-- 	g. obtener la cantidad de autos que tienen un precio entre $235.000 y $240.000.
select count(*) cantidad_de_autos from autos where precio between 23500 and 24000;
-- 	h. obtener la cantidad de autos que hay en cada año.
select anio año, count(*) cantidad_de_autos from autos group by anio;
-- 	i. obtener la cantidad de autos y el precio promedio en cada año.
select anio año, count(*) cantidad_de_autos, avg(precio) precio_promedio from autos group by anio;
-- 	j. obtener la suma de precios y el promedio de precios según marca.
select marca, sum(precio) suma_precio, avg(precio) precio_promedio
    from autos group by marca;
--  k. informar los autos con el menor precio.
select min(precio) from autos;              -- 13500
select * from autos where precio=13500;

-- subconsulta - subquery
select * 
    from autos 
    where precio=(select min(precio) from autos);

--  l. informar los autos con el menor precio entre los años 2016 y 2018.
select * 
    from autos 
    where anio between 2016 and 2018
    and precio=(select min(precio) from autos where anio between 2016 and 2018);
--  m. listar los autos ordenados ascendentemente por marca,modelo,año.
select * from autos order by marca,modelo,anio;
--  n. contar cuantos autos hay de cada marca.
select marca, count(*) cantidad from autos group by marca;
--  o. borrar los autos del siglo pasado.
delete from autos where anio<2000;

use vehiculos;