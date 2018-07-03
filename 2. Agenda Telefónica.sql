use agenda;

create table contactos
(
id_contacto int primary key auto_increment not null,
nombre varchar (20) not null,
apellido varchar (20) not null,
telefono varchar (20) not null,
correo varchar (30),
direccion varchar (30)
);

insert into contactos (id_contacto, nombre, apellido, telefono, correo, direccion) values
(1, 'Maximiliano', 'Mainero', '3492-4548648', 'max@gmail.com', 'Dean Funes'),
(2, 'Juan', 'Suarez', '3492-587429', '', 'Saenz Peña'),
(3, 'Pablo', 'Rodriguez', '3492-586237', 'pablo@gmail.com', 'Alberdi'),
(5, 'Sofia', 'Colozo', '3492-475320', 'sofi@gmail.com', '');


#1- Todos los contactos con sus respectivos datos.
select * from contactos;

#2-El apellido de todos los contactos cuyo nombre sea Maximiliano.
select apellido from contactos where nombre = 'Maximiliano';

#3-El número de teléfono del contacto con nombre Juan y apellido Suarez.
select telefono from contactos where nombre = 'Juan' and apellido = 'Suarez';

#4-La cantidad de contactos con nombre Pablo.
select count(nombre) as 'cantidad' from contactos where nombre = 'Pablo';

#Ordenar alfabéticamente los contactos por nombre mostrando su nombre, apellido y teléfono.
select * from contactos order by (nombre);


