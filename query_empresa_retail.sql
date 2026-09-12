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

/*Tabla Clientes*/

/*INSERTAR 5 REGISTROS (C)*/
insert into cliente(cli_nombre, cli_apellido, cli_correo, cli_telefono, cli_ciudad, cli_fecha_registro)
values 
('Juan', 'Perez', 'juan.perez@email.com', '555-0101', 'Madrid', '2023-01-15'),
('Maria', 'Gomez', 'maria.gomez@email.com', '555-0102', 'Barcelona', '2023-02-20'),
('Carlos', 'Lopez', 'carlos.lopez@email.com', '555-0103', 'Valencia', '2023-03-10'),
('Ana', 'Martinez', 'ana.martinez@email.com', '555-0104', 'Sevilla', '2023-04-05'),
('Luis', 'Rodriguez', 'luis.rodriguez@email.com', '555-0105', 'Bilbao', '2023-05-12');

/*LEER (R)*/
select cli_id_cliente, cli_nombre, cli_apellido, cli_correo, cli_ciudad 
from cliente;

/*ACTUALIZAR (U)*/
/* Actualizamos el cliente ID 1 */
update cliente
set cli_ciudad = 'Barcelona', cli_telefono = '555-9999'
where cli_id_cliente = 1;

/* --- BORRAR (D) --- */
/* Borramos el cliente ID 5 */
delete from cliente where cli_id_cliente = 5;

/*TABLA CAMPANIA*/

/*INSERTAR 5 REGISTROS (C)*/
/*can_id_canal = 1 no existe*/
insert into campania(cam_nombre, cam_presupuesto, cam_fecha_inicio, cam_fecha_final, canal_can_id_canal)
values 
('Verano 2024', 5000.00, '2024-06-01', '2024-08-31', 2),
('Ofertas Black Friday', 12000.00, '2024-11-20', '2024-11-30', 2),
('Lanzamiento Producto X', 8000.00, '2024-09-15', '2024-10-15', 2),
('Navidad 2024', 15000.00, '2024-12-01', '2024-12-25', 2),
('Rebajas Enero', 4000.00, '2025-01-01', '2025-01-31', 2);

/*LEER (R)*/
select cam_id_campania, cam_nombre, cam_presupuesto, cam_fecha_inicio, cam_fecha_final 
from campania;

/* --- ACTUALIZAR (U) --- */
/* Actualizamos la campaña con ID 1 */
update campania
set cam_presupuesto = 6500.00, cam_nombre = 'Verano 2024 Extendido'
where cam_id_campania = 1;

/* --- BORRAR (D) --- */
/* Borramos la campaña con ID 5 */
delete from campania where cam_id_campania = 5;

/*TABLA CONVERSION*/

/*INSERTAR 5 REGISTROS (C)*/
insert into conversion(con_tipo, con_valor, con_fecha, cliente_cli_id_cliente)
values 
('Compra', 150.50, '2024-05-20', 1),
('Suscripcion', 29.99, '2024-05-21', 2),
('Descarga', 0.00, '2024-05-22', 3),con_tipo
('Compra', 89.99, '2024-05-23', 4),
('Registro', 0.00, '2024-05-24', 2);

/*LEER (R)*/
select con_id_conversion, con_tipo, con_valor, con_fecha 
from conversion;

/*ACTUALIZAR (U)*/
/* Actualizamos la conversión con ID 1 */
update conversion
set con_valor = 200.00, con_tipo = 'Compra Premium'
where con_id_conversion = 1;

/*BORRAR (D)*/
/* Borramos la conversión con ID 5 */
delete from conversion where con_id_conversion = 5;
