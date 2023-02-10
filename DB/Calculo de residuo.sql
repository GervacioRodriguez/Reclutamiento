----calculo de residuo con sql
--Realizamos un inner join con las tre stablas

use HIRCASA

select * from Clientes 
select  * from pagos
select * from Ajuste 


select * from Clientes cl
inner join Pagos pg 
on cl.ClienteId = pg.ClienteId


--hacemos el cruce de informacion 

select cl.clienteid
	  ,cl.nombre 
	  ,cl.telefono
	  ,cl.correo
	  ,cl.edad
	  ,cl.montosolicitud
	  ,cl.estatus
	  ,cl.aprobacion
	  ,cl.fechaalta
	  from Clientes cl
inner join Pagos pg 
on cl.ClienteId = pg.ClienteId
















