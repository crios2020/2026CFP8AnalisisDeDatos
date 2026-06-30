-- 1- Borrar si existe la base de datos Negocio.
drop database if exists Negocio;

-- 2- Crear la base de datos Negocio.
create database if not exists Negocio;

-- 3- Ingresar a la base de datos creada.
use Negocio;

-- 4- Crear la tabla Clientes dentro de la base de datos con el siguiente detalle:
-- codigo		int auto_increment y PK
-- nombre		varchar(20) not null
-- apellido		varchar(20) not null
-- cuit			char(13)
-- direccion	varchar(50)
-- comentarios 	varchar(140)
-- PK significa Primary Key
drop table if exists clientes;
create table clientes(
    codigo int auto_increment primary key,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    cuit char(13),
    direccion varchar(50),
    comentarios varchar(140)
);

-- 5- Crear la tabla Facturas dentro de la base de datos con el siguiente detalle:

-- Letra		char y PK
-- Numero		integer y PK
-- Fecha		date
-- Monto		double,
-- primary key(letra,numero)
drop table if exists facturas;
create table facturas(
    letra char(1),
    numero int,
    fecha date,
    monto double,
    primary key(letra, numero)
);

-- observar que se esta declarando una clave primaria compuesta
-- es decir primary key(letra,numero)
-- cada campo por si solo no es clave, ni tampoco identifica al registro
-- pero la suma de los dos forman la clave

-- 6- Crear la tabla Articulos dentro de la base de datos con el siguiente detalle:

-- Codigo		integer auto_increment y PK 
-- Nombre 		varchar(50)
-- Precio		double
-- Stock		integer
drop table if exists articulos;
create table articulos(
    codigo int auto_increment primary key,
    nombre varchar(50),
    precio double,
    stock int
);

-- 7- Cargar 50 registros aleatorios en cada tabla.
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values
('Juan','Pérez','20-12345678-3','Av. Rivadavia 1234','Cliente frecuente'),
('María','Gómez','27-23456789-1','San Martín 456','Prefiere contacto por email'),
('Carlos','López','20-34567890-2','Belgrano 789','Solicita presupuestos'),
('Ana','Fernández','27-45678901-4','Mitre 321','Cliente nuevo'),
('Luis','Martínez','20-56789012-5','Sarmiento 654','Realizó varias compras'),
('Laura','Rodríguez','27-67890123-6','Lavalle 987','Consulta precios regularmente'),
('Diego','Sosa','20-78901234-7','Urquiza 741','Pago al contado'),
('Paula','Ramírez','27-89012345-8','Moreno 852','Interesada en promociones'),
('Jorge','Torres','20-90123456-9','Brown 963','Cliente corporativo'),
('Silvia','Díaz','27-11223344-0','Colón 159','Requiere factura A'),
('Ricardo','Castro','20-22334455-1','Pueyrredón 753','Contacto telefónico'),
('Patricia','Herrera','27-33445566-2','Perón 951','Visita mensual'),
('Miguel','Suárez','20-44556677-3','Alem 357','Compra productos premium'),
('Verónica','Molina','27-55667788-4','Yrigoyen 258','Solicitó catálogo'),
('Fernando','Ortiz','20-66778899-5','Italia 654','Cliente activo'),
('Gabriela','Silva','27-77889900-6','España 741','Interesada en novedades'),
('Roberto','Rojas','20-88990011-7','Paraguay 963','Compra por volumen'),
('Mónica','Vega','27-99001122-8','Chile 147','Cliente ocasional'),
('Sergio','Acosta','20-10111213-9','México 258','Solicita seguimiento'),
('Andrea','Benítez','27-12131415-0','Bolivia 369','Prefiere WhatsApp'),
('Hugo','Paz','20-14151617-1','Perú 741','Consulta disponibilidad'),
('Natalia','Medina','27-16171819-2','Venezuela 852','Interesada en financiación'),
('Alberto','Ruiz','20-18192021-3','Brasil 963','Cliente recurrente'),
('Carolina','Navarro','27-20212223-4','Ecuador 159','Solicitó visita comercial'),
('Daniel','Ibarra','20-22232425-5','Panamá 357','Recomendado por otro cliente'),
('Lucía','Cabrera','27-24252627-6','Cuba 456','Compra ocasional'),
('Gustavo','Leiva','20-26272829-7','Honduras 654','Interesado en descuentos'),
('Roxana','Farias','27-28293031-8','Costa Rica 852','Cliente satisfecho'),
('Pablo','Méndez','20-30313233-9','Nicaragua 951','Realiza consultas frecuentes'),
('Claudia','Godoy','27-32333435-0','Guatemala 753','Solicitó información técnica'),
('Esteban','Campos','20-34353637-1','El Salvador 159','Cliente potencial'),
('Marcela','Arias','27-36373839-2','Colombia 258','Pendiente de respuesta'),
('Raúl','Ponce','20-38394041-3','Uruguay 369','Compra mensual'),
('Sandra','Correa','27-40414243-4','Estados Unidos 741','Interesada en nuevos productos'),
('Cristian','Mansilla','20-42434445-5','Canadá 852','Cliente desde 2024'),
('Valeria','Quiroga','27-44454647-6','Francia 963','Solicitó cotización'),
('Oscar','Luna','20-46474849-7','Italia 123','Pago con transferencia'),
('Marina','Aguilar','27-48495051-8','Alemania 234','Atención personalizada'),
('Nicolás','Delgado','20-50515253-9','Portugal 345','Cliente registrado'),
('Elena','Vargas','27-52535455-0','Suiza 456','Interesada en servicio técnico'),
('Matías','Reyes','20-54555657-1','Austria 567','Solicita recordatorios'),
('Noelia','Flores','27-56575859-2','Bélgica 678','Cliente frecuente'),
('Federico','Peña','20-58596061-3','Holanda 789','Compra online'),
('Julieta','Mora','27-60616263-4','Dinamarca 890','Interesada en garantías'),
('Ramiro','Villalba','20-62636465-5','Suecia 901','Cliente empresarial'),
('Soledad','Ojeda','27-64656667-6','Noruega 123','Prefiere atención presencial'),
('Emiliano','Roldán','20-66676869-7','Finlandia 234','Solicita demostraciones'),
('Cecilia','Valdez','27-68697071-8','Irlanda 345','Compradora habitual'),
('Tomás','Escobar','20-70717273-9','Grecia 456','Consulta productos nuevos'),
('Florencia','Peralta','27-72737475-0','Turquía 567','Cliente recomendado');

