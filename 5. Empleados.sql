use empleados;

create table empleado(
id int primary key auto_increment not null,
nombre varchar(30) not null,
sexo char not null,
salario float not null,
comision float not null, 
cargo varchar(20) not null,
departamento int not null
);

insert into empleado (id, nombre, sexo, salario, comision, cargo, departamento) values
(1, 'maria', 'f', 6250000, 1500000, 'gerente', 1000),
(2, 'luis', 'm', 5050000, 0, 'director', 1500),
(3, 'rosa', 'f', 3250000, 3500000, 'jefe ventas', 2000),
(4, 'dario', 'm', 4500000, 500000, 'investigador', 3000),
(5, 'carla', 'f', 4500000, 500000, 'jefe mercadeo', 3500),
(6, 'melissa', 'f', 2250000, 2500000, 'vendedor', 2100),
(7, 'joaquin', 'm', 2250000, 2500000, 'vendedor', 2200),
(8, 'mario', 'm', 2250000, 2500000, 'vendedor', 2300),
(9, 'elisa', 'f', 3000000, 1000000, 'jefe mecanicos', 4000),
(10, 'ivan', 'm', 1050000, 200000, 'mecanico', 4100),
(11, 'irene', 'f', 1050000, 200000, 'mecanico', 4200),
(12, 'abel', 'm', 1050000, 200000, 'mecanico', 4300),
(13, 'jose', 'm', 1200000, 400000, 'asesor', 3500),
(14, 'william', 'm', 2250000, 1000000, 'investigador', 3000),
(15, 'diana', 'f', 1250000, 500000, 'secretaria', 1000),
(16, 'marcos', 'm', 2550000, 500000, 'mecanico', 4000),
(17, 'antonio', 'm', 850000, 1500000, 'tecnico', 1500),
(18, 'marisol', 'f', 3250000, 1000000, 'investigador', 3000),
(19, 'ana', 'f', 1200000, 400000, 'secretaria', 3000),
(20, 'pedro', 'm', 800000, 3000000, 'vendedor', 2000),
(21, 'jesus', 'm', 800000, 3500000, 'vendedor', 2000),
(22, 'carolina', 'f', 1250000, 500000, 'secretaria', 1500),
(23, 'edith', 'f', 800000, 3600000, 'vendedor', 2100),
(24, 'julian', 'm', 800000, 3100000, 'vendedor', 2200),
(25, 'manuel', 'm', 800000, 3700000, 'vendedor', 2300);

# a)	Obtener lo datos completos de los empleados.
select * from empleado;

# b)	Obtener los datos de los empleados con cargo “secretaria”.
select * from empleado where cargo = 'secretaria';

# c)	Obtener nombre y salario de los empleados.
select nombre, salario from empleado;

# d)	Obtener los datos de los empleados vendedores, ordenado por nombre.
select * from empleado where cargo = 'vendedor' order by nombre;

# e)	Obtener el nombre y cargo de todos los empleados, ordenado por salario.
select nombre, cargo, salario from empleado order by salario desc;

# f)	Obtener nombre, cargo y salario de todos los empleados, ordenado por cargo y salario.
select nombre, cargo, salario from empleado order by cargo, salario;

# g)	Obtener nombre y cargo de todos los empleados, en orden inverso por cargo.
select nombre, cargo from empleado order by cargo desc;

# h)	Obtener los nombres, salarios y comisiones de los empleados del departamento 2000.
select nombre, salario, comision from empleado where departamento = 2000;

# i)	Obtener los nombres, salarios y comisiones de los empleados del departamento 2000, ordenado por comisión.
select nombre, salario, comision from empleado where departamento = 2000 order by comision;

# j)	Obtener los diferentes salarios de los empleados (sin repetir). Ordenarlos (por salario).
select distinct salario from empleado order by salario;

# k)	Obtener datos de los empleados que tienen una comisión mayor a su sueldo.
select * from empleado where comision > salario;

# l)	Obtener los datos de los empleados cuya comisión es menor o igual que el 30% de su sueldo.
select *from empleado where comision <= (salario * 30 / 100);

# m)	Obtener los datos de los empleados cuyo salario es menor o igual que el 40% de su comisión.
select * from empleado where salario <= (comision * 40 / 100);

# n)	Obtener nombre, salario, comision, salario total, de aquellos empleados que tienen comisión superior a $1.000.000
select nombre, salario, comision, (salario + comision) from empleado where comision > 1000000;
