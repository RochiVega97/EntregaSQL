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