insert into facturas (letra, numero, fecha, monto) values
('A', 1001, '2025-01-03', 125430.50),
('B', 1002, '2025-01-05', 45890.75),
('C', 1003, '2025-01-07', 9875.20),
('A', 1004, '2025-01-10', 210340.00),
('B', 1005, '2025-01-12', 76540.90),
('C', 1006, '2025-01-15', 15320.45),
('A', 1007, '2025-01-18', 348900.00),
('B', 1008, '2025-01-20', 23450.80),
('C', 1009, '2025-01-23', 8765.30),
('A', 1010, '2025-01-25', 112450.00),
('B', 1011, '2025-01-28', 54320.60),
('C', 1012, '2025-02-01', 6540.25),
('A', 1013, '2025-02-04', 287650.90),
('B', 1014, '2025-02-07', 89340.15),
('C', 1015, '2025-02-09', 12450.70),
('A', 1016, '2025-02-12', 456780.25),
('B', 1017, '2025-02-15', 38990.40),
('C', 1018, '2025-02-18', 17560.90),
('A', 1019, '2025-02-20', 198430.55),
('B', 1020, '2025-02-23', 67320.80),
('C', 1021, '2025-02-26', 9350.10),
('A', 1022, '2025-03-01', 325400.75),
('B', 1023, '2025-03-03', 45230.65),
('C', 1024, '2025-03-06', 14890.20),
('A', 1025, '2025-03-09', 278950.00),
('B', 1026, '2025-03-12', 72110.35),
('C', 1027, '2025-03-14', 11230.45),
('A', 1028, '2025-03-17', 165780.90),
('B', 1029, '2025-03-20', 58320.25),
('C', 1030, '2025-03-22', 7890.60),
('A', 1031, '2025-03-25', 412560.10),
('B', 1032, '2025-03-28', 93450.90),
('C', 1033, '2025-04-01', 16450.75),
('A', 1034, '2025-04-04', 243780.20),
('B', 1035, '2025-04-06', 61450.00),
('C', 1036, '2025-04-09', 13240.95),
('A', 1037, '2025-04-12', 356900.45),
('B', 1038, '2025-04-15', 84760.30),
('C', 1039, '2025-04-18', 9750.80),
('A', 1040, '2025-04-21', 189450.65),
('B', 1041, '2025-04-24', 52340.15),
('C', 1042, '2025-04-27', 14320.55),
('A', 1043, '2025-05-01', 298760.90),
('B', 1044, '2025-05-04', 78210.40),
('C', 1045, '2025-05-07', 8650.25),
('A', 1046, '2025-05-10', 475320.75),
('B', 1047, '2025-05-13', 69450.85),
('C', 1048, '2025-05-16', 11980.30),
('A', 1049, '2025-05-19', 221670.50),
('B', 1050, '2025-05-22', 55780.95);

