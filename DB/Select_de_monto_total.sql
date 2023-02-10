--ver resultado
select 
	Distinct
	   cl.ClienteId, cl.Nombre,
	   cl.Edad,cl.MontoSolicitud,
	   pa.MontoPagado,
	   aj.MontoTotal
	   from 
Clientes cl
join Ajuste aj
on cl.ClienteId = aj.ClienteId
join pagos pa
on cl.ClienteId = pa.ClienteId







