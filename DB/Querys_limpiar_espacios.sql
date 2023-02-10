/****** Script for SelectTopNRows command from SSMS  ******/
use HIRCASA

SELECT nombre FROM[Clientes]
--obtener numero de espacios

declare @nombre varchar(max),
@espacios varchar(max)

set @nombre = 'Hope    Best Charity'--'Hope          Best Charity'--'Alyssa   Macdonald  King'
set @espacios =REPLACE(@nombre,' ','')
declare @num_espacios int = LEN(@nombre)-len(@espacios)
set @num_espacios


--select REPLACE(LTRIM(RTRIM(nombre)),'  ',' ')from Clientes


----SELECT LTRIM(RTRIM(nombre))  From Clientes
