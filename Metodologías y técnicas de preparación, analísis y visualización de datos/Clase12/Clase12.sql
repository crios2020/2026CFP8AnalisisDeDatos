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

-- 200 registros para tabla autos con patrones de Data Mining
INSERT INTO autos (marca, modelo, color, anio, precio) VALUES
('Toyota','Hilux','Blanco',2019,18402),
('Toyota','Corolla','Blanco',2020,20519),
('Toyota','Corolla','Blanco',2018,16622),
('Toyota','Corolla','Blanco',2026,33365),
('Toyota','Yaris','Blanco',2026,32618),
('Toyota','Yaris','Blanco',2022,23726),
('Toyota','Yaris','Blanco',2023,26638),
('Toyota','Corolla','Blanco',2023,25918),
('Toyota','Hilux','Plata',2023,26908),
('Toyota','Corolla','Negro',2025,31296),
('Toyota','Hilux','Gris',2019,20561),
('Toyota','Yaris','Blanco',2023,27864),
('Toyota','Corolla','Rojo',2021,23085),
('Toyota','Hilux','Blanco',2019,19856),
('Toyota','Hilux','Blanco',2023,26166),
('Toyota','Corolla','Blanco',2022,26574),
('Toyota','Yaris','Blanco',2020,22287),
('Toyota','Yaris','Blanco',2024,28405),
('Toyota','Corolla','Negro',2018,17438),
('Toyota','Yaris','Gris',2022,23971),
('Toyota','Etios','Blanco',2023,26370),
('Toyota','Hilux','Blanco',2025,29685),
('Toyota','Hilux','Negro',2026,33107),
('Toyota','Yaris','Blanco',2024,28782),
('Toyota','Corolla','Rojo',2026,32921),
('Toyota','Yaris','Negro',2019,18926),
('Toyota','Etios','Blanco',2019,19876),
('Toyota','Hilux','Rojo',2025,31267),
('Toyota','Corolla','Blanco',2018,19286),
('Toyota','Hilux','Blanco',2026,31992),
('Toyota','Etios','Blanco',2024,27947),
('Toyota','Yaris','Blanco',2022,25750),
('Toyota','Hilux','Gris',2019,20861),
('Toyota','Hilux','Gris',2021,22526),
('Toyota','Hilux','Blanco',2026,30902),
('Toyota','Hilux','Blanco',2019,19786),
('Toyota','Corolla','Blanco',2021,24223),
('Toyota','Yaris','Blanco',2025,29383),
('Toyota','Yaris','Blanco',2025,31351),
('Toyota','Yaris','Negro',2024,28167),
('Toyota','Etios','Blanco',2023,27294),
('Toyota','Hilux','Blanco',2021,22162),
('Toyota','Yaris','Blanco',2026,31842),
('Toyota','Corolla','Rojo',2018,17437),
('Toyota','Yaris','Blanco',2023,25790),
('Toyota','Yaris','Gris',2025,29977),
('Toyota','Etios','Blanco',2025,30095),
('Toyota','Etios','Blanco',2019,18697),
('Toyota','Corolla','Blanco',2024,29212),
('Toyota','Etios','Rojo',2019,18548),
('Toyota','Yaris','Blanco',2019,19318),
('Toyota','Etios','Blanco',2025,29674),
('Toyota','Corolla','Blanco',2025,30123),
('Toyota','Corolla','Blanco',2026,31301),
('Toyota','Corolla','Rojo',2026,30960),
('Toyota','Etios','Blanco',2021,22581),
('Toyota','Corolla','Blanco',2021,23542),
('Toyota','Hilux','Rojo',2018,18099),
('Toyota','Etios','Blanco',2025,30268),
('Toyota','Etios','Blanco',2026,33611),
('Toyota','Corolla','Blanco',2022,24591),
('Toyota','Hilux','Blanco',2026,31149),
('Toyota','Yaris','Blanco',2025,31159),
('Toyota','Yaris','Blanco',2026,31228),
('Toyota','Yaris','Blanco',2019,21065),
('Toyota','Corolla','Blanco',2021,24271),
('Toyota','Hilux','Blanco',2024,29992),
('Toyota','Hilux','Blanco',2023,26477),
('Toyota','Hilux','Blanco',2022,25572),
('Toyota','Corolla','Blanco',2018,18377),
('Ford','Ranger','Blanco',2017,17244),
('Ford','Fiesta','Blanco',2019,16063),
('Ford','Ka','Rojo',2018,15592),
('Ford','Focus','Plata',2022,21578),
('Ford','Focus','Blanco',2022,21552),
('Ford','Focus','Plata',2018,15245),
('Ford','Ranger','Blanco',2022,20373),
('Ford','Ranger','Blanco',2023,22025),
('Ford','Ka','Blanco',2024,23662),
('Ford','Ka','Rojo',2014,10256),
('Ford','Focus','Blanco',2018,14661),
('Ford','Fiesta','Plata',2016,14045),
('Ford','Ka','Gris',2021,22419),
('Ford','Focus','Plata',2014,10416),
('Ford','Focus','Rojo',2016,16369),
('Ford','Fiesta','Negro',2019,20271),
('Ford','Ranger','Blanco',2016,12242),
('Ford','Fiesta','Plata',2014,12431),
('Ford','Ranger','Rojo',2017,13942),
('Ford','Fiesta','Blanco',2022,22429),
('Ford','Ka','Blanco',2016,13350),
('Ford','Ka','Rojo',2016,14621),
('Ford','Ranger','Blanco',2024,23532),
('Ford','Ka','Rojo',2025,23585),
('Ford','Fiesta','Blanco',2014,13355),
('Ford','Ranger','Rojo',2021,20764),
('Ford','Focus','Plata',2017,14926),
('Ford','Ranger','Blanco',2017,16364),
('Ford','Ranger','Plata',2015,12986),
('Ford','Ranger','Blanco',2022,22374),
('Ford','Fiesta','Gris',2015,12839),
('Ford','Focus','Gris',2018,14613),
('Ford','Ranger','Negro',2020,19531),
('Ford','Focus','Negro',2023,24489),
('Ford','Ranger','Blanco',2023,21857),
('Chevrolet','Cruze','Verde',2024,23372),
('Chevrolet','Tracker','Rojo',2025,22414),
('Chevrolet','Tracker','Blanco',2014,12504),
('Chevrolet','Tracker','Rojo',2024,22260),
('Chevrolet','Tracker','Verde',2018,17096),
('Chevrolet','Prisma','Rojo',2015,12371),
('Chevrolet','Tracker','Rojo',2023,20225),
('Chevrolet','Tracker','Gris',2021,16803),
('Chevrolet','Tracker','Azul',2016,15321),
('Chevrolet','Onix','Verde',2020,19422),
('Chevrolet','Cruze','Gris',2020,17190),
('Chevrolet','Cruze','Negro',2021,19545),
('Chevrolet','Onix','Negro',2023,21342),
('Chevrolet','Cruze','Negro',2015,11000),
('Chevrolet','Prisma','Rojo',2020,16396),
('Chevrolet','Prisma','Azul',2023,20392),
('Chevrolet','Onix','Blanco',2019,16798),
('Chevrolet','Prisma','Negro',2025,21673),
('Chevrolet','Prisma','Blanco',2015,15043),
('Chevrolet','Cruze','Azul',2021,18841),
('Chevrolet','Tracker','Azul',2015,14606),
('Chevrolet','Prisma','Verde',2022,21935),
('Chevrolet','Prisma','Azul',2020,17103),
('Chevrolet','Tracker','Verde',2017,14825),
('Chevrolet','Tracker','Azul',2020,17759),
('Chevrolet','Onix','Gris',2014,12140),
('Chevrolet','Cruze','Blanco',2018,16419),
('Chevrolet','Prisma','Blanco',2015,12694),
('Chevrolet','Cruze','Rojo',2024,21552),
('Chevrolet','Prisma','Rojo',2019,17510),
('Volkswagen','Virtus','Negro',2015,13194),
('Volkswagen','Virtus','Negro',2024,24260),
('Volkswagen','Amarok','Rojo',2015,14381),
('Volkswagen','Polo','Negro',2021,23332),
('Volkswagen','Virtus','Negro',2018,17935),
('Volkswagen','Amarok','Plata',2015,14685),
('Volkswagen','Polo','Rojo',2025,28812),
('Volkswagen','Golf','Negro',2022,22345),
('Volkswagen','Golf','Blanco',2024,28723),
('Volkswagen','Polo','Rojo',2025,29011),
('Volkswagen','Golf','Blanco',2022,22788),
('Volkswagen','Polo','Negro',2021,22581),
('Volkswagen','Virtus','Blanco',2020,21264),
('Volkswagen','Golf','Negro',2021,21966),
('Volkswagen','Golf','Blanco',2015,15918),
('Volkswagen','Golf','Rojo',2018,16262),
('Volkswagen','Polo','Rojo',2015,13525),
('Volkswagen','Polo','Blanco',2015,12748),
('Volkswagen','Polo','Negro',2022,22237),
('Volkswagen','Amarok','Blanco',2026,28999),
('Volkswagen','Golf','Rojo',2024,29074),
('Volkswagen','Golf','Gris',2017,16848),
('Volkswagen','Virtus','Negro',2015,14055),
('Volkswagen','Golf','Gris',2026,28524),
('Volkswagen','Golf','Plata',2026,28889),
('BMW','320i','Negro',2020,59421),
('BMW','X3','Gris',2021,57956),
('BMW','X1','Negro',2017,43079),
('BMW','X3','Negro',2022,70946),
('BMW','X3','Blanco',2022,55868),
('BMW','X1','Plata',2022,49771),
('BMW','X1','Gris',2023,61772),
('BMW','X1','Plata',2019,36339),
('BMW','X3','Plata',2019,58091),
('BMW','X3','Gris',2021,41440),
('BMW','330i','Gris',2018,45976),
('BMW','X1','Gris',2020,48152),
('BMW','330i','Negro',2024,51332),
('BMW','X3','Plata',2019,57095),
('BMW','330i','Plata',2024,75843),
('BMW','X3','Plata',2026,81325),
('BMW','X1','Blanco',2016,26049),
('BMW','330i','Gris',2022,66668),
('BMW','X1','Plata',2026,77056),
('BMW','X1','Plata',2024,68397),
('BMW','X1','Plata',2024,61839),
('BMW','X1','Blanco',2020,47047),
('BMW','330i','Gris',2017,50135),
('BMW','330i','Blanco',2017,50842),
('BMW','X3','Gris',2019,57702),
('Honda','HR-V','Blanco',2025,32797),
('Honda','Fit','Blanco',2019,21926),
('Honda','Civic','Plata',2018,20476),
('Honda','HR-V','Blanco',2024,28036),
('Honda','Fit','Plata',2016,17393),
('Honda','Civic','Gris',2023,26340),
('Honda','City','Negro',2020,24845),
('Honda','Civic','Blanco',2021,24010),
('Honda','Civic','Negro',2023,26434),
('Honda','Civic','Blanco',2023,26106),
('Honda','Civic','Blanco',2018,20489),
('Honda','Fit','Rojo',2017,19909),
('BMW','X3','Negro',2026,98000.0),
('BMW','330i','Blanco',2025,105000.0),
('Toyota','Hilux','Blanco',2026,85000.0);

