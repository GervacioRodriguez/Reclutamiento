---Quitar espacios

select * from Clientes

--limpieza de espacios a la izquierda y derecha 
---ahora se limpiara el caracter dehjando un espacio

update Clientes set Nombre =REPLACE(RTRIM(LTRIM(Nombre)),'  ',' ');
select * from Clientes

select Nombre from Clientes 
