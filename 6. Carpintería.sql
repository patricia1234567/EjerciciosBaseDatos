use carpinteria;

CREATE TABLE muebles_vendidos (
    id INT PRIMARY KEY NOT NULL,
    tipo_mueble VARCHAR(20) NOT NULL,
    material_mueble VARCHAR(30) NOT NULL,
    cantidad_vendido INT NOT NULL,
    costo_unitario FLOAT NOT NULL,
    nombre_vendedor VARCHAR(20) NOT NULL
);

insert into muebles_vendidos(id, tipo_mueble, material_mueble, cantidad_vendido, costo_unitario, nombre_vendedor) values
(1, 'silla', 'madera', 5, 30, 'martin'),
(2, 'silla', 'plastico', 7, 25, 'eliana'),
(3, 'mesa', 'madera', 1, 50, 'ricardo'),
(4, 'puerta', 'madera', 2, 40, 'erica'),
(5, 'puerta', 'aluminio', 1, 45, 'matias'),
(6, 'bancos', 'madera', 10, 15, 'martin'),
(7, 'cortina', 'madera', 1, 55, 'eliana'),
(8, 'escritorio', 'madera', 2, 40, 'ricardo'),
(9, 'ventana', 'aluminio', 3, 35, 'martin'),
(10, 'placard', 'madera', 2, 100, 'ricardo'),
(11, 'silla', 'madera', 3, 30, 'eliana'),
(12, 'silla', 'madera', 5, 30, 'ricardo'),
(13, 'mesa', 'madera', 2, 50, 'eliana'),
(14, 'cortina', 'madera', 1, 55, 'matias'),
(15, 'escritorio', 'madera', 2, 40, 'erica'),
(16, 'ventana', 'aluminio', 2, 35, 'ricardo');


#a) Obtener todos los datos de la tabla.
select * from muebles_vendidos;

# b) Obtener todos los datos y ordenar por nombre de vendedor.
select * from muebles_vendidos order by nombre_vendedor;

# c) Obtener los nombres de los vendedores sin repetir.
select distinct nombre_vendedor from muebles_vendidos;

# d) ¿Cuántos vendedores hay?.
select count(nombre_vendedor) from muebles_vendidos;

# e) Obtener los tipos de muebles que se vendieron de madera (sin repetir).
select distinct tipo_mueble from muebles_vendidos where material_mueble = 'madera';

# f) Obtener los tipos de muebles que se vendieron de plástico (sin repetir).
select distinct tipo_mueble from muebles_vendidos where material_mueble = 'plastico';

# g) Obtener los tipos de muebles que se vendieron de aluminio (sin repetir).
select distinct tipo_mueble from muebles_vendidos where material_mueble = 'aluminio';

# h) ¿Cuál fue el valor de la venta que más ingresos tuvo? (ayuda, cantidad_vendido * costo_unitario).
select max(cantidad_vendido * costo_unitario) from muebles_vendidos;

# i) Obtener el nombre de vendedor junto con el valor de su mejor venta (group by). Y ordenar de manera descendiente.
select distinct nombre_vendedor, cantidad_vendido * costo_unitario from muebles_vendidos group by (cantidad_vendido * costo_unitario) desc;

# j) ¿Cuál fue el valor de la venta que menos ingresos tuvo? (ayuda, cantidad_vendido * costo_unitario).
select min(cantidad_vendido * costo_unitario) from muebles_vendidos;

# k) ¿Cuál fue el promedio (precio) de las ventas hechas por ricardo?.
select avg(cantidad_vendido * costo_unitario) from muebles_vendidos where nombre_vendedor = 'ricardo';

# l) Dinero que produjo la venta de los muebles según el tipo de material.
select sum(cantidad_vendido * costo_unitario) from muebles_vendidos group by material_mueble;