insert into articulos (nombre, precio, stock) values ('Teclado USB', 18500.50, 42);
insert into articulos (nombre, precio, stock) values ('Mouse Óptico', 9200.75, 67);
insert into articulos (nombre, precio, stock) values ('Monitor 24 Pulgadas', 245000.00, 15);
insert into articulos (nombre, precio, stock) values ('Notebook Core i5', 985000.90, 8);
insert into articulos (nombre, precio, stock) values ('Disco SSD 480GB', 67500.25, 34);
insert into articulos (nombre, precio, stock) values ('Memoria RAM 8GB', 38200.40, 56);
insert into articulos (nombre, precio, stock) values ('Memoria RAM 16GB', 69450.80, 29);
insert into articulos (nombre, precio, stock) values ('Auriculares Bluetooth', 45800.60, 73);
insert into articulos (nombre, precio, stock) values ('Parlante Portátil', 52990.30, 22);
insert into articulos (nombre, precio, stock) values ('Webcam Full HD', 34890.10, 31);
insert into articulos (nombre, precio, stock) values ('Impresora Multifunción', 189500.00, 11);
insert into articulos (nombre, precio, stock) values ('Router WiFi 6', 78500.45, 19);
insert into articulos (nombre, precio, stock) values ('Cable HDMI 2m', 8900.20, 120);
insert into articulos (nombre, precio, stock) values ('Pendrive 64GB', 14500.90, 85);
insert into articulos (nombre, precio, stock) values ('Pendrive 128GB', 22900.75, 61);
insert into articulos (nombre, precio, stock) values ('Disco Externo 1TB', 96500.50, 18);
insert into articulos (nombre, precio, stock) values ('Silla Gamer', 315000.00, 9);
insert into articulos (nombre, precio, stock) values ('Escritorio Melamina', 228900.35, 12);
insert into articulos (nombre, precio, stock) values ('Tablet 10 Pulgadas', 285400.00, 14);
insert into articulos (nombre, precio, stock) values ('Smartphone Android', 675000.60, 21);
insert into articulos (nombre, precio, stock) values ('Smartwatch Deportivo', 125500.80, 27);
insert into articulos (nombre, precio, stock) values ('Cargador USB-C', 11900.50, 93);
insert into articulos (nombre, precio, stock) values ('Adaptador Bluetooth', 7600.40, 48);
insert into articulos (nombre, precio, stock) values ('Micrófono USB', 42350.25, 17);
insert into articulos (nombre, precio, stock) values ('Fuente 600W', 58900.00, 26);
insert into articulos (nombre, precio, stock) values ('Gabinete Gamer', 84500.15, 13);
insert into articulos (nombre, precio, stock) values ('Placa de Video 8GB', 545000.90, 6);
insert into articulos (nombre, precio, stock) values ('Procesador Core i7', 432500.45, 10);
insert into articulos (nombre, precio, stock) values ('Motherboard ATX', 175900.70, 16);
insert into articulos (nombre, precio, stock) values ('Kit Teclado y Mouse', 24900.30, 38);
insert into articulos (nombre, precio, stock) values ('Lector Código Barras', 63500.00, 24);
insert into articulos (nombre, precio, stock) values ('UPS 1000VA', 154000.25, 7);
insert into articulos (nombre, precio, stock) values ('Switch 8 Puertos', 47200.40, 33);
insert into articulos (nombre, precio, stock) values ('Cámara IP', 68750.60, 28);
insert into articulos (nombre, precio, stock) values ('Proyector LED', 329900.50, 5);
insert into articulos (nombre, precio, stock) values ('Lámpara Escritorio', 18900.80, 46);
insert into articulos (nombre, precio, stock) values ('Calculadora Científica', 21450.90, 39);
insert into articulos (nombre, precio, stock) values ('Monitor 27 Pulgadas', 312000.00, 8);
insert into articulos (nombre, precio, stock) values ('Notebook Core i7', 1450000.00, 4);
insert into articulos (nombre, precio, stock) values ('Disco SSD 1TB', 118500.25, 20);
insert into articulos (nombre, precio, stock) values ('Mouse Gamer RGB', 27890.40, 44);
insert into articulos (nombre, precio, stock) values ('Teclado Mecánico', 63500.75, 23);
insert into articulos (nombre, precio, stock) values ('Hub USB 4 Puertos', 12450.60, 58);
insert into articulos (nombre, precio, stock) values ('Cable Red Cat6', 5600.20, 140);
insert into articulos (nombre, precio, stock) values ('Batería Externa 20000mAh', 41500.35, 32);
insert into articulos (nombre, precio, stock) values ('Soporte Monitor', 28750.10, 18);
insert into articulos (nombre, precio, stock) values ('Lector DNI', 75900.80, 9);
insert into articulos (nombre, precio, stock) values ('Escáner Documental', 249500.00, 6);
insert into articulos (nombre, precio, stock) values ('Etiqueta Adhesiva Pack', 8900.50, 95);
insert into articulos (nombre, precio, stock) values ('Impresora Térmica', 138000.45, 12);



