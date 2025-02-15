create table contactos(
id serial,
	nombre varchar(100),
	apellido varchar(100),
	celular char(10),
	primary key(id)
);

insert into libros (nombre,apellido,celular)
  values('Jose Hernandez''Gonzalez Fierro','0974646212');
 insert into libros (nombre,apellido,celular)
  values('Mario Martin','Molina Intriago','0983727111');