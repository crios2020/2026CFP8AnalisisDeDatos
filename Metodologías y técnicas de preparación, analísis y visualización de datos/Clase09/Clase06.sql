
-- Laboratorio 2
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

-- 8- Mostrar las tablas que tiene la base de datos negocio.
show tables;

-- 9- Describir (detalle de campos - METADATO) cada una de las tablas de la base de datos.
describe clientes;
describe facturas;
describe articulos;

-- 10- Listar los registros de cada tabla.
select * from clientes;
select * from facturas;
select * from articulos;

-- consultas DML Select

-- comodin * (mostrar todos los campos)
select * from clientes;     -- muestra todos los campos de clientes
select nombre,apellido from clientes;   -- muestra solo 2 campos de clientes
select apellido,nombre,apellido,curdate() fecha_actual from clientes;

select concat(nombre,' ',apellido) 'nombre y apellido',
    cuit,direccion
    from clientes;

-- funciones calculadas
select letra,numero,fecha,monto,monto*1.21 from facturas;
select letra,numero,fecha,
    replace(round(monto,2),'.',',') 'monto',
    replace(round(monto*1.21,2),'.',',') 'Total con IVA'
    from facturas;

-- Filtrado con Where
select * from clientes where nombre='Laura';

-- Operadores Relacionales < <= > >=
select * from clientes where codigo>10;
select * from clientes where codigo<=10;

select * from clientes where nombre>='Jose';

select curdate();
select * from facturas where fecha<'2026-01-01';

-- Operadores lógicos and or != <>
select * from clientes where nombre!='Laura';
select * from clientes where nombre<>'Laura';

insert into clientes (nombre,apellido) values 
    ('Laura','Perez'),
    ('Laura','Mendez'),
    ('Juan','Perez'),
    ('Laura','Gomez');

select * from clientes where nombre='Laura' or apellido='Perez';
select * from clientes where nombre='Laura' and apellido='Perez';
select * from clientes where nombre='Laura' or nombre='Jose';
select * from clientes where nombre='Laura' and nombre='Jose';

-- facturas con monto entre 50mil y 100mil
select * from facturas where monto>=50000 and monto<=100000;
select * from facturas where monto between 50000 and 100000;

-- facturas con monto no entre 50mil y 100mil
select * from facturas where monto<50000 or monto>100000;
select * from facturas where monto not between 50000 and 100000;

-- clientes con código (1,4,5,7,17,26)
select * from clientes 
    where codigo=1 
    or codigo=4 
    or codigo=5
    or codigo=7 
    or codigo=17 
    or codigo=26;    
select * from clientes where codigo in (1,4,5,7,17,26);
select * from clientes where codigo not in (1,4,5,7,17,26);

-- Valores null
insert into clientes (nombre, apellido, direccion) values 
    ('Ana','Gallarto',null),
    ('Leonardo','Ventosa','');

select * from clientes;
select * from clientes where direccion is null;
select * from clientes where direccion is not null;
select * from clientes where direccion ='';

-- no funciona
select * from clientes where direccion=null; -- NO HACER ESTO!!!!

insert into clientes (nombre,apellido) values 
    ('Maria','Perez'),
    ('Marta','Perez'),
    ('Mirta','Perez'),
    ('Melina','Perez'),
    ('Monica','Perez'),
    ('Mariela','Perez'),
    ('Mariano','Perez'),
    ('Magali','Perez'),
    ('Omar','Perez');

-- Busqueda de expresiones con like y not like
select * from clientes where nombre like 'm%';
select * from clientes where nombre like 'ma%';
select * from clientes where nombre like 'mar%';
select * from clientes where nombre not like 'm%';
select * from clientes where nombre like '%a';
select * from clientes where nombre like 'm%a';
select * from clientes where nombre like '%ar%';
select * from clientes where nombre like 'm_r%';
select * from clientes where nombre like '___'; -- 3_
select * from clientes where nombre like '____'; -- 4_
select * from clientes where nombre like '____%'; -- 5_

-- Order by
select * from clientes;
select * from clientes order by apellido;
select * from clientes order by apellido asc;
select * from clientes order by apellido desc;

select * from clientes order by apellido, nombre, cuit;
select * from clientes order by apellido, nombre, cuit desc;

select * from clientes where apellido like 'Pe%';