-- Diagrama DER - Diagrama Entidad Relación

-- Agregamos el campo de relación entre tabla clientes y facturas
alter table facturas add codigo_cliente int;

-- agregamos la restricción de clave foranea (FK) (Foreign Key)
alter table facturas 
    add constraint FK_Facturas_CodigoCliente
    foreign key(codigo_cliente)
    references clientes(codigo);
describe facturas;
select * from facturas;
select * from clientes;
update facturas set codigo_cliente=2 where letra='A';
update facturas set codigo_cliente=4 where letra='B';
update facturas set codigo_cliente=5 where letra='C';

set sql_safe_updates=0;



-- Consulta del producto cartesiano
select * from clientes, facturas;
select count(*) cantidad from clientes;         -- 50
select count(*) cantidad from facturas;         -- 50
select 50*50;                                   -- 2500
select count(*) cantidad from clientes,facturas;    --2500

-- Consulta del producto relacionado
select * from clientes, facturas where clientes.codigo=facturas.codigo_cliente;

-- uso del alias en tablas
select * from clientes c, facturas f where c.codigo=f.codigo_cliente;

-- Uso del Join
select * from clientes c join facturas f on c.codigo=f.codigo_cliente;

-- Cuales son las facturas de Jose Gomez?
select * 
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    where c.nombre='Jose' and c.apellido='Gomez';
use Negocio;
-- Laboratorio 
-- Usando la base de datos negocio (solo tablas clientes y facturas).

-- 1-	Informar que clientes (codigo, nombre, apellido) han comprado en el día de 
--      hoy.
select c.codigo, c.nombre, c.apellido 
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    where f.fecha=curdate();

-- 2-	Informar la suma de los montos de cada cliente (código,nombre,apellido,
--      total_comprado).
select c.codigo, c.nombre, c.apellido, round(sum(f.monto),2) total_facturado
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    group by c.codigo;
-- 3-	Informar cual es el cliente que más ha comprado (codigo, nombre, apellido).
select c.codigo, c.nombre, c.apellido, round(sum(f.monto),2) total_facturado
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    group by c.codigo
    order by total_facturado desc 
    limit 1;
-- 4-	Informar la cantidad de facturas de cada cliente (codigo, nombre, apellido,cantidad_facturas).
select c.codigo, c.nombre, c.apellido, count(*) cantidad_de_facturas
    from clientes c join facturas f on c.codigo=f.codigo_cliente;
-- 5-	Informar quienes compraron el primer día de ventas 
--      (codigo, nombre, apellido).
select distinct c.codigo, c.nombre, c.apellido 
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    where f.fecha=(select min(fecha) from facturas);

-- 6-	Informar que compro el cliente Juan Perez (letra,nro,fecha,monto).
select c.codigo, c.nombre, c.apellido 
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    where c.nombre='Juan' and c.apellido='Perez';


