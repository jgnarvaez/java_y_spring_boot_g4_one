#mostrar toda la información de la tabla
select * from tbcliente;

#mostrar solo algunas columnas de la tabla
select DNI, NOMBRE from tbcliente;

select NOMBRE, SEXO, EDAD, DIRECCION1 from tbcliente;

#Asignar un alias a las columnas
select NOMBRE as Nombre_Completo, SEXO as Género, EDAD as Años, DIRECCION1 as Domicilio from tbcliente;

#Limitar número de registros a mostrar
select NOMBRE, SEXO, EDAD, DIRECCION1 from tbcliente limit 6;

select NOMBRE, MATRICULA from tabla_de_vendedores;

#################################################################################################################

select * from tbproducto;

select * from tbproducto where SABOR = 'Maracuyá';

select * from tbproducto where ENVASE = 'Botella de vidrio';

update tbproducto set SABOR = 'Cítrico' where SABOR = 'Limón';

select * from tbproducto where SABOR = 'Limón';

select * from tbproducto where SABOR = 'Cítrico';

select * from tabla_de_vendedores where NOMBRE = 'Claudia Morais';

#################################################################################################################

select * from tbcliente;

select * from tbcliente where EDAD > 27;

select * from tbcliente where EDAD <= 25;

select * from tbcliente where EDAD <> 25;

select * from tbcliente where NOMBRE > 'Erica Carvajo';

select * from tbcliente where NOMBRE < 'Erica Carvajo';

select * from tbcliente where NOMBRE <= 'Erica Carvajo';

select * from tbproducto;

select * from tbproducto where PRECIO_LISTA = 28.51;

select * from tbproducto where PRECIO_LISTA > 28.51;

select * from tbproducto where PRECIO_LISTA < 28.51;

select * from tbproducto where PRECIO_LISTA between 28.49 and 28.52;

select * from tabla_de_vendedores where PORCENTAJE_COMISION > 0.10;

#################################################################################################################

select * from tbcliente;

select * from tbcliente where FECHA_NACIMIENTO = '1995-01-13';

select * from tbcliente where FECHA_NACIMIENTO < '1995-01-13';

select * from tbcliente where FECHA_NACIMIENTO > '1995-01-13';

select * from tbcliente where year(FECHA_NACIMIENTO) = 1995;

select * from tbcliente where day(FECHA_NACIMIENTO) = 20;

select * from tabla_de_vendedores where year(FECHA_ADMISION) >= 2016;

#################################################################################################################

select * from tbproducto;

select * from tbproducto where PRECIO_LISTA between 28.49 and 28.52;

select * from tbproducto where PRECIO_LISTA >= 28.49 and PRECIO_LISTA <= 28.52;

select * from tbproducto where PRECIO_LISTA >= 28.49 and PRECIO_LISTA <= 28.52;

select * from tbproducto where ENVASE = 'Lata' or ENVASE = 'Botella PET';

select * from tbproducto where PRECIO_LISTA >= 15 and PRECIO_LISTA <= 25;

select * from tbproducto where (PRECIO_LISTA >= 15 and PRECIO_LISTA <= 25) or (ENVASE = 'Lata' or ENVASE = 'Botella PET');

select * from tbproducto where (PRECIO_LISTA >= 15 and TAMANO = '1 Litro') or (ENVASE = 'Lata' or ENVASE = 'Botella PET');

select * from tabla_de_vendedores;
select * from tabla_de_vendedores where DE_VACACIONES = 1 and year(FECHA_ADMISION) < 2016;
select NOMBRE, MATRICULA from tabla_de_vendedores; 