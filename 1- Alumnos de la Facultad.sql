use alumnosfacultad;

create table alumnos
(
legajo int primary key auto_increment not null,
nombre varchar(20) not null,
apellido varchar(20) not null,
dni int not null,
telefono varchar(20) not null,
domicilio varchar(30) not null,
edad int not null
);

insert into alumnos (legajo, nombre, apellido, dni, telefono, domicilio, edad) values
(01, 'Patricia', 'Ravera', 24590413, '0351-7894588', '25 de Mayo 2202', 43),
(02, 'Naiara', 'Albano', 305685224, '03564-637889', 'Liniers 265', 18),
(03, 'Trinidad', 'Tessio', 35669845, '03564-689954', 'Urquiza 235', 19),
(04, 'Florencia', 'Basualdo', 34699852, '03564-689952', 'Suipacha 354', 19),
(05, 'Eduardo', 'Culasso', 35668974, '03564-1265596', 'Roca 325', 19),
(06, 'Eli', 'Zhao', 35622897, '03564-1254895', 'Caseros 3659', 20),
(07, 'Leonardo', 'Calero', 28659324, '03564-659855', 'Buenos Aires 3566', 25),
(08, 'Agustin', 'Bossana', 36897523, '03564-665324', 'Italia 758', 20),
(09, 'Federico', 'Curto', 38665235, '03564-687965', 'Saenz Peña 1512', 19),
(10, 'Nicolas', 'Mainardi', 37652334, '03564-689652', 'España 652', 18),
(11, 'Pedro', 'Lopez', 34633896, '03564-566896', 'Garibaldi 6889', 19),
(12, 'Patricia', 'Pinto', 35622892,'03564-68222', 'Colón 144', 23);


#A- Obtener todos los alumnos registrados, con sus respectivos datos.
select * from alumnos;

#B- Obtener el nombre de todos los alumnos.
select nombre from alumnos;

#C- Obtener el domicilio de todos los alumnos.
select domicilio from alumnos;

#D- Obtener el nombre y apellido de todos los alumnos.
select nombre, apellido from alumnos;

#E- Obtener los alumnos cuyo nombre sea Pedro.
select * from alumnos where nombre='Pedro';

#F- Obtener los alumnos cuya edad sea 19.
select * from alumnos where edad=19;

#G- Obtener el nombre de los alumnos cuya edad sea 43.
select nombre from alumnos where edad=43;

#H- Obtener el apellido de los alumnos cuya edad sea mayor a 15.
select apellido from alumnos where edad>15;

#I- Obtener los nombres (sin repeticiones) de todos los alumnos.
select distinct nombre from alumnos;

#Tener en cuenta: A la hora de cargar los datos de los alumnos, colocar al menos dos alumnos con el mismo nombre, al menos un alumno 
#cuyo nombre sea Pedro, un alumno cuya edad sea 25 y otro con edad igual a 31.



