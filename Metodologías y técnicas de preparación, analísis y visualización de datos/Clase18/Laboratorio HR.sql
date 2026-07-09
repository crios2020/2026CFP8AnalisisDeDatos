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
select * from LOCATIONS;
insert into LOCATIONS values 
    (3300,'Medrano 162','1069','CABA','CABA','AR'),
    (3400,'Perú 380','1069','CABA','CABA','AR'),
    (3500,'Viel 345','1069','CABA','CABA','AR'),
    (3600,'Lima 234','1069','CABA','CABA','AR'),
    (3700,'Lavalle 648','1069','CABA','CABA','AR');

-- Ingresar 5 nuevos departamentos (departments)
select * from DEPARTMENTS;
insert into DEPARTMENTS values 
    (280,'Recursos Humanos',null,3300),
    (290,'Mantenimiento',null,3400),
    (300,'Seguridad',null,3500),
    (310,'Planeamiento',null,3600),
    (320,'Redes y Bases de Datos',null,3700);

-- Ingresar 5 nuevos empleados (employees).
select * from EMPLOYEES;
select * from JOBS;
insert into EMPLOYEES values 
    (1200,'Ramiro','Perez','Rami@gmail.com','123456789','2026-10-10','IT_PROG',50000,null,120,320),
    (1201,'Laura','Salinas','Sali@gmail.com','52526789','2026-10-10','IT_PROG',50000,null,120,320),
    (1202,'Diana','Delssin','Dianita@gmail.com','32356789','2026-10-10','IT_PROG',50000,null,120,320),
    (1203,'Martin','Soto','Marti@gmail.com','87856789','2026-10-10','IT_PROG',50000,null,120,320),
    (1204,'Claudio','Perez','Claude@gmail.com','989856789','2026-10-10','IT_PROG',50000,null,120,320);
-- Listar todos los empleados mostrando mostrando los datos del departamento de trabajo (departments)
select * from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
        join LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID 
        order by e.EMPLOYEE_ID;
-- Listar todos los empleados ordenados por fecha de contratación (hire_date)
select * from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
        join LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID 
        order by e.HIRE_DATE;
-- Listar todos los empleador mostrando antiguedad en años.
select *, TIMESTAMPDIFF(YEAR, HIRE_DATE, CURDATE()) AS antiguedad_años 
		from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
        join LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID 
        order by e.HIRE_DATE;

-- Mostrar cantidad de empleados por departamento.
select d.DEPARTMENT_ID, d.DEPARTMENT_NAME, count(*) Cantidad_de_Empleados from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
        join LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID 
        group by d.DEPARTMENT_ID;
-- Listar todos los departamentos mostrando direccion completa (locations,countries,regions).
select * from DEPARTMENTS d join LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID 
    join COUNTRIES c on l.COUNTRY_ID=c.COUNTRY_ID 
    join REGIONS r on c.REGION_ID=r.REGION_ID;
-- Listar todos los empleados y el nombre del jefe (usar jod_id).
select * from EMPLOYEES e left join EMPLOYEES b on e.MANAGER_ID=b.EMPLOYEE_ID;
-- Listar todos los empleados que trabajan en departamentos de argentina.
select * from EMPLOYEES e join DEPARTMENTS d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
    join LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID 
    join COUNTRIES c on l.COUNTRY_ID=c.COUNTRY_ID 
    join REGIONS r on c.REGION_ID=r.REGION_ID
    where r.REGION_ID='AR';
-- Listar todos los departamentos agrupados por ciudad.
select * from DEPARTMENTS d join LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID 
    join COUNTRIES c on l.COUNTRY_ID=c.COUNTRY_ID 
    join REGIONS r on c.REGION_ID=r.REGION_ID
    order by l.CITY;

use hr;