-- Creamos la tabla detalles
drop table if exists detalles;
create table detalles(
    letra char(1),
    numero int,
    codigo int,
    cantidad int,
    precio_venta double,
    primary key(letra,numero,codigo)
);

alter table detalles 
    add constraint FK_Detalles_Facturas 
    foreign key(letra,numero)
    references facturas(letra,numero);

alter table detalles 
    add constraint FK_Detalles_Articulos 
    foreign key(codigo)
    references articulos(codigo);

describe facturas;

use Negocio;

insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1001,1,1,18500.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1001,8,2,45800.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1001,15,3,22900.75);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1001,27,4,545000.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1002,2,1,9200.75);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1002,9,2,52990.30);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1002,16,3,96500.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1002,28,4,432500.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1003,3,1,245000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1003,10,2,34890.10);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1003,17,3,315000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1003,29,4,175900.70);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1004,4,1,985000.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1004,11,2,189500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1004,18,3,228900.35);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1004,30,4,24900.30);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1005,5,1,67500.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1005,12,2,78500.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1005,19,3,285400.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1005,31,4,63500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1006,6,1,38200.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1006,13,2,8900.20);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1006,20,3,675000.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1006,32,4,154000.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1007,7,1,69450.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1007,14,2,14500.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1007,21,3,125500.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1007,33,4,47200.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1008,22,1,11900.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1008,34,2,68750.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1008,41,3,27890.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1008,47,4,75900.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1009,23,1,7600.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1009,35,2,329900.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1009,42,3,63500.75);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1009,48,4,249500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1010,24,1,42350.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1010,36,2,18900.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1010,43,3,12450.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1010,49,4,8900.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1011,25,1,58900.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1011,37,2,21450.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1011,44,3,5600.20);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1011,50,4,138000.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1012,26,1,84500.15);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1012,38,2,312000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1012,45,3,41500.35);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1012,1,4,18500.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1013,27,1,545000.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1013,39,2,1450000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1013,46,3,28750.10);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1013,2,4,9200.75);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1014,28,1,432500.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1014,40,2,118500.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1014,47,3,75900.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1014,3,4,245000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1015,29,1,175900.70);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1015,41,2,27890.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1015,48,3,249500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1015,4,4,985000.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1016,30,1,24900.30);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1016,42,2,63500.75);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1016,49,3,8900.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1016,5,4,67500.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1017,31,1,63500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1017,43,2,12450.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1017,50,3,138000.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1017,6,4,38200.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1018,32,1,154000.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1018,44,2,5600.20);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1018,1,3,18500.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1018,7,4,69450.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1019,33,1,47200.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1019,45,2,41500.35);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1019,2,3,9200.75);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1019,8,4,45800.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1020,34,1,68750.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1020,46,2,28750.10);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1020,3,3,245000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1020,9,4,52990.30);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1021,35,1,329900.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1021,47,2,75900.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1021,4,3,985000.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1021,10,4,34890.10);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1022,36,1,18900.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1022,48,2,249500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1022,5,3,67500.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1022,11,4,189500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1023,37,1,21450.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1023,49,2,8900.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1023,6,3,38200.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1023,12,4,78500.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1024,38,1,312000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1024,50,2,138000.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1024,7,3,69450.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1024,13,4,8900.20);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1025,39,1,1450000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1025,1,2,18500.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1025,8,3,45800.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1025,14,4,14500.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1026,40,1,118500.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1026,2,2,9200.75);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1026,9,3,52990.30);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1026,15,4,22900.75);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1027,41,1,27890.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1027,3,2,245000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1027,10,3,34890.10);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1027,16,4,96500.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1028,42,1,63500.75);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1028,4,2,985000.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1028,11,3,189500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1028,17,4,315000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1029,43,1,12450.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1029,5,2,67500.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1029,12,3,78500.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1029,18,4,228900.35);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1030,44,1,5600.20);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1030,6,2,38200.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1030,13,3,8900.20);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1030,19,4,285400.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1031,45,1,41500.35);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1031,7,2,69450.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1031,14,3,14500.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1031,20,4,675000.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1032,46,1,28750.10);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1032,8,2,45800.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1032,15,3,22900.75);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1032,21,4,125500.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1033,47,1,75900.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1033,9,2,52990.30);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1033,16,3,96500.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1033,22,4,11900.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1034,48,1,249500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1034,10,2,34890.10);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1034,17,3,315000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1034,23,4,7600.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1035,49,1,8900.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1035,11,2,189500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1035,18,3,228900.35);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1035,24,4,42350.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1036,50,1,138000.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1036,12,2,78500.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1036,19,3,285400.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1036,25,4,58900.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1037,1,1,18500.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1037,13,2,8900.20);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1037,20,3,675000.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1037,26,4,84500.15);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1038,2,1,9200.75);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1038,14,2,14500.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1038,21,3,125500.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1038,27,4,545000.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1039,3,1,245000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1039,15,2,22900.75);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1039,22,3,11900.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1039,28,4,432500.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1040,4,1,985000.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1040,16,2,96500.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1040,23,3,7600.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1040,29,4,175900.70);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1041,5,1,67500.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1041,17,2,315000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1041,24,3,42350.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1041,30,4,24900.30);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1042,6,1,38200.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1042,18,2,228900.35);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1042,25,3,58900.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1042,31,4,63500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1043,7,1,69450.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1043,19,2,285400.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1043,26,3,84500.15);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1043,32,4,154000.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1044,8,1,45800.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1044,20,2,675000.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1044,27,3,545000.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1044,33,4,47200.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1045,9,1,52990.30);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1045,21,2,125500.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1045,28,3,432500.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1045,34,4,68750.60);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1046,10,1,34890.10);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1046,22,2,11900.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1046,29,3,175900.70);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1046,35,4,329900.50);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1047,11,1,189500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1047,23,2,7600.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1047,30,3,24900.30);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1047,36,4,18900.80);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1048,12,1,78500.45);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1048,24,2,42350.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1048,31,3,63500.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('C',1048,37,4,21450.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1049,13,1,8900.20);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1049,25,2,58900.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1049,32,3,154000.25);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('A',1049,38,4,312000.00);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1050,14,1,14500.90);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1050,26,2,84500.15);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1050,33,3,47200.40);
insert into detalles (letra,numero,codigo,cantidad,precio_venta) values ('B',1050,39,4,1450000.00);
select * from detalles;

