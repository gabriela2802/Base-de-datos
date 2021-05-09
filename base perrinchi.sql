use perrinchis;
insert into TipoDocus values
(0,'Registro Civil'),
(0,'Tarjeta de Identidad'),
(0,'Cédula de Ciudadanía'),
(0,'Cédula de Extrangería'),
(0,'Pasaporte'),
(0,'No Identificado');
select * from tipodocus;
/*
En las bases de datos hay 4 operaciones:
C = Create 	   = Insertar      insert, create, replace
R = Read       = Seleccionar   select
U = Update     = Actualizar    update
D = Delete     = Borrar        delete

Crear datos para la tablas principales:
- TipoDocus, TipoUsua, Usuarios, Empresa
*/
insert into tipousuario values 
(0,'Administrador'),
(0, 'Empleado'),
(0,'Cliente'),
(0,'Proveedor');

select * from tipousuario;

select * from usuarios;
/*insert into usuarios values
(0,'gabrielacardona43@gmail.com',sha('2898'),'Activo'),
(0,'eder@mail.com',sha('12345'),'Activo'),
(0,'luisa@mail.com',sha('678'),'Activo'),
(0,'jhoan@gmail.com',sha('3456'),'Activo');*/
# SET FOREIGN_KEY_CHECKS = 1;

select * from tipodocus;
select * from generos;
select * from perfiles;

select curdate();
/*
insert into perfiles values 
(0,1,1,'2021-01-01','Activo'),(0,1,2,curdate(),'Activo'),(0,1,3,curdate(),'Activo'),(0,1,4,curdate(),'Activo'),
(0,2,2,curdate(),'Activo'),(0,2,3,curdate(),'Activo'),
(0,3,3,curdate(),'Activo'),
(0,4,3,curdate(),'Activo'),(0,4,4,curdate(),'Activo');
*/

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

SELECT u.idusuarios as identificador, u.NickName as Usuario, t.NombTipo as Perfil, p.FechaIng as 'Fecha de Ingreso'
FROM USUARIOS u
inner join perfiles p
on p.idUsuarios = u.idUsuarios 
inner join tipousuario t
on p.idTipoUsuario = t.idTipoUsuario
order by u.idusuarios, t.nombtipo;

# Llenamos la tabla de los datos de usuario:
select * from usuarios;
select * from tipodocus;
select * from generos;
select * from datospersonales;
