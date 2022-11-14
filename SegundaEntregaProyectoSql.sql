CREATE schema PROYECTO;
use PROYECTO;
CREATE TABLE cuenta (
id_cuenta int not null,
tipo_cuenta varchar(500) not null,
limite_cuenta float,
cant_tarjetas int,
PRIMARY KEY (id_cuenta)
);
CREATE TABLE tarjetas (
id_tarjeta int not null,
tipo_tarjeta varchar(500) not null,
marca_tarjeta varchar(500) not null,
id_cuenta int not null,
limite_max float,
limite_disponible float,
fecha_venc DATE,
PRIMARY KEY (id_tarjeta),
foreign key (id_cuenta) references cuenta (id_cuenta)
);
CREATE TABLE transacciones (
id_transaccion int not null,
descripcion varchar(500) not null,
id_cuenta int not null,
fecha DATE,
estado bool,
PRIMARY KEY (id_transaccion),
foreign key (id_cuenta) references cuenta (id_cuenta)
);
CREATE TABLE sucursal (
id_sucursal int not null,
nombre varchar(500) not null,
direccion varchar(500) not null,
PRIMARY KEY (id_sucursal)
);
CREATE TABLE empleados (
id_empleado int not null,
id_sucursal int not null,
nombre varchar(500) not null,
apellido varchar(500) not null,
sueldo float not null,
antiguedad int,
PRIMARY KEY (id_empleado),
foreign key (id_sucursal) references sucursal (id_sucursal)
);
CREATE TABLE cajeros (
id_cajero int not null,
id_sucursal int not null,
direccion varchar(500) not null,
saldo_actual float,
PRIMARY KEY (id_cajero),
foreign key (id_sucursal) references sucursal (id_sucursal)
);
CREATE TABLE clientes (
id_cliente int not null,
id_cuenta int not null,
id_sucursal int not null,
nombre varchar(500) not null,
apellido varchar(500) not null,
PRIMARY KEY (id_cliente),
foreign key (id_sucursal) references sucursal (id_sucursal),
foreign key (id_cuenta) references cuenta (id_cuenta)
);
insert into cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas) values (1, 'gold',20000,3);
insert into cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas) values (2, 'clasic',10000,1);
insert into tarjetas (id_tarjeta,tipo_tarjeta,marca_tarjeta,id_cuenta,limite_max,limite_disponible) values (1,'credito','visa',1, 15000,10000);
insert into transacciones (id_transaccion,descripcion,id_cuenta,fecha,estado) values (1,'retiro efectivo cajero',1,01/01/2022,1);
insert into sucursal (id_sucursal,nombre,direccion) values (1,'casa central','paraguay 777');
insert into empleados (id_empleado,id_sucursal,nombre,apellido,sueldo,antiguedad) values(1,1,'Rocio','Vega',1000,2);
insert into cajeros (id_cajero,id_sucursal,direccion,saldo_actual) values(1,1,'paraguay 777',3000000);
insert into clientes (id_cliente,id_cuenta,id_sucursal,nombre,apellido) values(1,1,1,'Belen','Vega');
INSERT INTO cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas)
VALUES
  (3,"clasic",53,2),
  (4,"black",465,1),
  (5,"black",428,3),
  (6,"clasic",18,0),
  (7,"clasic",839,3),
  (8,"black",493,4),
  (9,"clasic",996,4),
  (10,"clasic",922,1),
  (12,"clasic",77,1),
  (11,"gold",412,1);
INSERT INTO cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas)
VALUES
  (13,"gold",734,1),
  (14,"clasic",418,2),
  (15,"gold",114,4),
  (16,"clasic",956,5),
  (17,"clasic",954,2),
  (18,"gold",764,3),
  (19,"clasic",161,3),
  (20,"gold",801,2),
  (21,"clasic",459,2),
  (22,"black",745,3);
INSERT INTO cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas)
VALUES
  (23,"clasic",5,3),
  (24,"clasic",126,5),
  (25,"gold",218,1),
  (26,"clasic",461,4),
  (27,"black",496,4),
  (28,"black",278,4),
  (29,"black",274,1),
  (30,"black",735,1),
  (31,"clasic",269,5),
  (32,"black",234,4);
