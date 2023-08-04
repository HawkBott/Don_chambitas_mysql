/*tablas  1to1*/

/* tabla cuentas*/
INSERT INTO cuentas (correo_electronico, my_password) VALUES ('usuario1@ejemplo.com', 'contraseña1'),
('usuario2@ejemplo.com', 'contraseña2'),
('usuario3@ejemplo.com', 'contraseña3'),
('usuario4@ejemplo.com', 'contraseña4'),
('usuario5@ejemplo.com', 'contraseña5'),
('usuario6@ejemplo.com', 'contraseña6'),
('usuario7@ejemplo.com', 'contraseña7'),
('usuario8@ejemplo.com', 'contraseña8'),
('usuario9@ejemplo.com', 'contraseña9'),
('usuario10@ejemplo.com', 'contraseña10');

/* tabla countries*/
INSERT INTO countries (name_country) VALUES ('United States'),
('Mexico'),
('Canada'),
('Brazil'),
('China'),
('India'),
('Russia'),
('Germany'),
('United Kingdom'),
('France');

/* tabla profesiones*/
INSERT INTO profesiones (name_profesion) VALUES ('Doctor'),
('Abogado'),
('Contador'),
('Diseñador'),
('Programador'),
('Chef'),
('Electricista'),
('Terapeuta'),
('Coach Personal');

/* tabla datos educacion*/
INSERT INTO datos_educacion (nombre_universidad, titulo_obtenido, year_graduation, proyectos_destacados) VALUES
('Universidad Nacional', 'Ingeniería en Sistemas', '2022-05-15', 'Desarrollo de una plataforma de e-learning.'),
('Universidad Tecnológica', 'Licenciatura en Ciencias de la Computación', '2021-12-20', 'Creación de un sistema de reconocimiento facial.'),
('Instituto Politécnico', 'Arquitectura', '2023-06-28', 'Diseño de un edificio sostenible con energía renovable.'),
('Universidad Central', 'Medicina', '2022-07-10', 'Investigación sobre el tratamiento de enfermedades raras.'),
('Universidad del Futuro', 'Ciencias Ambientales', '2023-03-02', 'Estudio de la biodiversidad en una reserva natural.'),
('Instituto Tecnológico Avanzado', 'Ingeniería Electrónica', '2021-09-18', 'Diseño y construcción de un robot autónomo.'),
('Universidad de las Artes Creativas', 'Diseño Gráfico', '2020-12-05', 'Realización de una campaña publicitaria para una marca reconocida.'),
('Universidad de Ciencias Empresariales', 'Administración de Empresas', '2023-01-30', 'Análisis financiero de una empresa multinacional.'),
('Instituto de Ciencias Sociales', 'Psicología', '2022-11-14', 'Estudio sobre el comportamiento humano en situaciones de estrés.'),
('Universidad Internacional de Idiomas', 'Traducción e Interpretación', '2021-08-22', 'Traducción de un libro clásico a varios idiomas.');

/* tabla tipo de licencia */
INSERT INTO tipo_licencia (nombre_tipo_licencia) VALUES
('Tipo A'),
('Tipo B'),
('Tipo C'),
('Tipo E'),
('No aplica');

/*tablas  1toN*/

/* tabla adresses*/
INSERT INTO addresses (calle, numero_exterior, numero_interior, country_id) VALUES
('Calle 123', '100', 'A', 1),
('Avenida Principal', '200', 'B', 2),
('Camino Real', '300', 'C', 3),
('Rua da Liberdade', '400', 'D', 4),
('Nanjing Road', '500', 'E', 5),
('Mumbai Street', '600', 'F', 6),
('Red Square', '700', 'G', 7),
('Brandenburg Gate', '800', 'H', 8),
('Big Ben', '900', 'I', 9),
('Eiffel Tower', '1000', 'J', 10);

/* tabla usuarios*/
INSERT INTO usuarios (nombre_usuario, apellido_paterno, apellido_materno, edad, imagen, rol, cuenta_id, address_id) VALUES
('Juan', 'Gómez', 'Pérez', 30, NULL, 'cliente', 1, 1),
('María', 'López', 'García', 25, NULL, 'trabajador', 2, 2),
('Pedro', 'Ramírez', 'Martínez', 35, NULL, 'administrador', 3, 3),
('Ana', 'Torres', 'Hernández', 28, NULL, 'cliente', 4, 4),
('Luis', 'González', 'Sánchez', 22, NULL, 'trabajador', 5, 5),
('Laura', 'Díaz', 'Vargas', 29, NULL, 'administrador', 6, 6),
('Carlos', 'Reyes', 'Mendoza', 32, NULL, 'cliente', 7, 7),
('Marta', 'Castillo', 'Rojas', 27, NULL, 'trabajador', 8, 8),
('Eduardo', 'Navarro', 'Silva', 31, NULL, 'administrador', 9, 9),
('Sofía', 'Morales', 'Luna', 26, NULL, 'cliente', 10, 10);

