use tienda_informatica;

create table fabricantes
(
codigo int primary key not null,
nombre varchar(100) not null
);

create table articulos
(
codigo int primary key not null,
nombre varchar(100) not null,
precio int not null,
fabricante int not null,
foreign key (fabricante) references fabricantes(codigo)
);

/*Utilizando los comandos de definición de datos se pide:

1.	Crear cada una de las tablas que se muestran en el gráfico.

2.	Agregar a la tabla fabricantes el campo dirección

3.Insertar los siguientes registros a la tabla Fabricantes */

alter table fabricantes add direccion varchar(30);

insert into fabricantes (codigo, nombre) values
(1, 'TecNet'),
(2, 'SopNet'),
(3, 'Insumet'),
(4, 'AP Tecnologia');

# 4. Insertar los siguientes registros a la tabla Productos

insert into articulos (codigo, fabricante, nombre, precio) values
(1, 1, 'altavoces', 70),
(2, 1, 'mouse', 50),
(3, 2, 'teclado', 60),
(4, 2, 'notebook', 3500),
(5, 3, 'mouse inalambrico', 70),
(6, 4, 'monitor 19"', 600),
(7, 4, 'netbook', 1900);

# 5.	Obtener los nombres y los precios de los artículos de la tienda
select nombre, precio from articulos;

# 6.	Obtener todos los datos de los artículos cuyo precio esté entre los $60 y los $120
select * from articulos where precio > 60 and precio < 120;

# 7.	Seleccionar el precio medio de todos los productos del fabricante con código 2
select avg (precio) from articulos where fabricante = 2;

# 8.	Obtener el número de artículos cuyo precio sea mayor o igual a $180
select codigo from articulos where precio >= 180;

# 9.	Obtener el nombre y precio de los artículos cuyo precio sea mayor o igual a $180 y ordenarlos descendentemente por precio y luego ascendentemente por nombre
select nombre, precio from articulos where precio >=180 order by precio desc, nombre asc;

#10.	Obtener un listado de artículos, incluyendo el nombre del artículo, su precio y el nombre del fabricante
select nombre, precio, fabricante from articulos;

#11.	Obtener el precio medio de los productos de cada fabricante, mostrando el nombre del fabricante
select avg(precio), fabricante from articulos group by fabricante;

#12.	Obtener el nombre y precio del articulo más barato
select nombre, min(precio) from articulos;

#13.	Obtener el nombre y precio del articulo más caro y mostrar el nombre del fabricante
select max(precio), fabricante from articulos;

#14.	Cambiar el nombre del producto 7 a “Netbook HP”
UPDATE articulos SET nombre = 'Netbook HP' WHERE codigo = 7;

#15.	Aplicar un descuento del 10% a todos los artículos
UPDATE articulos 
SET 
    precio = precio - (precio * 10 / 100)
WHERE
    codigo != 0;

#16.	Dar de baja el fabricante “Insumet”
DELETE FROM fabricantes WHERE nombre = 'Insumet';




