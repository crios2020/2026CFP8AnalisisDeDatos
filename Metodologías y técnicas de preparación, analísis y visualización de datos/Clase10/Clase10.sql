show databases;
drop database if exists clase10;
create database clase10;
use clase10;

create table alumnos(
    id int auto_increment primary key,
    nombre varchar(20),
    edad int
)

create table alumnos_alta_varianza(
    id int auto_increment primary key,
    nombre varchar(20),
    edad int
)

create table alumnos_baja_varianza(
    id int auto_increment primary key,
    nombre varchar(20),
    edad int
)

create table alumnos_sin_varianza(
    id int auto_increment primary key,
    nombre varchar(20),
    edad int
)

INSERT INTO alumnos (nombre, edad) VALUES
('Juan', 18),
('María', 19),
('Carlos', 20),
('Ana', 21),
('Pedro', 22),
('Lucía', 18),
('Javier', 23),
('Sofía', 19),
('Miguel', 24),
('Valentina', 20),
('Martín', 21),
('Camila', 22),
('Diego', 23),
('Florencia', 24),
('Nicolás', 25),
('Julieta', 18),
('Federico', 19),
('Agustina', 20),
('Tomás', 21),
('Carolina', 22),
('Matías', 23),
('Paula', 24),
('Sebastián', 25),
('Rocío', 19),
('Gabriel', 20),
('Micaela', 21),
('Alejandro', 22),
('Brenda', 23),
('Franco', 24),
('Melina', 25),
('Emiliano', 18),
('Daniela', 19),
('Cristian', 20),
('Natalia', 21),
('Ezequiel', 22),
('Lorena', 23),
('Leandro', 24),
('Silvina', 25),
('Pablo', 18),
('Verónica', 19),
('Andrés', 20),
('Claudia', 21),
('Gustavo', 22),
('Patricia', 23),
('Hernán', 24),
('Marina', 25),
('Ricardo', 18),
('Cecilia', 19),
('Fernando', 20),
('Eliana', 21);

INSERT INTO alumnos_alta_varianza (nombre, edad) VALUES
('Juan', 18),
('María', 65),
('Carlos', 21),
('Ana', 54),
('Pedro', 19),
('Lucía', 72),
('Javier', 25),
('Sofía', 43),
('Miguel', 80),
('Valentina', 22),
('Martín', 67),
('Camila', 20),
('Diego', 58),
('Florencia', 75),
('Nicolás', 24),
('Julieta', 83),
('Federico', 28),
('Agustina', 61),
('Tomás', 19),
('Carolina', 70),
('Matías', 26),
('Paula', 77),
('Sebastián', 23),
('Rocío', 64),
('Gabriel', 18),
('Micaela', 81),
('Alejandro', 29),
('Brenda', 56),
('Franco', 73),
('Melina', 21),
('Emiliano', 68),
('Daniela', 24),
('Cristian', 79),
('Natalia', 20),
('Ezequiel', 62),
('Lorena', 85),
('Leandro', 27),
('Silvina', 57),
('Pablo', 18),
('Verónica', 74),
('Andrés', 31),
('Claudia', 69),
('Gustavo', 22),
('Patricia', 78),
('Hernán', 26),
('Marina', 60),
('Ricardo', 82),
('Cecilia', 19),
('Fernando', 71),
('Eliana', 23);


INSERT INTO alumnos_baja_varianza (nombre, edad) VALUES
('Juan', 20),
('María', 21),
('Carlos', 20),
('Ana', 22),
('Pedro', 21),
('Lucía', 20),
('Javier', 21),
('Sofía', 22),
('Miguel', 20),
('Valentina', 21),
('Martín', 20),
('Camila', 21),
('Diego', 22),
('Florencia', 20),
('Nicolás', 21),
('Julieta', 20),
('Federico', 22),
('Agustina', 21),
('Tomás', 20),
('Carolina', 21),
('Matías', 22),
('Paula', 20),
('Sebastián', 21),
('Rocío', 20),
('Gabriel', 22),
('Micaela', 21),
('Alejandro', 20),
('Brenda', 21),
('Franco', 22),
('Melina', 20),
('Emiliano', 21),
('Daniela', 20),
('Cristian', 21),
('Natalia', 22),
('Ezequiel', 20),
('Lorena', 21),
('Leandro', 20),
('Silvina', 22),
('Pablo', 21),
('Verónica', 20),
('Andrés', 21),
('Claudia', 20),
('Gustavo', 22),
('Patricia', 21),
('Hernán', 20),
('Marina', 21),
('Ricardo', 22),
('Cecilia', 20),
('Fernando', 21),
('Eliana', 20);