INSERT INTO  tarjetas (id_tarjeta,tipo_tarjeta,marca_tarjeta,id_cuenta,limite_max,limite_disponible)
VALUES
  (2,"credito","visa",1,6059,4410),
  (3,"credito","mastercard",2,9200,2485),
  (4,"credito","visa",3,5034,103),
  (5,"credito","mastercard",4,9939,2071),
  (6,"credito","mastercard",5,42090,7754),
  (7,"credito","visa",6,9957,1586),
  (8,"credito","mastercard",7,60500,9559),
  (9,"credito","mastercard",8,40200,6789),
  (10,"credito","visa",9,9969,4101),
  (11,"credito","mastercard",10,55190,9430);
INSERT INTO tarjetas (id_tarjeta,tipo_tarjeta,marca_tarjeta,id_cuenta,limite_max,limite_disponible)
VALUES
  (12,"credito","mastercard",11,10570,3001),
  (13,"credito","visa",12,25609,8124),
  (14,"credito","mastercard",13,9227,2758),
  (15,"credito","visa",14,9819,1301),
  (16,"credito","visa",15,2780,465),
  (17,"credito","mastercard",16,6619,694),
  (18,"credito","mastercard",17,6463,602),
  (19,"credito","visa",18,1725,947),
  (20,"credito","mastercard",19,4815,521),
  (21,"credito","visa",20,8753,6023);
INSERT INTO transacciones (id_transaccion,descripcion,id_cuenta,fecha,estado)
VALUES
  (2,"solicitud de prestado",1,01/07/2021,"1"),
  (3,"solicitud de prestado",2,11/08/2021,"1"),
  (4,"solicitud de prestado",3,10/08/2021,"1");
insert into sucursal (id_sucursal,nombre,direccion) 
values 
  (2,'centro','entre rios 1200'),
  (3,'Fisherton','eva peron 600');
INSERT INTO empleados (id_empleado,id_sucursal,nombre,apellido,sueldo,antiguedad)
VALUES
  (2,2,"Rowan","Lacy",9459,1),
  (3,2,"Akeem","Jenna",8240,7),
  (4,3,"Hashim","Serina",6304,10),
  (5,2,"Yen","Macaulay",9251,23),
  (6,1,"Rashad","Herman",5508,0);
INSERT INTO clientes (id_cliente,id_cuenta,id_sucursal,nombre,apellido)
VALUES
  (2,1,1,"Quinlan","Isaac"),
  (3,2,3,"Karen","Yuli"),
  (4,3,3,"Lillith","Tarik"),
  (5,4,2,"Acton","Kyla"),
  (6,5,2,"Lyle","Walker");
create view clientes_cuenta as
	(select cl.nombre, cl.apellido, cl.id_cuenta, c.cant_tarjetas, c.limite_cuenta, c.tipo_cuenta
	from clientes as cl
	inner join cuenta as c 
  on cl.id_cuenta=c.id_cuenta);
create view transacciones_aprobadas as
	(select *
	from transacciones
	where estado=1);
create view clientes_tarjetas as
	(select c.nombre, c.apellido, c.id_cuenta, t.marca_tarjeta, t.tipo_tarjeta, t.limite_disponible, t.limite_max
	from clientes as c
	inner join tarjetas as t
  on c.id_cuenta=t.id_cuenta);
create view empleados_sucursal as
	(select e.nombre, e.apellido, e.antiguedad, s.direccion
	from empleados as e
	inner join sucursal as s
  on e.id_sucursal=s.id_sucursal);
create view empleados_con_antiguedad as
	(select *
	from empleados as e
	where e.antiguedad>0);
CREATE FUNCTION `calculateSalararioConAntiguedad`(antiguedad INT, salario DECIMAL) RETURNS DECIMAL DETERMINISTIC
BEGIN
	DECLARE fullSalary float;
	SET fullSalary = salario+salario*antiguedad*0.1;
RETURN fullsalary;
END;
CREATE FUNCTION `nuevo_limite_max`(limite_max float) RETURNS float DETERMINISTIC
BEGIN
	DECLARE nuevo_limite_max float;
	SET nuevo_limite_max = limite_max*1.5;
