use mascotas;

create table mascota(
id int primary key auto_increment not null,
nombre varchar(20) not null,
especie char not null,
sexo char not null,
ubicacion varchar(3) not null, 
estado char not null
);

insert into mascota (id, nombre, especie, sexo, ubicacion, estado) values
(1, 'budy', 'p', 'm', 'e05', 'b'),
(2, 'pipo', 'p', 'm', 'e02', 'b'),
(3, 'nuna', 'p', 'h', 'e02', 'a'),
(4, 'bruts', 'p', 'm', 'e04', 'a'),
(5, 'americo', 'g', 'm', 'e04', 'a'),
(6, 'sombra', 'p', 'h', 'e05', 'a'),
(7, 'amaya', 'g', 'h', 'e04', 'a'),
(8, 'talia', 'g', 'h', 'e01', 'b'),
(9, 'trabis', 'p', 'm', 'e02', 'a'),
(10, 'tesa', 'g', 'h', 'e01', 'a'),
(11, 'titito', 'g', 'm', 'e04', 'b'),
(12, 'truca', 'p', 'h', 'e02', 'a'),
(13, 'zulay', 'p', 'h', 'e05', 'a'),
(14, 'dandi', 'g', 'm', 'e04', 'a'),
(15, 'ras', 'g', 'm', 'e01', 'a'),
(16, 'canela', 'p', 'h', 'e02', 'a')
;

# a)	Datos de todas las mascotas.
select * from mascota;

# b)	Datos de las mascotas que están en el centro (estado = a).
select * from mascota where estado = 'a';

# c)	Cantidad de gatos.
select count(especie) as 'cant_gatos' from mascota where especie = 'g';

# d)	Cantidad de perros.
select count(especie) as 'cant_perros' from mascota where especie = 'p';

# e)	Cantidad de gatos agrupados por sexo.
select count(especie) as 'gatos_por_especie' from mascota where especie = 'g' group by sexo;

# f)	Cantidad de perros agrupados por sexo.
select count(especie) as 'perros_por_sexo' from mascota where especie = 'p' group by sexo;

# g)	Cantidad de mascotas agrupadas por departamento.
select count(id) as 'cant_mascotas' from mascota group by(ubicacion);

# h)	Cantidad de departamentos sin repetir.
select count(distinct ubicacion) as 'cant_departamentos' from mascota;

# i)	 ¿Cuántos perros de cada sexo hay en total actualmente en el centro?
select count(id) as 'perros_centro' from mascota where especie = 'p' and estado = 'a' group by sexo;

# j)	 ¿Cuántos ejemplares contiene actualmente cada jaula o ubicación?
select count(id) as 'ejemplares_por_jaula' from mascota group by ubicacion;

# k)	¿Cuántos ejemplares de cada especie, y dentro de cada especie de cada sexo, hay actualmente en el centro?
select count(id) as 'ejemplares_especie_sexo' from mascota where estado = 'a' group by especie, sexo;
