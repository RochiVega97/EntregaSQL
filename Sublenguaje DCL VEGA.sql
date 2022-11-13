use Mysql;
show tables;
select * from user ;
-- Creacion
CREATE USER 'rocio'@'localhost' IDENTIFIED BY 'miPassword';
CREATE USER 'belen'@'localhost' IDENTIFIED BY 'miPassword';

-- Permisos
SHOW GRANTS FOR 'rocio'@'localhost' ;
SHOW GRANTS FOR 'belen'@'localhost' ;

GRANT select ON *.* TO 'belen'@'localhost';
GRANT select,insert,update ON *.* TO 'rocio'@'localhost';