/* tabla clientes*/
INSERT INTO clientes (usuario_id) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);


/* tabla documtacion_trabajador*/
INSERT INTO documentacion_trabajador (numero_curp, rfc, tiene_licencia, numero_licencia, tiene_antecedentes_penales, doc_antecedentes_penales, tipo_licencia_id, datos_educacion_id) VALUES
('ABC123456XYZ', 'RFC123456789', 1, 'LIC1234', 0, NULL, 1, 1),
('DEF987654ZYX', 'RFC987654321', 0, NULL, 1, 'Información sobre antecedentes penales', 2, 2),
('GHI456789ABC', 'RFC456789123', 1, 'LIC5678', 0, NULL, 3, 3),
('JKL654321DEF', 'RFC654321987', 0, NULL, 1, 'Información sobre antecedentes penales', 1, 4),
('MNO789012GHI', 'RFC789012345', 1, 'LIC9012', 0, NULL, 2, 5),
('PQR210987JKL', 'RFC210987654', 0, NULL, 0, NULL, 3, 6),
('STU543210MNO', 'RFC543210987', 1, 'LIC3456', 1, 'Información sobre antecedentes penales', 2, 7),
('VWX987654PQR', 'RFC987654210', 0, NULL, 0, NULL, 1, 8),
('YZA012345STU', 'RFC012345678', 1, 'LIC7890', 0, NULL, 1, 9),
('BCD678901VWX', 'RFC678901234', 0, NULL, 1, 'Información sobre antecedentes penales', 3, 10);



/* tabla trabajadores*/
INSERT INTO trabajadores (usuario_id, profesion_id, documentacion_trabajador_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 4),
(5, 2, 5),
(6, 3, 6),
(7, 1, 7),
(8, 2, 8),
(9, 3, 9),
(10, 1, 10);

/*Tabla solicitar empleo*/
INSERT INTO solicitar_empleo (fecha, sueldo_deseado, trabajador_id) VALUES
('2023-08-01', '45000', 1),
('2023-07-28', '55000', 2),
('2023-07-25', '60000', 3),
('2023-07-20', '50000', 4),
('2023-07-18', '48000', 5),
('2023-07-15', '52000', 6),
('2023-07-10', '58000', 7),
('2023-07-05', '54000', 8),
('2023-07-02', '52000', 9),
('2023-06-28', '49000', 10);


/* tabla estado o provincia*/
INSERT INTO estado_o_provincia (name_estado_o_provincia, country_id) VALUES
('California', 1),
('Texas', 1),
('Florida', 1),
('Mexico', 2),
('Veracruz', 2),
('Jalisco', 2),
('Ontario', 3),
('Quebec', 3),
('British Columbia', 3),
('China', 4);

/* tabla codigo posta*/
INSERT INTO codigo_postal (numero_codigo_postal, estado_o_provincia_id) VALUES
(91234, 1),
(78765, 1),
(33069, 1),
(91789, 2),
(91876, 2),
(91965, 2),
(91054, 3),
(91143, 3),
(91232, 3),
(91321, 4);

/* tabla datos_bancarios */
INSERT INTO datos_bancarios (numero_tarjeta, fecha_expiracion, codigo_seguridad, usuario_id) VALUES
('1234-5678-9012-3456', 1225, 123, 1),
('9876-5432-1098-7654', 0724, 789, 2),
('5678-9012-3456-7890', 1123, 456, 3),
('4321-0987-6543-2109', 0626, 234, 4),
('7890-1234-5678-9012', 0925, 678, 5),
('3456-7890-1234-5678', 0327, 345, 6),
('4567-8901-2345-6789', 1024, 890, 7),
('7890-1234-5678-9012', 0823, 567, 8),
('2345-6789-0123-4567', 0429, 123, 9),
('8901-2345-6789-0123', 0628, 901, 10);

/* tabla contactos */
INSERT INTO contactos (telefono, usuario_id) VALUES
('123-456-7890', 1),
('555-678-9012', 2),
('987-654-3210', 3),
('345-678-9012', 4),
('789-012-3456', 5),
('234-567-8901', 6),
('876-543-2109', 7),
('012-345-6789', 8),
('901-234-5678', 9),
('109-876-5432', 10);

/*tablas  NtoM*/

/* tabla solicitar servicio */
INSERT INTO solicitar_servicio (fecha, cliente_id, trabajador_id) VALUES
('2023-08-01', 1, 1),
('2023-07-28', 2, 2),
('2023-07-25', 3, 3),
('2023-07-20', 4, 4),
('2023-07-18', 5, 5),
('2023-07-15', 6, 6),
('2023-07-10', 7, 7),
('2023-07-05', 8, 8),
('2023-07-02', 9, 9),
('2023-06-28', 10, 10);



