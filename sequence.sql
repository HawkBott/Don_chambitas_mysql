CREATE DATABASE don_chambitas;

use don_chambitas;

/*tablas  1to1*/

/* Creacion tabla cuentas de registro*/
CREATE TABLE cuentas (
    id_cuenta INT AUTO_INCREMENT PRIMARY KEY,
    correo_electronico VARCHAR (255),
    my_password VARCHAR (255)
);

/* Creacion tabla countries*/
CREATE TABLE countries (
    id_country INT AUTO_INCREMENT PRIMARY KEY,
    name_country VARCHAR (255)
);

/* Creacion tabla profesiones*/
CREATE TABLE profesiones (
    id_profesion INT AUTO_INCREMENT PRIMARY KEY,
    name_profesion VARCHAR (255)
);

/* Creacion de tabla datos educacion*/
CREATE TABLE datos_educacion (
    id_datos_educacion INT AUTO_INCREMENT PRIMARY KEY, 
    nombre_universidad VARCHAR(255),
    titulo_obtenido BLOB,
    year_graduation DATE,
    proyectos_destacados TEXT
);

/* Creacion de tabla residencia*/
CREATE TABLE tipo_residencia(
    id_tipo_residencia INT AUTO_INCREMENT PRIMARY KEY, 
    nombre_tipo_residencia VARCHAR (255)
);

/* Creacion de tabla tipo licencia*/
CREATE TABLE tipo_licencia(
    id_tipo_licencia INT AUTO_INCREMENT PRIMARY KEY, 
    nombre_tipo_licencia VARCHAR (255)
);

/* Creacion de tabla solicitar empleo*/
CREATE TABLE solicitar_empleo(
    id_solicitar_empleo INT AUTO_INCREMENT PRIMARY KEY, 
    fecha DATE,
    sueldo_deseado VARCHAR (255)
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
    nombre_usuario VARCHAR(255),
    apellido_paterno VARCHAR(255),
    apellido_materno VARCHAR(255),
    edad INT,
    imagen BLOB,
    rol ENUM ('cliente', 'trabajador', 'administrador') NOT NULL,
    cuenta_id INT,
    address_id INT,
    FOREIGN KEY (cuenta_id) REFERENCES cuentas(id_cuenta),
    FOREIGN KEY (address_id) REFERENCES addresses(id_address)
);

/*Creacion de la table contactos*/
CREATE TABLE contactos (
  id_contacto INT AUTO_INCREMENT PRIMARY KEY,
  telefono VARCHAR(255),
  usuario_id INT,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id_usuario)
);

/* Creacion tabla clientes*/
CREATE TABLE clientes(
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios (id_usuario)
);

/* Creacion de tabla licencias*/
CREATE TABLE licencias (
    id_licencia INT AUTO_INCREMENT PRIMARY KEY,
    numero_licencia VARCHAR (255),
    tipo_licencia_id INT,
    FOREIGN KEY (tipo_licencia_id) REFERENCES tipo_licencia (id_tipo_licencia)
);

/* Creacion de tabla documentacion del trabajador*/
CREATE TABLE documentacion_trabajador(
    id_documentacion_trabajador INT AUTO_INCREMENT PRIMARY KEY, 
    numero_curp VARCHAR (255),
    rfc VARCHAR (255),
    tiene_licencia BOOLEAN,
    tiene_antecedentes_penales BOOLEAN,
    antecedentes_penales BLOB,
    licencia_id INT,
    tipo_residencia_id INT,
    datos_educacion_id INT,
    FOREIGN KEY (licencia_id) REFERENCES licencias (id_licencia),
    FOREIGN KEY (tipo_residencia_id) REFERENCES tipo_residencia (id_tipo_residencia),
    FOREIGN KEY (datos_educacion_id) REFERENCES datos_educacion (id_datos_educacion)
);

/* Creacion tabla trabajadores*/
CREATE TABLE trabajadores(
    id_trabajador INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    profesion_id INT,
    solicitar_empleo_id INT,
    documentacion_trabajador_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios (id_usuario),
    FOREIGN KEY (profesion_id) REFERENCES profesiones (id_profesion),
    FOREIGN KEY (solicitar_empleo_id) REFERENCES solicitar_empleo (id_solicitar_empleo),
    FOREIGN KEY (documentacion_trabajador_id) REFERENCES documentacion_trabajador (id_documentacion_trabajador)
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
    numero_codigo_postal INT,
    estado_o_provincia_id INT,
    FOREIGN KEY (estado_o_provincia_id) REFERENCES estado_o_provincia (id_estado_o_provincia)
);

/* Creacion de tabla datos bancarios*/
CREATE TABLE datos_bancarios(
    id_datos_bancarios INT AUTO_INCREMENT PRIMARY KEY,
    numero_tarjeta VARCHAR (255),
    fecha_expiracion INT,
    codigo_seguridad INT,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios (id_usuario)
);

/* Creacion de tabla contacto*/
CREATE TABLE contacto(
    id_contacto INT AUTO_INCREMENT PRIMARY KEY,
    telefono VARCHAR (255),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios (id_usuario)
);


/*tablas  NtoM*/

/* Creacion de tabla solicitar servicio*/
CREATE TABLE solicitar_servicio(
    id_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    cliente_id INT,
    trabajador_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes (id_cliente),
    FOREIGN KEY (trabajador_id) REFERENCES trabajadores (id_trabajador)
);