
/* Falta por definir el tipo de dato del telefono*/

/* Creacion tabla usuarios*/
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    apellido_paterno VARCHAR(255),
    apellido_materno VARCHAR(255),
    edad INT,
    telefono VARCHAR(255),
    rol_id INT,
    cuenta_id INT,
    address_id INT,
    FOREIGN KEY (rol_id) REFERENCES roles(id_rol),
    FOREIGN KEY (cuenta_id) REFERENCES cuentas(id_cuenta),
    FOREIGN KEY (address_id) REFERENCES direcciones(id_direccion)
);

/* Creacion tabla clientes*/
CREATE TABLE clientes(
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    rol_id INT,
    FOREIGN KEY (rol_id) REFERENCES roles (id_rol)
)

/* Creacion tabla servicios*/
CREATE TABLE servicios (
    id_servicio INT AUTO_INCREMENT PRIMARY KEY,
    oficio_id INT,
    profesion_id INT,
    FOREIGN KEY (oficio_id) REFERENCES oficios(id_oficio),
    FOREIGN KEY (profesion_id) REFERENCES profesiones (id_profesion)
);

/* Creacion tabla trabajadores*/
CREATE TABLE trabajadores(
    id_trabajador INT AUTO_INCREMENT PRIMARY KEY,
    rol_id INT,
    servicio_id INT,
    FOREIGN KEY (rol_id) REFERENCES roles (id_rol),
    FOREIGN KEY (servicio_id) REFERENCES servicios (id_servicio)
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
    codigo_postal INT,
    estado_o_provincia_id INT
    FOREIGN KEY (estado_o_provincia_id) REFERENCES estado_o_provincia (id_estado_o_provincia)
);
