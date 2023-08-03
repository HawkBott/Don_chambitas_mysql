/* tabla roles*/
-- INSERT INTO roles (name_rol) VALUES ('cliente'), 
-- ('trabajador'),;


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

/* tabla countries*/
INSERT INTO profesiones (name_profesion) VALUES ('Doctor'),
('Abogado'),
('Contador'),
('Diseñador'),
('Programador'),
('Chef'),
('Electricista'),
('Terapeuta'),
('Coach Personal');


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
('John', 'Doe', 'Smith', 30, 'Foto1', 'cliente', 1, 1),
('Jane', 'Smith', 'Doe', 28, 'Foto2', 'cliente', 2, 2),
('Michael', 'Johnson', 'Williams', 35, 'Foto3', 'trabajador', 3, 3),
('Emily', 'Miller', 'Brown', 25, 'Foto4', 'trabajador', 4, 4),
('Robert', 'Jones', 'Wilson', 40, 'Foto5', 'administrador', 5, 5),
('Sophia', 'Garcia', 'Martinez', 22, 'Foto6', 'administrador', 6, 6),
('William', 'Martinez', 'Gonzalez', 32, 'Foto7', 'cliente', 7, 7),
('Olivia', 'Lopez', 'Hernandez', 27, 'Foto8', 'trabajador', 8, 8),
('James', 'Davis', 'Lee', 29, 'Foto9', 'cliente', 9, 9),
('Emma', 'Hernandez', 'Clark', 31, 'Foto10', 'trabajador', 10, 10);


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
INSERT INTO datos_bancarios (usuario_id, numero_tarjeta, fecha_expiracion, codigo_seguridad) VALUES
(1, 1234567890123456, 1225, 123),
(2, 9876543210987654, 0324, 456),
(3, 4567890123456789, 0726, 789),
(4, 7890123456789012, 0923, 234),
(5, 2345678901234567, 0527, 567),
(6, 8901234567890123, 0125, 890),
(7, 3456789012345678, 0624, 123),
(8, 9012345678901234, 1023, 456),
(9, 5678901234567890, 0327, 789),
(10, 2345678901234567, 0824, 234);

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


/* tabla tipo de residencia */
INSERT INTO tipo_residencia (nombre_tipo_residencia) VALUES
('Soy Extranjero'),
('Soy Mexicano');


/* tabla tipo de licencia */
INSERT INTO tipo_licencia (nombre_tipo_licencia) VALUES
('Tipo A'),
('Tipo B'),
('No aplica');

/* tabla documentacion del trabajador*/
INSERT INTO documentacion_trabajador (numero_curp, numero_cartilla_militar, numero_pasaporte, tipo_residencia_id, doc_extranjero, licencia_manejo, tipo_licencia_id, numero_licencia) VALUES
("AAA010101010","1234567890","1234567890",1,NULL,NULL,1,"1234567890"),
("BBB010101010","9876543210","9876543210",2,NULL,NULL,2,NULL),
("CCC010101010","7654321098","7654321098",1,NULL,NULL,3,"9876543210"),
("DDD010101010","6543210987","6543210987",2,NULL,NULL,1,NULL),
("EEE010101010","5432109876","5432109876",1,NULL,NULL,2,"1234567890"),
("FFF010101010","4321098765","4321098765",2,NULL,NULL,3,NULL),
("GGG010101010","3210987654","3210987654",1,NULL,NULL,1,"1234567890"),
("HHH010101010","2109876543","2109876543",2,NULL,NULL,2,NULL),
("III010101010","1098765432","1098765432",1,NULL,NULL,3,"1234567890"),
("JJJ010101010","0987654321","0987654321",2,NULL,NULL,1,NULL);

/* tabla datos eduacion */
INSERT INTO datos_educacion (nombre_universidad, titulo_obtenido, year_graduation, proyectos_destacados) VALUES
("Universidad A", "Licenciatura en Ingeniería Informática", '2022-06-30', "Desarrollo de un sistema de gestión de inventario"),
("Universidad B", "Licenciatura en Administración de Empresas", '2021-07-15', "Implementación de estrategias de marketing digital"),
("Universidad C", "Ingeniería en Telecomunicaciones", '2023-05-20', "Diseño de una red de comunicaciones para áreas rurales"),
("Universidad D", "Licenciatura en Psicología", '2020-12-28', "Investigación sobre el impacto de la música en el estado de ánimo"),
("Universidad E", "Licenciatura en Diseño Gráfico", '2024-04-02', "Creación de una identidad visual para una marca reconocida"),
("Universidad F", "Ingeniería Civil", '2019-11-10', "Construcción de un puente peatonal sostenible"),
("Universidad G", "Licenciatura en Biología", '2022-09-18', "Estudio de la diversidad de especies en un ecosistema natural"),
("Universidad H", "Licenciatura en Medicina", '2023-03-25', "Investigación sobre nuevas terapias para enfermedades raras"),
("Universidad I", "Ingeniería Eléctrica", '2021-08-05', "Diseño de un sistema de generación de energía renovable"),
("Universidad J", "Licenciatura en Comunicación Social", '2020-10-12', "Producción de un documental sobre la historia local");


/* tabla trabajadores */
INSERT INTO trabajadores (usuario_id, profesion_id, datos_educacion_id, documentacion_trabajador_id) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 1, 10, 10);