RETURN nuevo_limite_max;
END;
-- PROCEDIMIENTO QUE ORDENA TABLA CUENTA EN FUNCION DEL CAMPO PASADO COMO PARAMETRO Y EL TIPO DE ORDENAMIENTO PASADO COMO PARAMETRO
DELIMITER &&  
CREATE PROCEDURE sort_tabla_cuenta (IN campo_order varchar (255), IN tipo_orden varchar(255) )  
BEGIN  
	SET @query = CONCAT ('SELECT *
FROM cuenta ORDER BY (',campo_order,')',tipo_orden);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;  
END &&  
DELIMITER ;  
-- PROCEDIMIENTO QUE INSERTA DATA EN SUCURSAL
DELIMITER &&  
CREATE PROCEDURE insert_data_sucursal (IN id_sucursal_new int, IN nombre_new varchar(255), in direccion_new varchar(255) )  
BEGIN  
	insert into sucursal(id_sucursal, nombre, direccion) values (id_sucursal_new, nombre_new,direccion_new);
END &&  
DELIMITER ;  

drop table if exists Log_auditoria;
Create table if not exists Log_auditoria 
(id_log int auto_increment, 
nombre_accion varchar (20), 
nombre_tabla varchar (20), 
usuario varchar (20), 
fecha date, 
primary key (id_log));

DELIMITER &&  
Create trigger TRG_LOG_EMPLEADOS after insert on empleados
for each row
begin

insert into Log_auditoria (nombre_accion, nombre_tabla, usuario, fecha)
values ('INSERT','empleados',current_user(),now());
end && 
DELIMITER ;

DELIMITER &&  
Create trigger TRG_LOG_EMPLEADOS_update after update on empleados
for each row
begin

insert into Log_auditoria (nombre_accion, nombre_tabla, usuario, fecha)
values ('UPDATE','empleados',current_user(),now());
end && 
DELIMITER ;


drop table if exists Movimientos_auditoria;
Create table if not exists Movimientos_auditoria 
(id_log int auto_increment, 
nombre_accion varchar (20), 
nombre_tabla varchar (20), 
usuario varchar (20), 
fecha date, 
campo_modificado varchar (20),
primary key (id_log));

DELIMITER &&  
Create trigger TRG_LOG_clientes_update after update on clientes
for each row
begin

insert into Movimientos_auditoria (nombre_accion, nombre_tabla, usuario, fecha, hora, campo_modificado)
values ('UPDATE','clientes',current_user(),now(),current_time(),old.nombre);
end && 
DELIMITER ;

DROP TABLE IF EXISTS cuentaArchivos;    

CREATE TABLE cuentaArchivos (
    id_cuenta INT PRIMARY KEY AUTO_INCREMENT,
    numero_cuenta INT,
    deletedAt TIMESTAMP DEFAULT NOW()
);
DELIMITER $$

CREATE TRIGGER before_cuenta_delete
BEFORE DELETE
ON cuenta FOR EACH ROW
BEGIN
    INSERT INTO cuentaArchivos(numero_cuenta)
    VALUES(OLD.id_cuenta);
END$$    

DELIMITER ;

START TRANSACTION;
use PROYECTO;

SELECT @@autocommit;
SET @@autocommit=0;
SET SQL_SAFE_UPDATES=0;

DELETE FROM clientes where id_cliente = 1;
DELETE FROM clientes where id_cliente = 2;
DELETE FROM clientes where id_cliente = 3;
DELETE FROM clientes where id_cliente = 4;
DELETE FROM clientes where id_cliente = 5;
-- rollback;
commit;

START TRANSACTION;
insert into cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas) values (60, 'gold',2000,2);
insert into cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas) values (61, 'black',20000,5);
insert into cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas) values (62, 'black',20000,3);
insert into cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas) values (63, 'gold',2000,3);
savepoint lote_1;
insert into cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas) values (64, 'clasic',20000,2);
insert into cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas) values (65, 'gold',18000,4);
insert into cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas) values (66, 'black',5000,1);
insert into cuenta (id_cuenta,tipo_cuenta,limite_cuenta,cant_tarjetas) values (67, 'clasic',1000,1);
savepoint lote_2;
-- rollback to lote_1;
