select * from Clientes
select * from Pagos
select * from Ajuste


---tego que obtener el total de los montos
--que son monto pagado + monto solicitado
select *from Clientes
select * from pagos 
select * from Ajuste

select (cl.MontoSolicitud + pa.MontoPagado) as total from Clientes cl
join pagos pa
on cl.ClienteId = pa.ClienteId

update Ajuste set Adeudo =(cl.MontoSolicitud + pa.MontoPagado) from Clientes cl
join pagos pa
on cl.ClienteId = pa.ClienteId
select * from Ajuste


--mostrando la tabla
select * from Clientes
select * from pagos
select * from Ajuste

select 
 cl.ClienteId
 ,cl.Nombre
 ,cl.MontoSolicitud
 ,pa.MontoPagado
 ,aj.MontoTotal
 ,aj.Adeudo
from Clientes cl
join Pagos pa
on cl.ClienteId = pa.ClienteId 
right join Ajuste aj 
on cl.ClienteId = aj.ClienteId 









