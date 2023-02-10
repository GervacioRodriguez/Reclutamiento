--update con dos tablas para la actualizacion de la tabla ajustes


--update con inner join
update Ajuste set MontoTotal = pagos.MontoPagado 
from pagos join Ajuste
on Pagos.ClienteId = Ajuste.ClienteId






