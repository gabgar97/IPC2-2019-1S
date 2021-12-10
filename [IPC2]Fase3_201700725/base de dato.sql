create database proyecto;
use proyecto;

create table administrador (
	codigo integer primary key not null,
	nombre varchar(45) not null,
	correo varchar(45) not null,
	telefono integer not null,
	usuario varchar(45) not null,
	contra varchar(45) not null
);
insert into administrador (codigo,nombre,correo,telefono,usuario,contra) values (1,'Gabriel Meza','g_abal97@hotmail.com',12345678,'admin','admin');
-------------------------------------------------------------------
create table tecnico (
	codigo integer primary key not null,
	nombre varchar(45) not null,
	correo varchar(45) not null,
	telefono integer not null,
	usuario varchar(45) not null,
	contra varchar(45) not null,
	inscribio integer not null
);
ALTER TABLE tecnico ADD FOREIGN KEY (inscribio) REFERENCES administrador(codigo);
---------------------------------------------------------------------
create table agente (
	codigo integer primary key not null,
	nombre varchar(45) not null,
	correo varchar(45) not null,
	telefono integer not null,
	usuario varchar(45) not null,
	contra varchar(45) not null,
	inscribio integer not null
);
ALTER TABLE agente ADD FOREIGN KEY (inscribio) REFERENCES administrador(codigo);
--------------------------------------------------------------------
create table ins_empresa (
	codigo integer primary key not null,
	ubicacion varchar(45) not null,
	nombre varchar(45) not null,
	descripcion varchar(45) not null,
	telefono integer not null,
	correo varchar(45) not null,
	foto varchar(45) not null,
	des_foto varchar(45) not null
);
----------------------------------------------------------------------
create table ins_hotel (
	codigo integer primary key not null,
	ins integer not null,
	habtacion integer not null,
	internet varchar(45) not null,
	cafeteria varchar(45) not null,
	parqueo varchar(45) not null,
	piscina varchar(45) not null,
	seguridad varchar(45) not null,
	gimnasio varchar(45) not null
);
ALTER TABLE ins_hotel ADD FOREIGN KEY (ins) REFERENCES ins_empresa(codigo);
----------------------------------------------------------------
create table ins_restaurante (
	codigo integer primary key not null,
	ins integer not null,
	especialidad varchar(45) not null,
	tipica varchar(45) not null,
	mariscos varchar(45) not null,
	postres varchar(45) not null
);
ALTER TABLE ins_restaurante ADD FOREIGN KEY (ins) REFERENCES ins_empresa(codigo);
-------------------------------------------------------------------
create table ins_museo (
	codigo integer primary key not null,
	ins integer not null,
	horario varchar(45) not null,
	tarifa float(4) not null
);
ALTER TABLE ins_museo ADD FOREIGN KEY (ins) REFERENCES ins_empresa(codigo);
----------------------------------------------------------------
create table visita_tecnica (
	v_codigo integer primary key not null,
	tecnico integer not null,
	inscripcion integer not null,
	hotel integer not null,
	restaurante integer not null,
	museo integer not null
);
ALTER TABLE visita_tecnica ADD FOREIGN KEY (tecnico) REFERENCES tecnico(codigo);
ALTER TABLE visita_tecnica ADD FOREIGN KEY (inscripcion) REFERENCES ins_empresa(codigo);
ALTER TABLE visita_tecnica ADD FOREIGN KEY (hotel) REFERENCES ins_hotel(codigo);
ALTER TABLE visita_tecnica ADD FOREIGN KEY (restaurante) REFERENCES ins_restaurante(codigo);
ALTER TABLE visita_tecnica ADD FOREIGN KEY (museo) REFERENCES ins_museo(codigo);
----------------------------------------------------------------------------------------
create table empresas (
	codigo integer primary key not null,
	ubicacion varchar(45) not null,
	nombre varchar(45) not null,
	direccion varchar(45) not null,
	telefono integer not null,
	correo varchar(45) not null,
	foto varchar(45) not null
);
----------------------------------------------------------------------
create table miembroho (
	codigo integer primary key not null,
	ins integer not null,
	habtacion integer not null,
	internet varchar(45) not null,
	cafeteria varchar(45) not null,
	parqueo varchar(45) not null,
	piscina varchar(45) not null,
	seguridad varchar(45) not null,
	gimnasio varchar(45) not null
);
ALTER TABLE miembroho ADD FOREIGN KEY (ins) REFERENCES empresas(codigo);
----------------------------------------------------------------
create table miembrore (
	codigo integer primary key not null,
	ins integer not null,
	especialidad varchar(45) not null,
	tipica varchar(45) not null,
	mariscos varchar(45) not null,
	postres varchar(45) not null
);
ALTER TABLE miembrore ADD FOREIGN KEY (ins) REFERENCES empresas(codigo);
-------------------------------------------------------------------
create table miembromu (
	codigo integer primary key not null,
	ins integer not null,
	horario varchar(45) not null,
	tarifa float(4) not null
);
ALTER TABLE miembromu ADD FOREIGN KEY (ins) REFERENCES empresas(codigo);
---------------------------------------------------------------------------
create table extra (
	id_extra integer primary key not null,
	extras varchar(45) not null
);
---------------------------------------------------------------------------
create table visita_anual (
	v_codigo integer primary key not null,
	tecnico integer not null,
	inscripcion integer not null,
	hotel integer not null,
	restaurante integer not null,
	museo integer not null
);
ALTER TABLE visita_tecnica ADD FOREIGN KEY (tecnico) REFERENCES tecnico(codigo);
ALTER TABLE visita_tecnica ADD FOREIGN KEY (inscripcion) REFERENCES ins_empresa(codigo);
ALTER TABLE visita_tecnica ADD FOREIGN KEY (hotel) REFERENCES ins_hotel(codigo);
ALTER TABLE visita_tecnica ADD FOREIGN KEY (restaurante) REFERENCES ins_restaurante(codigo);
ALTER TABLE visita_tecnica ADD FOREIGN KEY (museo) REFERENCES ins_museo(codigo);
----------------------------------------------------------------------------
create table inscripcion_sitio (
	codigo integer primary key not null,
	ubicacion varchar(45) not null,
	nombre varchar(45) not null,
	descripcion varchar(45) not null,
	foto varchar(45) not null,
	titulo_foto varchar(45) not null
);
--------------------------------------------------------------------------------
create table ins_sitio (
	i_codigo integer primary key not null,
	agente integer not null,
	i_sitio integer not null
);
ALTER TABLE ins_sitio ADD FOREIGN KEY (agente) REFERENCES agente(codigo);
ALTER TABLE ins_sitio ADD FOREIGN KEY (i_sitio) REFERENCES inscripcion_sitio(codigo);
------------------------------------------------------------------------------
create table cliente (
	id_cliente integer primary key not null,
	nombre varchar(100) not null,
	usuario varchar(45) not null,
	contra varchar(45) not null
);