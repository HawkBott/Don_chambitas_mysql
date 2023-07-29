CREATE DATABASE don_chambitas;

use don_chambitas;

/*tablas  1to1*/

/* Creacion tabla roles*/
CREATE TABLE roles (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    name_rol VARCHAR(255)
);


/* Creacion tabla cuentas de registro*/
CREATE TABLE cuentas (
    id_cuenta INT AUTO_INCREMENT PRIMARY KEY,
    correo_electronico VARCHAR(255),
    my_password VARCHAR(255)
);


/* Creacion tabla countries*/
CREATE TABLE countries (
    id_country INT AUTO_INCREMENT PRIMARY KEY,
    name_country VARCHAR(255)
);


/* Creacion tabla profesiones*/
CREATE TABLE profesiones (
    id_profesion INT AUTO_INCREMENT PRIMARY KEY,
    name_profesion VARCHAR(255)
);


/* Creacion tabla oficios*/
CREATE TABLE oficios (
    id_oficio INT AUTO_INCREMENT PRIMARY KEY,
    name_oficio VARCHAR (255)
);

/*tablas  1toN*/

/* Creacion tabla addresses*/
CREATE TABLE addresses (
    id_address INT AUTO_INCREMENT PRIMARY KEY,
    calle VARCHAR (255),
    numero_exterior VARCHAR (255),
    numero_interior VARCHAR (255),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES countries (id_country)
);

/* Creacion tabla usuarios*/
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    apellido_paterno VARCHAR(255),
    apellido_materno VARCHAR(255),
    edad INT,
    rol_id INT,
    cuenta_id INT,
    address_id INT,
    FOREIGN KEY (rol_id) REFERENCES roles(id_rol),
    FOREIGN KEY (cuenta_id) REFERENCES cuentas(id_cuenta),
    FOREIGN KEY (address_id) REFERENCES direcciones(id_direccion)
);

/*Creacion de la table contactos*/
CREATE TABLE contacto (
  id_contacto INT AUTO_INCREMENT PRIMARY KEY,
  telefono VARCHAR(255),
  usuario_id INT,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id_usuario)
);

/* Creacion tabla trabajadores*/
CREATE TABLE trabajadores(
    id_trabajador INT AUTO_INCREMENT PRIMARY KEY,
    usuario__id INT,
    profesion_id INT,
    FOREIGN KEY (usuario__id) REFERENCES usuarios (id_usuario),
    FOREIGN KEY (profesion_id) REFERENCES profesiones (id_profesion)
);


/* Creacion tabla estado o provincia*/
CREATE TABLE estado_o_provincia (
    id_estado_o_provincia INT AUTO_INCREMENT PRIMARY KEY,
    name_estado_o_provincia VARCHAR (255),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES countries (id_country)
);

/* Creacion tabla codigo postal*/
CREATE TABLE codigo_postal (
    id_codigo_postal INT AUTO_INCREMENT PRIMARY KEY,
    codigo_postal INT,
    estado_o_provincia_id INT,
    FOREIGN KEY (estado_o_provincia_id) REFERENCES estado_o_provincia (id_estado_o_provincia)
);

/*tablas NtoM*/

/* Creacion tabla carrito cuando el cliente pide un trabajo*/
CREATE TABLE solicitar_servicio(
    id_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    clientes_id INT, 
    trabajador_id INT,
    FOREIGN KEY (trabajador_id) REFERENCES trabajadores (id_trabajador)
);