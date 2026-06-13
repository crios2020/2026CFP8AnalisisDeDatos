-- Active: 1780094963500@@127.0.0.1@3306@colegio
create database trenes;
use trenes;
create table tarifas_constitucion_mardelplata (
    id int auto_increment primary key,
    origen varchar(50) not null,
    destino varchar(50) not null,
    pullman decimal(10,2) not null,
    primera decimal(10,2) not null
);

insert into tarifas_constitucion_mardelplata
(origen, destino, pullman, primera)
values
('Plaza Constitución', 'Coronel Brandsen', 6100, 5100),
('Plaza Constitución', 'Chascomús', 11200, 9300),
('Plaza Constitución', 'Lezama', 14500, 12100),
('Plaza Constitución', 'Castelli', 17000, 14200),
('Plaza Constitución', 'Sevigné', 18300, 15300),
('Plaza Constitución', 'Dolores', 19500, 16300),
('Plaza Constitución', 'General Guido', 23500, 19600),
('Plaza Constitución', 'Maipú', 25900, 21600),
('Plaza Constitución', 'Las Armas', 28400, 23700),
('Plaza Constitución', 'General Pirán', 30500, 25400),
('Plaza Constitución', 'Coronel Vidal', 32400, 27000),
('Plaza Constitución', 'Vivoratá', 34700, 28900),
('Plaza Constitución', 'Mar del Plata', 38400, 32000);