INSERT INTO autos (marca, modelo, color, anio, precio) VALUES
('Renaul', '12', 'Azul', 2002, 2000);

-- 1. ¿Cuál es la marca más vendida?
SELECT marca, COUNT(*) AS cantidad
    FROM autos
    GROUP BY marca
    ORDER BY cantidad DESC;
-- Información obtenida:
--    • Qué marcas predominan. 
--    • Participación de cada marca en el total. 
--    • Tendencias de preferencia de los clientes. 


-- 2. Precio promedio por marca
SELECT marca,
        ROUND(AVG(precio),2) AS precio_promedio
        FROM autos
        GROUP BY marca
        ORDER BY precio_promedio DESC;
-- Información obtenida:
--    • Qué marcas pertenecen a segmentos premium. 
--    • Cuáles son más económicas. 

-- 3. Color más popular
SELECT color,
        COUNT(*) AS cantidad
        FROM autos
        GROUP BY color
        ORDER BY cantidad DESC;
-- Información obtenida:
--    • Preferencias de color. 
--    • Posibles decisiones sobre stock futuro. 

-- 4. Precio promedio según antigüedad
SELECT
    CASE
        WHEN YEAR(CURDATE()) - anio <= 3 THEN '0-3 años'
        WHEN YEAR(CURDATE()) - anio <= 7 THEN '4-7 años'
        WHEN YEAR(CURDATE()) - anio <= 12 THEN '7-12 años'
        ELSE 'Más de 12 años'
    END AS antiguedad,
    COUNT(*) AS cantidad,
    ROUND(AVG(precio),2) AS precio_promedio
    FROM autos
    GROUP BY antiguedad;
