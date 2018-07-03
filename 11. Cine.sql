use cine;

create table generos
(
id int primary key not null,
nombre varchar(30) not null
);

create table peliculas
(
id int primary key not null,
nombre varchar(30) not null,
duracion int not null,
id_genero int not null,
foreign key (id_genero) references generos(id)
);

create table funciones
(
id int primary key not null,
turno varchar(6) not null, #mañana, tarde o noche
id_pelicula int not null,
foreign key (id_pelicula) references peliculas(id)
);

insert into generos (id, nombre) values
(1, 'terror'),
(2, 'comedia'),
(3, 'ciencia ficcion'),
(4, 'suspenso');

insert into peliculas (id, nombre, duracion, id_genero) values
(1,'exorcista', 60, 1),
(2,'martes 13', 90, 1),
(3,'matrix', 120, 3),
(4,'zoolander', 100, 2),
(5,'toystory', 100, 2),
(6,'ted', 100, 2),
(7,'minions', 55, 2),
(8,'aliens', 120, 3);

insert into funciones (id, turno, id_pelicula) values 
(1, 'tarde', 1),
(2, 'noche', 1),
(3, 'mañana', 2),
(4, 'tarde', 2),
(5, 'tarde', 3),
(6, 'mañana', 3),
(7, 'tarde', 4),
(8, 'noche', 4),
(9, 'noche', 5),
(10, 'tarde', 5),
(11, 'noche', 6),
(12, 'tarde', 6);

# 1. Datos de todos los géneros. 
select * from generos;

# 2. Datos de todas las películas. 
select * from peliculas;

# 3. Datos de todas las funciones. 
select * from funciones;

# 4. Nombre de la película que no tengo asociada ninguna función. 
SELECT nombre FROM peliculas
LEFT JOIN id ON peliculas = funciones.id_pelicula
WHERE funciones.id_pelicula IS NULL;

5. Películas que no estén en ninguna función. 
6. Nombre de las películas con los nombres de sus respectivos géneros. 
7. ¿Existe algún género que no tenga una película asociada? 
8. Nombre de las peliculas que esten en turno mañana (Sin repetir nombre). 
9. Nombre de las peliculas que esten en turno tarde. 
10.Nombre de las peliculas que esten en turno noche. 
11.¿Cuantas peliculas hay en en el turno noche? 
12.¿Cuantas peliculas hay entre el turno tarde y noche? 
13.Nombre de cada género con la cantidad de películas asociadas, incluyendo los nombres de los géneros que no tengan ninguna película asociada y ordenar por cantidad de películas y por nombre del género. 
14.Cantidad de películas por función. Ordenar descendentemente por la cantidad de películas. 
15.List de turnos, con nombre películas y géneros. 