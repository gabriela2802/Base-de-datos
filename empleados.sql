select idUsuarios,concat(Nombre,Apellidos)from datospersonales;
select * perfiles from usuarios;
select FechaIng from  perfiles;
select genero from generos;
select * from tipousuario;


select 
datospersonales.idUsuarios,concat(Nombre,Apellidos)from datospersonales;

join perfiles
on datospersonales.idUsuarios = perfiles.idUsuarios
join generos
on  datospersonales.idGeneros = generos.idGeneros
where generos.Genero = 'femenino'
group by datospersonales.Cedula;


    
    
    
   