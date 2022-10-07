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


