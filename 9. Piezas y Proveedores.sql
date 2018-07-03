use piezas_proveedores;

/*Utilizando los comandos de definición de datos se pide:

1. Crear cada una de las tablas que se muestran en el gráfico.*/

create table piezas
(
codigo int primary key not null,
nombre varchar(20)
);

create table proveedores
(
id int primary key not null,
nombre varchar(100) not null
);

create table suministra
(
id int primary key not null,
codPieza int not null,
idProveedor int not null,
precio int not null,
foreign key (codPieza) references piezas(codigo),
foreign key (idProveedor) references proveedores(id)
);



/*Utilizando los comandos de manipulación de datos se pide:

1. Ingresar los siguientes registros en la tabla Piezas */

INSERT INTO piezas (codigo, nombre) VALUES 
	(1, 'amortiguador'),
    (2, 'puerta delantera'),
    (3, 'motor'),
    (4, 'paragolpe');
    
# 2. Ingresar los siguientes registros en la tabla Proveedores
    
INSERT INTO proveedores (id, nombre) VALUES 
(1, 'Peugeot'),
(2, 'Renault'),
(3, 'Chevrolet'),
(4, 'Fiat');

# 3. Ingresar los siguientes registros en la tabla Suministra

INSERT INTO suministra (id, codPieza, idProveedor, precio) VALUES
(1, 1, 1, 600),
(2, 1, 2, 750),
(3, 2, 1, 1200),
(4, 2, 3, 1400),
(5, 3, 4, 1900),
(6, 3, 1, 1700),
(7, 3, 2, 1600),
(8, 3, 3, 2200),
(9, 4, 3, 200),
(10, 4, 1, 350);

# 4. Obtener el precio medio de todas las piezas

SELECT 
    AVG(suministra.precio), piezas.nombre
FROM
    suministra
        INNER JOIN
    piezas ON piezas.codigo = suministra.codPieza
        INNER JOIN
    proveedores ON proveedores.id = suministra.idProveedor
GROUP BY codPieza;

# 5. Obtener los nombres de los proveedores que suministran la pieza 4

SELECT
	proveedores.nombre as 'nombreProveedor',
    suministra.codPieza,
    piezas.nombre as 'nombrePieza'
FROM
	suministra
INNER JOIN
proveedores ON proveedores.id = suministra.idProveedor

INNER JOIN
piezas ON piezas.codigo = suministra.codPieza

WHERE suministra.codPieza = 4
;

# 6. Aumentar todos los precios de las piezas en un 5%

UPDATE suministra 
SET 
    precio = precio + (precio * 5 / 100)
WHERE
    id != 0;
    
# 7. Hacer constar en la base de datos que el proveedor Chevrolet ya no va a suministrarnos paragolpes

DELETE FROM
	suministra
where
	codPieza = 4 and idProveedor = 3;
    



