/*Tabla canal*/

/*insertar C*/
insert into canal(can_nombre,can_tipo)
values ('Facebook','Buscador');

/*leer R*/
select can_id_canal, can_nombre, can_tipo
from canal;

/*actualizar U*/
update canal
set can_nombre = 'Instagram', can_tipo = 'Red Social'
where can_id_canal = 1;

/*BORRAR*/
delete from canal where can_id_canal = 1;