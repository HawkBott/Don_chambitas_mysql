/* tabla roles*/
INSERT INTO roles (name_rol) VALUES ('cliente'), ('trabajador');


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
('Enfermera'),
('Abogado'),
('Contador'),
('Ingeniero'),
('Profesor'),
('Periodista'),
('Artista'),
('Deportista'),
('Administrador');

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
INSERT INTO usuarios (nombre, apellido_paterno, apellido_materno, edad, rol_id, cuenta_id, address_id) VALUES
('Juan', 'Perez', 'Rodriguez', 30, 1, 1, 1),
('Maria', 'Gonzalez', 'Martinez', 25, 2, 2, 2),
('Pedro', 'Sanchez', 'Gomez', 40, 1, 3, 3),
('Ana', 'Lopez', 'Jimenez', 35, 2, 4, 4),
('Luis', 'Ramirez', 'Flores', 20, 1, 5, 5),
('Sofia', 'Gutierrez', 'Castro', 18, 2, 6, 6),
('Carlos', 'Martin', 'Diaz', 32, 1, 7, 7),
('Laura', 'Mendez', 'Ocampo', 27, 2, 8, 8),
('Jorge', 'Torres', 'Perez', 42, 1, 9, 9),
('Andrea', 'Ruiz', 'Gonzalez', 37, 2, 10, 10);

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
INSERT INTO codigo_postal (codigo_postal, estado_o_provincia_id) VALUES
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

INSERT INTO contacto (telefono, usuario_id) VALUES
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