-- Información obtenida:
--    • Cómo afecta la antigüedad al precio. 
--    • Segmentación del parque automotor. 

-- 5. Variabilidad de precios por marca
SELECT marca,
        ROUND(AVG(precio),2) AS promedio,
        ROUND(STDDEV_POP(precio),2) AS desviacion,
        ROUND(VAR_POP(precio),2) AS varianza
        FROM autos
        GROUP BY marca
        order by desviacion;

-- Información obtenida:
--    • Si una marca tiene precios muy dispersos o muy homogéneos. 
--    • Una desviación estándar alta indica gran variedad de precios. 

-- 6. Relación entre color y marca
SELECT marca,
        color,
        COUNT(*) AS cantidad
        FROM autos
        GROUP BY marca, color
        ORDER BY marca, cantidad DESC;
SELECT marca,
        color,
        COUNT(*) AS cantidad
        FROM autos
        GROUP BY marca, color
        ORDER BY cantidad DESC, marca;
-- Información obtenida:
--    • Los compradores de Toyota prefieren el blanco. 
--    • Los compradores de Ford prefieren el gris. 
-- Este tipo de análisis es muy parecido a las reglas de asociación utilizadas en Data Mining.

-- 7. Detectar posibles valores atípicos (outliers)
SELECT *
    FROM autos
    WHERE precio >
    (
        SELECT AVG(precio) + 2 * STDDEV_POP(precio)
        FROM autos
    )
    order by precio desc
    LIMIT 10;

SELECT *
    FROM autos
    WHERE precio <
    (
        SELECT AVG(precio) + 2 * STDDEV_POP(precio)
        FROM autos
    )
    order by precio asc
    limit 10;
-- Información obtenida:
--    • Autos con precios excepcionalmente altos. 
--    • Posibles errores de carga o vehículos de lujo. 

-- 8. Segmentación simple de autos
SELECT
    CASE
        WHEN precio < 15000 THEN 'Gama Económica'
        WHEN precio < 30000 THEN 'Gama Media'
        ELSE 'Alta Gama'
    END AS segmento,
    COUNT(*) AS cantidad,
    ROUND(AVG(precio),2) AS promedio
FROM autos
GROUP BY segmento;
-- Información obtenida:
--    • Distribución del mercado por segmentos. 
--    • Qué porcentaje pertenece a cada categoría. 
INSERT INTO autos (marca, modelo, color, anio, precio) VALUES
    ('Renault', '12', 'Azul', 2002, 2000);

use vehiculos;


use Negocio;
drop table if exists empleados;


