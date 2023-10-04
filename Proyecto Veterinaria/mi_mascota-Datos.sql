use mi_mascota;
insert into Persona values
	-- (368549, 'Yareli Chen', 'San Juan Chamelco, A.V.', '58209431');
	(487596, 'Kleiry Chen', 'San Juan Chamelco, A.V.', '49947269'),
	(854679, 'Mario Alvarado', 'Coban A.V. ', '24865134'),
	(475813, 'Ernesto de la Cruz', 'San Cristobal A.V.', '58024675'),
	(587410, 'Sergio Estrada', 'San Cristobal A.V.', '23401598'),
	(024789, 'Reynaldo Meza', 'San Cristobal A.V.', '45789246'),
	(324567, 'Sergio Estrada', 'Carcha A.V', '23401598'),
	(010361, 'Marlon Alvarez', 'San Juan Chamelco A.V.', '23401598'),
	(789451, 'Brandon Pensamiento', 'Coban  A.V.', '23401598'),
	(124531, 'Estuardo Paz', 'Coban A.V.', '23401598');
    
insert into Tratamiento values
(1, 'Corte de uñas: Las uñas demasiado largas con probabilidad de romperse y también de enterrarse en la almohadilla plantar. Causa una dolorosa herida.', 100),
(2, 'Castración: Extirpar los testículos en el macho, y, normalmente, el útero, los ovarios y las trompas de Falopio en la hembra', 200),
(3, 'Desparacitación: Dosis de adulto',150),
(4, 'Desparacitación: Dosis de bebes/Cachorros',100),
(5, 'Ecografía: Se explora la región abdominal junto con las venas y los ganglios linfáticos, valora alteraciones del hígado, los riñones, páncreas, y el útero, entre otros órganos',300),
(6, 'Endoscopia: Inserción de un aparato con cámara llamado endoscopio en la zona a examinar y, eventualmente, a operar.',500),
(7, 'Peluquería: Cada animal y raza tiene sus propias necesidades respecto al cuidado del pelaje.',150),
(8, 'Extracción dental: Evita molestias, se saca sarro y se pule',200),
(9, 'Masaje: Consiste en trabajar con las manos las partes blandas, sobre todo la musculatura, pero también la piel y el tejido conjuntivo.',200),
(10, 'Tranquilizantes: Reacciona menos a los estímulos externos y a las manipulaciones que en condiciones normales serían causa de estrés',100);

insert into Mascotas values
(1, 'pelusa', '2015-02-03', '2016-09-28', 487596),
(2, 'nala', '2016-08-22', '2020-09-17', 854679),
(3, 'kitty', '2015-10-07', '2016-04-15', 475813),
(4, 'sugar', '2017-04-08', '2018-06-30', 024789),
(5, 'bambi', '2016-06-04', '2018-07-26', 324567),
(6, 'bellota', '2014-02-12', '2015-07-15', 789451),
(7, 'bobi', '2018-05-12', '2018-01-09', 854679),
(8, 'cliford', '2018-12-11', '2020-08-04', 010361),
(9, 'Jack', '2020-08-10', '2020-02-05', 010361),
(10, 'laika', '2019-03-01', '2019-04-12', 587410);

insert into Citas values
(1, '2023-09-10 08:30:00', 'descripcion',1, 1, 1),
(2, '2023-09-10 10:00:00', 'descripcion',1, 3, 10),
(3, '2023-09-10 15:30:00', 'descripcion',0, 4, 1),
(4, '2023-10-02 10:00:00', 'descripcion',1 ,8, 1),
(5, '2023-10-02 16:00:00', 'descripcion',0 ,10, 3),
(6, '2023-10-09 09:30:00', 'descripcion',1 ,3, 5),
(7, '2023-10-09 11:00:00', 'descripcion',1 ,2, 7),
(8, '2023-10-09 15:30:00', 'descripcion',1 ,5, 10),
(9, '2023-10-15 08:00:00', 'descripcion',0 ,6, 9),
(10, '2023-10-15 10:00:00', 'descripcion',1 ,7, 4),
(11, '2023-10-15 13:00:00', 'descripcion',1 ,10, 3),
(12, '2023-10-15 16:00:00', 'descripcion',1 ,9, 1),
(13, '2023-10-16 10:30:00', 'descripcion',0,4, 2),
(14, '2023-10-20 14:00:00', 'descripcion',1,3, 8),
(15, '2023-10-20 17:30:00', 'descripcion',0,4, 7);