INSERT INTO alumnos_sin_varianza (nombre, edad) VALUES
('Juan', 20),
('María', 20),
('Carlos', 20),
('Ana', 20),
('Pedro', 20),
('Lucía', 20),
('Javier', 20),
('Sofía', 20),
('Miguel', 20),
('Valentina', 20),
('Martín', 20),
('Camila', 20),
('Diego', 20),
('Florencia', 20),
('Nicolás', 20),
('Julieta', 20),
('Federico', 20),
('Agustina', 20),
('Tomás', 20),
('Carolina', 20),
('Matías', 20),
('Paula', 20),
('Sebastián', 20),
('Rocío', 20),
('Gabriel', 20),
('Micaela', 20),
('Alejandro', 20),
('Brenda', 20),
('Franco', 20),
('Melina', 20),
('Emiliano', 20),
('Daniela', 20),
('Cristian', 20),
('Natalia', 20),
('Ezequiel', 20),
('Lorena', 20),
('Leandro', 20),
('Silvina', 20),
('Pablo', 20),
('Verónica', 20),
('Andrés', 20),
('Claudia', 20),
('Gustavo', 20),
('Patricia', 20),
('Hernán', 20),
('Marina', 20),
('Ricardo', 20),
('Cecilia', 20),
('Fernando', 20),
('Eliana', 20);


-- Varianza Poblacional
-- VAR_POP()
-- Calcula la varianza poblacional.
-- La varianza es una medida estadística que indica qué tan dispersos están los datos respecto de su promedio.

-- Varianza baja → los valores están muy cerca de la media.
-- Varianza alta → los valores están muy alejados entre sí y del promedio.
-- Varianza cero → todos los valores son iguales.

use clase10;

SELECT VAR_POP(edad) varianza FROM alumnos;                 -- 217.6378
SELECT VAR_POP(edad) varianza FROM alumnos_sin_varianza;    -- 0
SELECT VAR_POP(edad) varianza FROM alumnos_baja_varianza;   -- 0.5876
SELECT VAR_POP(edad) varianza FROM alumnos_alta_varianza;   -- 594.6724

-- Varianza_Muestral
-- La diferencia principal es sobre qué conjunto de datos estás trabajando.

-- Varianza poblacional: se calcula cuando tenés todos los elementos de la población.
-- Varianza muestral: se calcula cuando tenés solo una muestra de la población.
SELECT VAR_SAMP(edad) varianza FROM alumnos;                 -- 221.5948
SELECT VAR_SAMP(edad) varianza FROM alumnos_sin_varianza;    -- 0
SELECT VAR_SAMP(edad) varianza FROM alumnos_baja_varianza;   -- 0.5996
SELECT VAR_SAMP(edad) varianza FROM alumnos_alta_varianza;   -- 606.8086


-- Desviación Standard Poblacional
-- La desviación estándar es una medida estadística que indica cuánto se alejan, en promedio, los datos respecto de la media.
-- Es una de las medidas de dispersión más utilizadas porque se expresa en las mismas unidades que los datos, a diferencia de la varianza.
select avg(edad) edad_promedio from alumnos;                    -- 21.3400
SELECT STDDEV_POP(edad) 'Desviación' FROM alumnos;                  --2.2236
SELECT STDDEV_POP(edad) 'Desviación' FROM alumnos_sin_varianza;    -- 0
SELECT STDDEV_POP(edad) 'Desviación' FROM alumnos_baja_varianza;   -- 0.7666
SELECT STDDEV_POP(edad) 'Desviación' FROM alumnos_alta_varianza;   -- 24.3859

-- Desviación Standard Muestral
SELECT STDDEV_SAMP(edad) 'Desviación' FROM alumnos;                 --2.2462
SELECT STDDEV_SAMP(edad) 'Desviación' FROM alumnos_sin_varianza;    -- 0
SELECT STDDEV_SAMP(edad) 'Desviación' FROM alumnos_baja_varianza;   -- 0.7743
SELECT STDDEV_SAMP(edad) 'Desviación' FROM alumnos_alta_varianza;   -- 24.6335



-- Agrupamiento con Group By
use Negocio;
select letra,sum(monto) total_facturado from facturas where letra='A';
select letra,sum(monto) total_facturado from facturas where letra='B';
select letra,sum(monto) total_facturado from facturas where letra='C';

/*
        Letra       total_facturado
        A           4708557.4
        B           1066959.2
        C           188267.75
*/
select letra, sum(monto) total_facturado from facturas group by letra;

