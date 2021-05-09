use perrinchis;
/*
En las basesde datos hay 4 operaciones:
C = Create  = Insertar      = insert,create,replace
R = Read    = Seleccionar   = select
U = Update  = Actualizar    = update
D = Delate  = Borrar        = delate

crear datos para las tablas principales:
-TipoDocus, TipoUsua,Usuarios,Empresa
*/
select * from tipodocus;
/*
insert into TipoDocus values
(0,'Registro civil'),
(0,'Tarjeta de identidad'),
(0,'Cédula de ciudadania'),
(0,'Cédula de Extranjeria'),
(0,'pasaporte'),
(0,'No identificado');

insert into generos values
(0,'Femenino'),
(0, 'Masculino'),
(0, 'No registra');
*/
/*
insert into tipousuario values 
(0,'Administrador'),(0, 'Empleado'),(0,'Cliente'),(0,'Proveedor');
*/

# La función sha() se usa para encriptar contraseñas
# Ejemplo: sha('12345') = '8cb2237d0679ca88db6464eac60da96345513964'
/*
insert into usuarios values
(0,'gaby@mail.com',sha('12345'),''),
(0,'johan@mail.com',sha('67890'),'');
*/
select * from empresa;
/*
INSERT INTO `perrinchis`.`empresa` (`Nit`, `Nombre`, `Direccion`, `Telefono`, `Email`, `Logo`, `EstaEmpresa`) 
VALUES ('800900501', 'Tienda Don Perrinchis', 'Calle 37 # 20a - 50', '5550099', 'info@perrinchis.com', 'LogoPerrinchis.png', 'Activo');
*/

select * from generos;
select * from tipousuario;
select * from usuarios;
select * from datospersonales;
select * from perfiles;

select curdate();
# la funcion curdate trae la fecha actual ejemplo:
# select curdate(); = '2021-03-17'
/*
insert into perfiles values 
(0,1,1,'2021-01-01','Activo'),(0,1,2,curdate(),'Activo'),(0,1,3,curdate(),'Activo'),(0,1,4,curdate(),'Activo'),
(0,2,2,curdate(),'Activo'),(0,2,3,curdate(),'Activo'),
(0,3,3,curdate(),'Activo'),
(0,4,3,curdate(),'Activo'),(0,4,4,curdate(),'Activo');
*/
# La funcion concat() me junta dos o más columnas
SELECT d.cedula as Identificación, concat(d.Nombre,' ',d.Apellidos) as 'Nombre Completo',
g.genero as genero,
u.NickName as 'Usuario de Ingreso', 
t.NombTipo as Perfil, p.FechaIng as 'Fecha de Ingreso'
FROM USUARIOS u
inner join datospersonales d
on d.idUsuarios = u.idUsuarios
inner join generos as g
on d.idGeneros = g.idGeneros 
inner join perfiles p
on p.idUsuarios = u.idUsuarios 
inner join tipousuario t
on p.idTipoUsuario = t.idTipoUsuario
order by u.idusuarios, t.nombtipo;


-- SET GLOBAL log_bin_trust_function_creators = 1;
SET FOREIGN_KEY_CHECKS = 1;