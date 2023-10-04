use mi_mascota;

-- Consulta 1;
--  Listado de personas de la clínica;
SELECT * FROM persona;

-- Consulta 2;
-- Listado de mascotas con el nombre de la persona ordenados por nombre de la mascota;
SELECT * FROM mascotas order by nombre ASC;

-- Consulta 3;
-- listado de mascotas con el nombre de la persona ordenados por fecha de registro;
Select mascotas.nombre, mascotas.fecha_reg, mascotas.nit, persona.nit, persona.nombre from mascotas
inner join persona on mascotas.nit = persona.nit
order by fecha_reg ASC;

-- Consulta 4;
-- Listado de citas de una mascota;
Select *from Citas
where id_mascota = 1;

-- Consulta 5;  
-- Listado de citas de las mascotas de una persona;
select citas.id_cita, citas.descripcion, citas.estado, citas.id_tratamiento, mascotas.nombre, persona.nombre from citas
inner join mascotas on mascotas.id_mascota = citas.id_mascota
inner join persona on persona.nit = mascotas.nit
where mascotas.nit = '487596';

-- Consulta 6;
-- Listado de citas en un mes especifico;
Select *from Citas
where month (fecha_cita) = 09;

-- Consulta 7;
-- Listado de citas en un dia especifico ordenados por fecha y hora;
Select *from Citas
where day(fecha_cita) = 20;

-- Consulta 8;
-- Mascota que mas citas ha tenido;
Select mascotas.nombre AS Mascota, count(citas.id_mascota) As TotalCitas from Citas
join Mascotas on citas.id_mascota = mascotas.id_mascota
group by mascotas.nombre
order by TotalCitas Desc
Limit 1;

-- Consulta 9;
-- Mascota que más ha faltado;
Select mascotas.nombre AS Mascota, count(citas.estado) As Faltas from Citas
join Mascotas on citas.id_mascota = mascotas.id_mascota
where citas.estado = 0
group by mascotas.nombre
order by Faltas Desc
Limit 1;

-- Consulta 10;
-- Listado de personas con la cantidad de mascotas que tiene registradas en la clinica.;
Select persona.nombre AS Dueño, count(mascotas.nit) As CantidadMascotas from Mascotas
join Persona on persona.nit = mascotas.nit
group by persona.nombre
order by CantidadMascotas Desc;

-- Consulta 11;
-- Tratamientos asociados a una mascota;
Select citas.fecha_Cita as FechaRealizada, tratamiento.descripcion as Tratamiento, mascotas.nombre As Mascota from Citas
join Mascotas on mascotas.id_mascota = citas.id_mascota join Tratamiento
on tratamiento.id_tratamiento = citas.id_tratamiento;

-- Consulta 12;
-- Total de dinero en tratamientos por mascota de una persona específica.;
Select persona.nombre AS Dueño, count(mascotas.nit) As CantidadTratamiento, sum(tratamiento.costo) AS Gasto from citas
join Mascotas on mascotas.id_mascota = citas.id_mascota 
join Persona on persona.nit = mascotas.nit
join Tratamiento on tratamiento.id_tratamiento = citas.id_tratamiento
where persona.nit = 024789
group by persona.nombre
order by Gasto Desc;