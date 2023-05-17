use jugos;

#insertar registros en tabla "tbproductos"
insert into tbproductos(producto, nombre, envase, volumen, sabor, precio) values ('773912', 'clean', 'botella pet', '1 litro', 'naranja', 8.01);
insert into tbproductos(producto, nombre, envase, volumen, sabor, precio) values ('838819', 'clean', 'botella pet', '1.5 litros', 'naranja', 12.01);
insert into tbproductos(producto, nombre, envase, volumen, sabor, precio) values ('1037797', 'clean', 'botella pet', '2 litro', 'naranja', 16.01);
insert into tbproductos(producto, nombre, envase, volumen, sabor, precio) values ('812829', 'clean', 'lata', '350 ml', 'naranja', 2.81);
insert into tbproductos(producto, nombre, envase, volumen, sabor, precio) values ('695594', 'festival de sabores', 'botella pet', '1.5 litros', 'asaí', 18.51);
insert into tbproductos(producto, nombre, envase, volumen, sabor, precio) values ('1041119', 'línea citrus', 'botella de vidrio', '700 ml', 'lima', 4.90);
select * from tbproductos;
#actualizar datos de un registro en la tabla "tbproductos"
update tbproductos set precio = 28.51 where producto = '695594';
update tbproductos set sabor = 'lima/limón', precio = '4.90' where producto = '1041119';
#eliminar un registro de la tabla "tbproductos"
delete from tbproductos where producto = '773912';
#seleccionar llave primaria de la tabla "tbproductos"
alter table tbproductos add primary key (producto);

####################################################################################################################
#insertar registros en tabla "tabla_de_vendedores"
insert into tabla_de_vendedores(matricula, nombre , porcentaje_comision) values ('00233', 'Joan Geraldo de la Fonseca', 0.10);
insert into tabla_de_vendedores(matricula, nombre , porcentaje_comision) values ('00235', 'Márcio Almeida Silva', 0.08);
insert into tabla_de_vendedores(matricula, nombre , porcentaje_comision) values ('00236', 'Cláudia Morais', 0.08);
select * from tabla_de_vendedores;
#actualizar datos de un registro en la tabla "tabla_de_vendedores"
update tabla_de_vendedores set porcentaje_comision = 0.11 where matricula = '00236';
update tabla_de_vendedores set nombre = 'Joan Geraldo de la Fonseca Junior' where matricula = '00233';

#eliminar un registro de la tabla "tabla_de_vendedores"
delete from tabla_de_vendedores where matricula = '00233';

#ACTIVIDAD
#eliminamos la tabla "TABLA_DE_VENDEDORES"
drop table TABLA_DE_VENDEDORES;

#creamos nuevamente la tabla "TABLA_DE_VENDEDORES" con las nuevas columnas
create table TABLA_DE_VENDEDORES(
	MATRICULA varchar(5),
    NOMBRE varchar(100),
    PORCENTAJE_COMISION float,
	FECHA_ADMISION date,
    DE_VACACIONES bit
);

alter table tabla_de_vendedores add primary key (matricula);

insert into tabla_de_vendedores(matricula, nombre , porcentaje_comision, fecha_admision, de_vacaciones) values ('00235', 'Márcio Almeida Silva', 0.08, '2014-08-15', 0);
insert into tabla_de_vendedores(matricula, nombre , porcentaje_comision, fecha_admision, de_vacaciones) values ('00236', 'Cláudia Morais', 0.08, '2013-09-17', 1);
insert into tabla_de_vendedores(matricula, nombre , porcentaje_comision, fecha_admision, de_vacaciones) values ('00237', 'Roberta Martins', 0.11, '2017-03-18', 1);
insert into tabla_de_vendedores(matricula, nombre , porcentaje_comision, fecha_admision, de_vacaciones) values ('00238', 'Péricles Alves', 0.11, '2016-08-21', 0);

####################################################################################################################
alter table tbclientes add primary key (DNI);
alter table tbclientes add column (fecha_nacimiento date);

insert into tbclientes(DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, EDAD, SEXO, LIMITE_CREDITO, VOLUMNE_COMPRA, PRIMERA_COMPRA, fecha_nacimiento)
values ('1234', 'Pedro', 'Calle del Sol, 25', '', 'Los laureles', 'CDMX', 'México', '65784', 55, 'M', 10000000, 2000, 0, '1971-05-25');

select * from tbclientes;