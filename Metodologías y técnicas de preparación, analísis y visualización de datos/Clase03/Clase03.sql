-- Linea de comentarios
-- CTROL - ENTER    para ejecutar
-- ; es el terminador de sentencias
select version();       -- versión del server
show databases;         -- muestra las bds de server
drop database if exists carlos;     -- borra la bd carlos
create database carlos;             -- crea la bd carlos 

SHOW DATABASES;                     -- Lenguaje no es case sensitive

-- CREATE DATABASE CARLOS;
-- create database Carlos;

use carlos;                         -- activa la BD

show tables;

-- al crear una tabla primero debo declarar el metadato
drop table if exists clientes; 
create table clientes(
    codigo int primary key auto_increment,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    cuit varchar(13),
    direccion varchar(50),
    comentarios varchar(200)
);

describe clientes;          -- muestra el metadato
select * from clientes;     -- muestra los registros de la tabla

-- columna = campo
-- fila = registro

INSERT INTO clientes VALUES
(1,'Juan','Perez','20-12345678-1','Av. Rivadavia 123','Cliente frecuente'),
(2,'Maria','Gomez','27-23456789-2','San Martin 456','Prefiere contacto por mail'),
(3,'Carlos','Lopez','20-34567890-3','Belgrano 789','Compra mensual'),
(4,'Ana','Martinez','27-45678901-4','Mitre 321','Sin comentarios'),
(5,'Luis','Fernandez','20-56789012-5','Sarmiento 654','Cliente nuevo'),
(6,'Sofia','Diaz','27-67890123-6','Lavalle 987','Pago en efectivo'),
(7,'Miguel','Torres','20-78901234-7','Moreno 741','Entrega urgente'),
(8,'Lucia','Ruiz','27-89012345-8','Cordoba 852','Cliente premium'),
(9,'Jorge','Ramirez','20-90123456-9','Santa Fe 963','Sin deuda'),
(10,'Valeria','Acosta','27-11223344-0','Pueyrredon 159','Atención personalizada'),
(11,'Diego','Sosa','20-22334455-1','Callao 753','Cliente corporativo'),
(12,'Paula','Benitez','27-33445566-2','Maipu 951','Retira en sucursal'),
(13,'Martin','Herrera','20-44556677-3','Alsina 147','Cliente eventual'),
(14,'Camila','Silva','27-55667788-4','Peru 258','Solicita factura A'),
(15,'Fernando','Molina','20-66778899-5','Chile 369','Buen historial'),
(16,'Julieta','Castro','27-77889900-6','Mexico 159','Consulta frecuente'),
(17,'Ricardo','Ortiz','20-88990011-7','Independencia 357','Cliente mayorista'),
(18,'Florencia','Vega','27-99001122-8','Jujuy 456','Sin observaciones'),
(19,'Pablo','Rojas','20-10111213-9','Entre Rios 654','Entrega programada'),
(20,'Gabriela','Medina','27-12131415-0','Brasil 852','Cliente VIP'),
(21,'Nicolas','Ibarra','20-13141516-1','Boedo 951','Compra online'),
(22,'Carolina','Navarro','27-14151617-2','Cabildo 123','Pago pendiente'),
(23,'Hector','Campos','20-15161718-3','Nazca 456','Cliente activo'),
(24,'Daniela','Suarez','27-16171819-4','Corrientes 789','Sin comentarios'),
(25,'Esteban','Mendez','20-17181920-5','Triunvirato 159','Buen pagador'),
(26,'Natalia','Paz','27-18192021-6','Roca 258','Requiere seguimiento'),
(27,'Oscar','Luna','20-19202122-7','Yrigoyen 369','Compra semestral'),
(28,'Andrea','Godoy','27-20212223-8','Alberdi 147','Cliente recomendado'),
(29,'Gustavo','Farias','20-21222324-9','Constitucion 258','Entrega normal'),
(30,'Patricia','Mora','27-22232425-0','Montevideo 369','Atención telefónica'),
(31,'Federico','Cabrera','20-23242526-1','Urquiza 753','Sin reclamos'),
(32,'Romina','Leiva','27-24252627-2','Lacroze 951','Cliente habitual'),
(33,'Alberto','Nuñez','20-25262728-3','Olazabal 357','Compra ocasional'),
(34,'Marina','Ponce','27-26272829-4','Mosconi 456','Solicita descuentos'),
(35,'Cristian','Aguirre','20-27282930-5','Donado 654','Pago con transferencia'),
(36,'Veronica','Quiroga','27-28293031-6','Juramento 852','Cliente satisfecho'),
(37,'Adrian','Escobar','20-29303132-7','Balbin 951','Entrega inmediata'),
(38,'Silvina','Cardozo','27-30313233-8','Beiro 123','Sin observaciones'),
(39,'Roberto','Peralta','20-31323334-9','Warnes 456','Compra recurrente'),
(40,'Lorena','Caceres','27-32333435-0','Gaona 789','Prefiere WhatsApp'),
(41,'Ezequiel','Miranda','20-33343536-1','Lope de Vega 159','Cliente antiguo'),
(42,'Micaela','Villalba','27-34353637-2','Segurola 258','Facturación mensual'),
(43,'Raul','Correa','20-35363738-3','Juan B Justo 369','Pago al contado'),
(44,'Elena','Salinas','27-36373839-4','Directorio 147','Compra trimestral'),
(45,'Sebastian','Delgado','20-37383940-5','Nazca 258','Cliente especial'),
(46,'Noelia','Arce','27-38394041-6','Ramon Falcon 369','Sin deuda'),
(47,'Leonardo','Vazquez','20-39404142-7','Eva Peron 753','Entrega pactada'),
(48,'Cintia','Franco','27-40414243-8','Escalada 951','Atención preferencial'),
(49,'Mario','Santana','20-41424344-9','Fernandez de la Cruz 357','Compra anual'),
(50,'Alicia','Moyano','27-42434445-0','Caseros 456','Cliente registrado');

show databases;
use Agendaw;
show tables;
select * from agendawalter;

-- Laboratorio 1
-- 1- Borrar si existe la base de datos Agenda.

-- 2- Crear la base de datos Agenda.

-- 3- Ingresar a la base de datos creada.

-- 4- Crear una tabla llamada "agenda". Debe tener los siguientes campos:
--    nombre (cadena de 20), 
--    domicilio (cadena de 30)
--    telefono (cadena de 11)

-- 5- Visualizar las tablas existentes en la base de datos para verificar la creación de "agenda".

-- 6- Visualizar la estructura de campos de la tabla "agenda". (describe).

-- 7- Ingresar 10 registros con valores aleatorios.

-- 8- Seleccione y muestre todos los registros de la tabla:

-- Felicitaciones usted ha armado su agenda personal!!!!