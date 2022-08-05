create table CINE (
NOMBRE_CINE VARCHAR(60) primary key not null,
ID_TARIFA int not null,
CALLE_CINE VARCHAR (100) not null,
NUMERO_CINE INT not null,
TELEFONO_CINE int null
)

create table PAPEL (
ID_PAPEL int primary key not null,
NOMBRE_PAPEL VARCHAR (50) not null
)

create table TRANSMITE_PELICULA (
TITULO_PELICULA VARCHAR (50) primary key not null,
NOMBRE_CINE VARCHAR (50) primary key not null, 
HORA time null,
NOVEDADES VARCHAR (20) null
)

create table PERSONAJE (
ID_PERSONAJE int primary key not null,
ID_PAPEL int null,
NOMBRE_PERSONAJE VARCHAR (50) not null,
APELLIDO_PERSONAJE VARCHAR (50) not null 
)

create table PELICULA(
TITULO_PELICULA int primary key not null, 
ID_GENERO int null,
ID_DIRECTOR int null,
ID_CLASIFICACION null,
ID_PERSONAJE int null
)

create table TARIFA(
ID_TARIFA int primary key not null,
DIA_TARIFA VARCHAR(15) not null,
PRECIO_TARIFA DECIMAL (2,2) not null 
)

create table GENERO(
ID_GENERO int primary key not null,
NOMBRE_GENERO VARCHAR(50) null, 
DETALLE_GENERO VARCHAR (100) null 
)

create table DIRECTOR(
ID_DIRECTOR int primary key not null,
NOMBRE_DIRECTOR VARCHAR (100) not null
)

create table CLASIFICACION(
ID_CLASIFICACION int primary key not null,
NOMBRE_CLASIFICACION VARCHAR(100) not null 
)

/* AÑADIR COLUMNA*/

alter table DIRECTOR add TIPO_DIRECTOR VARCHAR(100) null;
alter table PELICULA add TRAILER_PELICULA VARCHAR(200) null;

/* MODIFICAR COLUMNA*/

alter table tarifa alter column PRECIO_TARIFA type int;
alter table pelicula alter column ID_PERSONAJE type decimal(2,2);

/* ELIMINAR TABLA */

drop table PERSONAJE

/* INSERTAR , MAXIMO Y MINIMO  5 DATOS A LA COLUMNA*/

insert into cine (NOMBRE_CINE,ID_TARIFA,CALLE_CINE,NUMERO_CINE,TELEFONO_CINE) values ('PORTAL',12345,'SIMON_BOLIVAR',2,'94855834')
insert into cine (NOMBRE_CINE,ID_TARIFA,CALLE_CINE,NUMERO_CINE,TELEFONO_CINE) values ('RECREO',32478,'RECREO',7,'9384')
insert into cine (NOMBRE_CINE,ID_TARIFA,CALLE_CINE,NUMERO_CINE,TELEFONO_CINE) values ('QUICENTRO_SUR',32949,'REDONDEL',9,'354645')
insert into cine (NOMBRE_CINE,ID_TARIFA,CALLE_CINE,NUMERO_CINE,TELEFONO_CINE) values ('QUICENTRO_NORTE',09560478,'SHIRYS',4,'059004038')
insert into cine (NOMBRE_CINE,ID_TARIFA,CALLE_CINE,NUMERO_CINE,TELEFONO_CINE) values ('BOSQUE',95329,'PORTUGAL',1,'52555')

/* ACTUALIZAR DATOS DE UNA COLUMNA */

update cine set NOMBRE_CINE='SAN JUAN' where ID_TARIFA =2
update cine set NOMBRE_CINE='CHILLOGALLO' where ID_TARIFA =4
update cine set NOMBRE_CINE='LA MARIN' where ID_TARIFA =1

/* DELETE 3 EJEMPLOS */

delete from tarifa  where id_tarifa=1
delete from cine  where id_tarifa= 2
delete from papel  where id_papel=4








































