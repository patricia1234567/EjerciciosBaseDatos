use empleados_de_una_empresa;

/* Utilizando los comandos de definición de datos se pide:

1. Crear cada una de las tablas que se muestran en el gráfico.
2. Agregar a la tabla empleados los campos dirección y teléfono.
*/

CREATE TABLE departamentos (
    codigo INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    presupuesto INT NOT NULL
);

CREATE TABLE empleados (
    dni VARCHAR(8) PRIMARY KEY NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    departamento INT NOT NULL,
    FOREIGN KEY (departamento)
        REFERENCES departamentos (codigo)
);

alter table empleados add direccion varchar(40), add telefono varchar(10);

# Utilizando los comandos de manipulación de datos se pide:
# 1. Insertar los siguientes registros a la tabla Departamentos.

insert into departamentos(codigo, nombre, presupuesto) values
(1, 'ventas', 60000),
(2, 'produccion', 120000),
(3, 'calidad', 40000),
(4, 'finanzas', 30000);

#2. Insertar los siguientes registros a la tabla Empleados.

insert into empleados (dni, nombre, apellido, departamento) values
(22856455, 'Sebastian', 'Urtiaga', 1),
(30562255, 'Sergio', 'Suarez', 4),
(19568996, 'Fabian', 'Rodriguez', 3),
(25633664, 'Cintia', 'Saluzzo', 1),
(23896555, 'Esteban', 'Lozano', 4),
(15899666, 'Claudio', 'Serenelli', 3),
(22589933, 'Valeria', 'Guzman', 2);

# 3. Obtener los apellidos de los empleados sin repeticiones

select distinct apellido from empleados;

# 4. Obtener todos los datos de los empleados cuyo apellido comience con P (Investigar directiva “like”)

SELECT 
    *
FROM
    empleados
WHERE
    apellido LIKE 'S%';

# 5. Obtener el presupuesto total de todos los departamentos

SELECT 
    nombre, SUM(presupuesto)
FROM
    departamentos
GROUP BY codigo;

# 6. Obtener el número de empleados en cada departamento

SELECT 
    departamento, COUNT(dni) AS 'empleados_departamento'
FROM
    empleados
GROUP BY departamento;

# 7. Obtener un listado completo de empleados incluyendo el nombre y apellidos del empleado junto al nombre y presupuesto de su departamento

SELECT 
    empleados.nombre,
    empleados.apellido,
    departamentos.nombre,
    departamentos.presupuesto
FROM
    empleados
        INNER JOIN
    departamentos ON codigo = empleados.departamento;


# 8. Obtener los nombres y apellidos de los empleados que trabajen en departamentos cuyo presupuesto sea mayor de $60.000

SELECT 
    empleados.nombre,
    empleados.apellido,
    departamentos.nombre,
    departamentos.presupuesto
FROM
    empleados
        INNER JOIN
    departamentos ON codigo = empleados.departamento
WHERE
    departamentos.presupuesto > 60000;
     

# 9. Obtener el presupuesto medio de todos los departamentos

SELECT 
    nombre, AVG(presupuesto)
FROM
    departamentos
GROUP BY nombre;

# 10. Reasignar a los empleados del departamento de finanzas al departamento de ventas

UPDATE empleados 
SET 
    departamento = 1
WHERE
    departamento = 4;
	
