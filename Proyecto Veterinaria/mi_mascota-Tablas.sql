drop database if exists mis_mascotas;

create database mi_mascota;

use mi_mascota;

create table Persona(
	nit int not null,
    nombre varchar(60) not null,
    direccion varchar(60) not null,
    telefono varchar(20) not null,
    primary key(nit)
);

create table Tratamiento(
	id_tratamiento int not null,
    descripcion varchar(250) not null,
    costo numeric not null,
    primary key(id_tratamiento)
);

create table Mascotas(
	id_mascota int not null,
    nombre varchar(45) not null,
    fecha_nac date not null,
    fecha_reg date not null,
    nit int not null,
    primary key(id_mascota),
    foreign key(nit) references Persona(nit)
);

create table Citas(
	id_cita int not null,
    fecha_cita datetime not null,
    descripcion varchar(250) not null,
    estado boolean not null,
    id_mascota int not null,
    id_tratamiento int not null,
    primary key(id_cita),
    foreign key(id_mascota) references Mascotas(id_mascota),
    foreign key(id_tratamiento)references Tratamiento(id_tratamiento)
);