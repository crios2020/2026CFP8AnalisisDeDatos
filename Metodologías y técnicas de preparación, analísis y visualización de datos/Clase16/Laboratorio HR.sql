-- Active: 1780094963500@@127.0.0.1@3306@hr
-- Usando la base de datos hr

-- Ingresar 5 nuevos paises (countries).
use hr;
select * from REGIONS;
select * from COUNTRIES;
insert into COUNTRIES values 
    ('LE','Chile',2),
    ('PY','Paraguay',2),
    ('PE','Peru',2),
    ('UY','Uruguay',2),
    ('BO','Bolivia',2);

-- Ingresar 5 nuevas ciudades (locations).

-- Ingresar 5 nuevos departamentos (departments)

-- Ingresar 5 nuevos empleados (employees).

-- Listar todos los empleados mostrando mostrando los datos del departamento de trabajo (departments)

-- Listar todos los empleados ordenados por fecha de contratación (hire_date)

-- Listar todos los empleador mostrando antiguedad en años.

-- Mostrar cantidad de empleados por departamento.

-- Listar todos los departamentos mostrando direccion completa (locations,countries,regions).
-- Listar todos los empleados y el nombre del jefe (usar jod_id).
-- Listar todos los empleados que trabajan en departamentos de argentina.
-- Listar todos los departamentos agrupados por ciudad.

use hr;