show databases;
use Negocio;
-- Laboratorio 2
-- 1 - Ingrese a la base de datos negocio.
use Negocio;
-- 2 - Ingrese 5 registros aleatorios en cada tabla.
insert into clientes (nombre, apellido, cuit, direccion, comentarios) values
    ('Mariana', 'Gomez', '27-31547896-4', 'Av. Rivadavia 4521, CABA', 'Cliente frecuente de productos de tecnología.'),
    ('Carlos', 'Fernandez', '20-28456123-7', 'San Martin 128, Rosario', 'Solicita facturación electrónica.'),
    ('Lucia', 'Martinez', '27-33874562-1', 'Belgrano 765, Córdoba', 'Prefiere contacto por correo electrónico.'),
    ('Jorge', 'Suarez', '20-25698741-9', 'Mitre 2300, Mendoza', 'Realiza compras mayoristas periódicamente.'),
    ('Valeria', 'Lopez', '27-30124567-5', 'Sarmiento 980, La Plata', 'Cliente nuevo registrado este mes.');

insert into facturas (letra, numero, fecha, monto) values
    ('A', 8001, '2026-05-12', 154320.50),
    ('B', 8002, '2026-05-18', 87540.75),
    ('A', 8003, '2026-05-24', 231900.00),
    ('C', 8004, '2026-06-01', 45210.30),
    ('B', 8005, '2026-06-05', 129875.90);

insert into articulos (nombre, precio, stock) values
    ('Teclado Inalambrico', 28990.50, 18),
    ('Mouse Optico USB', 12450.00, 35),
    ('Monitor LED 24 Pulgadas', 215780.75, 7),
    ('Disco SSD 1TB', 98750.90, 12),
    ('Auriculares Bluetooth', 45620.30, 22);

-- 3 - Basándose en la tabla artículos obtener los siguientes listados.
-- a-	artículos con precio mayor a 10000
select * from articulos where precio>10000;

-- b-	artículos con precio entre 20000 y 40000 (usar < y >)
select * from articulos where precio >= 20000 and precio <= 40000;

-- c-	artículos con precio entre 40000 y 60000 (usar BETWEEN)
select * from articulos where precio between 40000 and 60000;

-- d-	artículos con precio = 20000 y stock mayor a 30
select * from articulos where precio=20000 and stock > 30;

-- e-	artículos con precio (12000,20000,30000) no usar IN
select * from articulos 
    where precio=12000 
    or precio=20000 
    or precio=30000;

select * from articulos;
update articulos set precio=20000 where codigo=22;

-- f-	artículos con precio (12000,20000,30000) usar el IN
select * from articulos where precio in (12000,20000,30000);

-- g-	artículos que su precio no sea (12000,20000,30000)
select * from articulos where precio not in (12000,20000,30000);

-- h-   artículos que su precio mas iva(21 %) sea mayor a 100000
select * from articulos where precio*1.21>100000;

-- i-   listar nombre de los artículos que no cuesten $100000
select nombre from articulos where precio != 100000; 

-- j- 	artículos con nombre que contengan la cadena 'lampara' (usar like)
select * from articulos where nombre like '%lampara%';

-- k-   artículos que su precio sea menor que 200000 y en su nombre no contenga 
--      la letra 'a'
select * from articulos where precio < 200000 and nombre not like '%a%';

-- 	2- Listar los artículos ordenados por precio de mayor a menor, 
--     y si hubiera precio iguales deben quedar ordenados por nombre.
select * from articulos order by precio desc, nombre;

-- 	3- Listar todos los artículos incluyendo una columna denominada precio
--     con IVA, la cual deberá tener el monto con el iva del producto.
select codigo, nombre, 
    replace(round(precio,2),'.',',') precio, 
    replace(round(precio*1.21,2),'.',',') precio_con_IVA, stock
    from articulos;

-- 	4- Listar todos los artículos incluyendo una columna denominada 
--     'cantidad de cuotas' y otra 'valor de cuota', la cantidad es fija y 
--      es 3, el valor de cuota corresponde a 1/3 del monto con un 5% de 
--      interés.
select codigo, nombre, 
        replace(round(precio,2),'.',',') precio, 
        3 'cantidad de cuotas',
        replace(round(precio/3*1.05,2),'.',',') 'valor de cuota', 
        stock 
        from articulos;

        