-- Consulta del producto cartesiano
select * from clientes, facturas, detalles, articulos;

select count(*) cantidad from clientes;             -- 50
select count(*) cantidad from facturas;             -- 50
select count(*) cantidad from detalles;             -- 200
select count(*) cantidad from articulos;            -- 50

select 50*50*200*50;                                -- 25000000
select count(*) cantidad from clientes, facturas, detalles, articulos;
-- 25000000

insert into detalles values ('A',1001,5,40,40);
describe detalles;
select * from detalles;
show tables;
use Negocio;

-- Consulta del producto relacionado
select * 
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    join detalles d on f.letra=d.letra and f.numero=d.numero 
    join articulos a on d.codigo=a.codigo;

select count(*) cantidad 
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    join detalles d on f.letra=d.letra and f.numero=d.numero 
    join articulos a on d.codigo=a.codigo;

use Negocio;

-- Laboratorio - Uso de JOIN

-- Usando la base de datos negocio (usando todas las tablas).
-- 1- Informar quienes (nombre,apellido) compraron 'lamparas'.
select distinct c.codigo, c.nombre, c.apellido
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    join detalles d on f.letra=d.letra and f.numero=d.numero 
    join articulos a on d.codigo=a.codigo
    where a.nombre like '%lampara%';
-- 2- Informar que articulos compro 'Juan Perez'.
select distinct a.codigo, a.nombre, a.precio, a.stock
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    join detalles d on f.letra=d.letra and f.numero=d.numero 
    join articulos a on d.codigo=a.codigo
    where c.nombre='Maria' and apellido='Gomez';
-- 3- Informar cuantas lamparas se vendieron.
select sum(d.cantidad) 'Cantidad de Lamparas'
    from clientes c join facturas f on c.codigo=f.codigo_cliente
    join detalles d on f.letra=d.letra and f.numero=d.numero 
    join articulos a on d.codigo=a.codigo
    where a.nombre like '%lampara%';
-- 4- Informar cuantas unidades se vendieron en total en cada articulo.
-- 5- Informar la lista de artículos vendidos el día de hoy.
-- 6- Informar la lista de artículos vendidos en este mes.
-- 7- Informar la lista de artículos vendidos en este año y la cantidad vendida.
use Negocio;