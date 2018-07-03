#-Crear una base de datos llamada zoologico.
#-Definir las siguientes tablas y sus relaciones.
#-Cargar al menos 3 registros por tabla (utilizando sentencia SQL y no mediante el
#Sistema gestor).


use zoologico;

create table animales
(
id int primary key auto_increment not null,
# El sexo del animal es una letra M(macho) y H(hembra) - Mayúsculas!
sexo varchar(2) not null,
ano_nacimiento int not null,
pais varchar(20),
nombre varchar(30) not null,
id_especie int not null,
foreign key(id_especie) references especies(id),
id_zoologico int not null,
foreign key(id_zoologico) references zoologicos(id)
);

create table especies
(
id int primary key auto_increment not null,
nombre varchar(20) not null,
familia varchar(20) not null,
peligro_extincion varchar(2) not null
);

create table zoologicos
(
id int primary key auto_increment not null,
nombre varchar(20) not null,
ciudad varchar(20) not null,
pais varchar(20) not null,
tamano_m2 int not null,
presupuesto int not null
);

insert into especies (id, nombre, familia, peligro_extincion) values
(10, 'jirafa', 'mamifero', 'no'),
(8, 'leon', 'mamifero', 'no'),
(4, 'antilope', 'mamifero', 'no'),
(3, 'oso polar', 'mamifero', 'no'),
(6, 'pato común', 'palmipedo', 'no'),
(5, 'pejerrey', 'pez', 'no');

select * from especies;

insert into zoologicos (id, nombre, ciudad, pais, tamano_m2, presupuesto) values
(11, 'Buenos Aires Zoo', 'Buenos Aires', 'Argentina', 6500, 150000),
(12, 'Cordoba Zoo', 'Cordoba', 'Argentina', 4500, 100000),
(13, 'Santa Fe Zoo', 'Santa Fe', 'Argentina', 4200, 95000);

select * from zoologicos;


insert into animales (id, sexo, ano_nacimiento, pais, nombre, id_especie, id_zoologico) values 
(10, 'M', 2010, 'kenia', 'jirafa', 10, 11),
(20, 'H', 2009, 'kenia', 'leon', 8, 12),
(30, 'H', 2005, 'kenia', 'jirafa', 10, 13),
(40, 'M', 2016, 'etiopia', 'antilope', 4, 11),
(50, 'H', 2014, 'alaska', 'oso polar', 3, 12);

select * from animales;

# a) Nombre, ciudad y país de todos los zoológicos
select nombre, ciudad, pais from zoologicos;

# b) El presupuesto total de los zoológicos
select presupuesto from zoologicospersona;




