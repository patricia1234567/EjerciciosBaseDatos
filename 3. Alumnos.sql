use estudiantes;

create table alumnos(
id int primary key auto_increment not null,
nombre varchar(20) not null,
edad int not null,
codigo_postal int not null,
curso varchar(10),
direccion varchar (30) not null
);

insert into alumnos(id, nombre, edad, codigo_postal, curso, direccion) values
(1, 'julia', 18, 2400, 'curso 1', 'caseros 111'),
(2, 'roman', 33, 2400, 'curso 2', 'belgrano 222'),
(3, 'florencia', 58, 2100, 'curso 1', 'saenz peña 333'),
(4, 'matias', 19, 2200, 'curso 1','salta 444'),
(5, 'leo', 20, 2500, 'curso 1', 'mariano moreno 555'),
(6, 'maxi', 35, 2400, 'curso 2', '9 de julio 666'),
(7, 'leo', 20, 2500, 'curso 2', '25 de mayo 777');

alter table alumnos add dni int;

insert into alumnos(id, nombre, edad, dni, codigo_postal, curso, direccion) values
(8, 'romina', 23, 358, 2300, 'curso 2', 'iturraspe 888');



#a. Todas las columnas de todos los estudiantes.
select * from alumnos;

#b. Obtener los nombres y la edad de los estudiantes que tengan código postal 2400.
select nombre, edad from alumnos where codigo_postal = 2400;

#c. Obtener la CANTIDAD de estudiantes que NO tengan el código postal 2400.	
select count(id) as 'cantidad' from alumnos where codigo_postal != 2400;

#d. Obtener la cantidad de localidades de donde provienen los alumnos.
select count(distinct codigo_postal) as 'cantidad' from alumnos;                                    

#e. Obtener la cantidad de alumnos que asisten al curso 1.
select count(nombre) as 'cantidad' from alumnos where curso = 'curso 1';

#f. Obtener la cantidad de alumnos que asisten al curso 2.
select count(nombre) as 'cantidad' from alumnos where curso = 'curso 2';

#g. Edad promedio de los alumnos que asisten al curso 1.
select avg(edad) as 'cantidad' from alumnos where curso = 'curso 1';

#h. Edad promedio de los alumnos que asisten al curso 2.
select avg (edad) as 'promedio' from alumnos where curso = 'curso 2';

#i. Romina vino a la oficina y nos informo que se mudo a la calle “general paz 879”. Actualizar la direccion de Romina.
update alumnos set direccion = 'general paz 879' where nombre = 'romina';

#j. Se inscribio un nuevo alumno al curso 1, con nombre = lucas, edad = 46, codigo postal = 2400 y dirección = catamarca 566. Agregarlo
insert into alumnos (curso, nombre, edad, codigo_postal, direccion) values 
('curso 1', 'lucas', 46, 2400, 'catamarca 566');
