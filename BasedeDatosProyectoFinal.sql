create database BaseDeDatosProyectoFinal;
use BaseDeDatosProyectoFinal;
drop table socios;
create table socios
(
id_socio int not null auto_increment,
nombre varchar(30),
apellido varchar(30),
dni int not null unique,
mail varchar(40) not null unique,
estado boolean,
fecha_alta date,
primary key(id_socio)
);


insert into socios values (1,'Juan','Rey',40317534,'juanrey@gmail.com',true,now());
insert into socios values (null,'Tomás','Oroz',17036784,'tomasoroz@gmail.com',true,now());
insert into socios values (null,'Enzo','Pérez',20030034,'enzo@gmail.com',true,now());
insert into socios values (null,'Camila','Gutierrez',10089034,'camilagutierrez@gmail.com',true,now());


select * from socios;