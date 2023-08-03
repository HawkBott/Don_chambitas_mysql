

/* Creacion tabla usuarios*/
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(255),
    apellido_paterno VARCHAR(255),
    apellido_materno VARCHAR(255),
    edad INT,
    foto BLOB,
    rol ENUM ('cliente', 'trabajador', 'administrador') NOT NULL
    cuenta_id INT,
    address_id INT,
    FOREIGN KEY (cuenta_id) REFERENCES cuentas(id_cuenta),
    FOREIGN KEY (address_id) REFERENCES direcciones(id_direccion)
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


/* Creacion tabla trabajadores*/
CREATE TABLE trabajadores(
    id_trabajador INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    profesion_id INT,
    datos_educacion_id INT,
    documentacion_trabajador_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios (id_usuario),
    FOREIGN KEY (profesion_id) REFERENCES profesiones (id_profesion),
    FOREIGN KEY (datos_educacion_id) REFERENCES datos_educacion (id_datos_educacion),
    FOREIGN KEY (documentacion_trabajador_id) REFERENCES documentacion_trabajador (id_documento)
);

/* Creacion tabla addresses*/
CREATE TABLE addresses (
    id_address INT AUTO_INCREMENT PRIMARY KEY,
    calle VARCHAR (255),
    numero_exterior VARCHAR (255),
    numero_interior VARCHAR (255),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES countries (id_country)
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
    estado_o_provincia_id INT
    FOREIGN KEY (estado_o_provincia_id) REFERENCES estado_o_provincia (id_estado_o_provincia)
);

/* Creacion de tabla datos bancarios*/
CREATE TABLE datos_bancarios(
    id_datos_bancarios INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    numero_tarjeta INT,
    fecha_expiracion INT,
    codigo_seguridad INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios (id_usuario)
);


/* Creacion de tabla contacto*/
CREATE TABLE contacto(
    id_contacto INT AUTO_INCREMENT PRIMARY KEY,
    telefono VARCHAR (255),
    usuario_id
    FOREIGN KEY (usuario_id) REFERENCES usuarios (id_usuario)
);


/* Creacion de tabla documentacion del trabajador*/
CREATE TABLE documentacion_trabajador(
    id_documento INT AUTO_INCREMENT PRIMARY KEY, 
    numero_curp VARCHAR (255),
    numero_cartilla_militar VARCHAR (255),
    numero_pasaporte VARCHAR (255),
    tipo_residencia_id INT,
    doc_extranjero BLOB,
    licencia_manejo BOOLEAN,
    tipo_licencia_id INT,
    numero_licencia VARCHAR (255),
    FOREIGN KEY (tipo_residencia_id) REFERENCES tipo_residencia (id_tipo_residencia),
    FOREIGN KEY (tipo_licencia_id) REFERENCES tipo_licencia (id_tipo_licencia)
);