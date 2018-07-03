use equipodefutbol;

CREATE TABLE jugadores (
    dni INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    edad INT NOT NULL,
    id_equipo INT NOT NULL,
    FOREIGN KEY (id_equipo)
        REFERENCES equipos (codigo)
);

CREATE TABLE equipos (
    codigo INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(20) NOT NULL
);

CREATE TABLE goles (
    id_gol INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_jugador INT NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_jugador)
        REFERENCES jugadores (dni)
);

# a. Lista de todos los jugadores
SELECT 
    nombre
FROM
    jugadores;

# b. Lista de todos los equipos
SELECT DISTINCT
    nombre
FROM
    equipos;

#c. Lista de los tipos de goles sin repetir
SELECT DISTINCT
    tipo
FROM
    goles;

# d. Promedio de edad por equipo
SELECT 
    AVG(edad)
FROM
    jugadores;

# e. Tabla de goleadores con nombre de equipo (Orden Ascendente)
SELECT 
    equipos.nombre,
    jugadores.nombre,
    COUNT(id_gol) AS cantidad_goles
FROM
    equipos
        INNER JOIN
    jugadores ON equipos.codigo = jugadores.id_equipo
        INNER JOIN
    goles ON jugadores.dni = goles.id_jugador
GROUP BY jugadores.dni
ORDER BY cantidad_goles DESC;

# f. Cantidad de goles por equipo //  VER NO FUNCIONA
SELECT 
    equipos.nombre, COUNT(goles.id_gol) AS cantidad_goles
FROM
    jugadores
        INNER JOIN
    goles ON goles.id_jugador = jugadores.dni
        INNER JOIN
    equipos ON equipos.codigo = jugadores.id_equipo
GROUP BY equipos.nombre;

# g. Jugadores que no hicieron ningún gol (Ayuda: Left join con exclusión de intersección)
SELECT 
    *
FROM
    jugadores
        LEFT JOIN
    goles ON goles.id_jugador = jugadores.dni
WHERE
    goles.id_gol IS NULL;

# h. Obtener nombre y edad de los jugadores cuyo nombre empiece con la letra P
SELECT 
    nombre, edad
FROM
    jugadores
WHERE
    nombre REGEXP '^[p]';

# i. Obtener la edad y el nombre de los jugadores cuyo nombre contenga a
SELECT 
    nombre, edad
FROM
    jugadores
WHERE
    nombre LIKE '%a%';

# j. Obtener un listado de la cantidad de veces que se convirtió un tipo de gol, ordenado descendentemente
SELECT 
    goles.tipo, COUNT(tipo) AS cantidad_goles
FROM
    goles
GROUP BY goles.tipo
ORDER BY cantidad_goles DESC;



