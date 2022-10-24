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

