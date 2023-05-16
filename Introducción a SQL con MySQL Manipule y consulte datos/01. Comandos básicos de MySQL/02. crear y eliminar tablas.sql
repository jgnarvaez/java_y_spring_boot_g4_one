#creamos nuestra base de datos
create database jugos;

#comando para seleccionar la base de datos creada
use jugos;

#creamos la tabla "TBCLIENTES"
create table tbclientes(
	dni varchar(20),
	nombre varchar(150),
    direccion1 varchar(150),
    direccion2 varchar(150),
    barrio varchar(50),
    ciudad varchar(50),
    estado varchar(50),
    cp varchar(10),
    edad smallint,
    sexo varchar(1),
    limite_credito float,
    volumne_compra float,
    primera_compra bit(1));

#creamos la tabla "TABLA_DE_VENDEDORES"
create table TABLA_DE_VENDEDORES(
	MATRICULA varchar(5),
    NOMBRE varchar(100),
    PORCENTAJE_COMISION float
);

#creamos la tabla "tbclientes2" y "tbclientes3" que vamos a usar como ejemplo para eliminar una tabla
create table tbclientes2(
	dni varchar(20),
	nombre varchar(150),
    direccion1 varchar(150),
    direccion2 varchar(150),
    barrio varchar(50),
    ciudad varchar(50),
    estado varchar(50),
    cp varchar(10),
    edad smallint,
    sexo varchar(1),
    limite_credito float,
    volumne_compra float,
    primera_compra bit(1));
    
create table tbclientes3(
	dni varchar(20),
	nombre varchar(150),
    direccion1 varchar(150),
    direccion2 varchar(150),
    barrio varchar(50),
    ciudad varchar(50),
    estado varchar(50),
    cp varchar(10),
    edad smallint,
    sexo varchar(1),
    limite_credito float,
    volumne_compra float,
    primera_compra bit(1));

CREATE TABLE TABLA_DE_VENDEDORES2 (
    MATRICULA varchar(5), 
    NOMBRE varchar(100), 
    PORCENTAJE_COMISION float);

#comando para eliminar una tabla, hay que ser muy cuidadosos para evitar eliminar información importante
drop table tbclientes2;

DROP TABLE TABLA_DE_VENDEDORES2;